import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "bear" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace bear - replace EnglishEntrybear

// replace speakBear - /beə(r)/

enum TtsState { playing }

class EnglishEntrybear extends StatelessWidget {
// blank divider
  EnglishEntrybear({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBear(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bear"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears1(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A little bear cub ran right across the road in front of us."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears2(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The pain was almost more than he could bear.The pain was almost more than he could bear."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears3(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She bore it all with her usual patience."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears4(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She bore the responsibility for most of the changes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears5(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In the end it's consumers who bear the burden of higher prices."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears6(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The ice is too thin to bear your weight."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears7(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The document bore her signature."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears8(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was badly wounded in the war and still bears the scars."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears9(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She bears little resemblance to her mother."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears10(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her later work does not bear comparison with her earlier novels."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears11(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The plan won't bear close inspection."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears12(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The joke doesn't bear repeating."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears13(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He bears no resentment towards them."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears14(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He's borne a grudge against me ever since that day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears15(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The stone plaque bearing his name was smashed to pieces."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears16(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He returned bearing a basket of vegetables."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears17(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her two sons helped bear the coffin."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears18(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He bears himself proudly, like a soldier."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears19(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She had borne him six sons."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears20(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These trees take a long time to bear fruit."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears21(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When you get to the fork in the road, bear right."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears22(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBears2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears23(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBears2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears24(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBears2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears25(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBears2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears26(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBears2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears27(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBears2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears28(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBears2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears29(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBears2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBears30(String languageCode) async {
    // DOPSUM: CHANGE speakBear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBears3030"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 19, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "bear"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /beə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakBear("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ber/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakBear("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 19
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
١. (ناو) ورچ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A little bear cub ran right across the road in front of us."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەچکە ورچێکی بچکۆلە بە ڕێگاکەدا پەڕییەوە بە ڕاکردن لە پێشمان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) داننان و مامەڵەکردن بە شتێکی ناخۆش کە ڕوویداوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The pain was almost more than he could bear.The pain was almost more than he could bear."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئازارەکە تاڕادەیەکی زۆر زیاتر لەوە بوو کە دەیتوانی بەرگەی بگرێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She bore it all with her usual patience."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەرگەی ھەمووی گرت بە پشوودرێژی ھەمیشەییەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) ھەڵگرتنی بەرپرسیاریەتی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She bore the responsibility for most of the changes."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەرپرسیاریەتی بۆ زۆرینەی گۆڕانکارییەکان ھەڵگرت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "In the end it's consumers who bear the burden of higher prices."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لەکۆتاییدا ئەوە کڕیارانن بارگرانی بەرزبوونەوەی نرخ ھەڵدەگرن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) ھەڵگرتنی کێشی کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The ice is too thin to bear your weight."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سەھۆڵەکە زۆر باریکە کە بتوانێت کە بتوانێت بەرگەت بگرێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) پیشاندان یان لەخۆگرتنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The document bore her signature."),
                              const ExampleSentenceKurdish(
                                  text: "دۆکیومێنتەکە واژۆی ئەوی پێوەبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He was badly wounded in the war and still bears the scars."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە جەنگەکەدا بەخراپی برینداربوو و ھێشتا برینەکانی پێوەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She bears little resemblance to her mother."),
                              const ExampleSentenceKurdish(
                                  text: "زۆر کەم لە دایکی دەکات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) نەگونجاو بۆشتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Her later work does not bear comparison with her earlier novels (= because it is not nearly as good)."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەرھەمی دواتری بەراورد ناکرێت بە ڕۆمانەکانی پێشووتری."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The plan won't bear close inspection (= it will be found to be unacceptable when carefully examined)."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پلانەکە ناتوانێت بە پشکنینی ورددا دەربچێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The joke doesn't bear repeating (= because it is not funny or may offend people)."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نوکتەکە بە کەڵکی دووبارەکردنەوە نایەت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) ھەبوونی ھەستێکی نەرێنی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He bears no resentment towards them."),
                              const ExampleSentenceKurdish(
                                  text: "ھیچ ڕقێکی بەرامبەریان نییە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He's borne a grudge against me ever since that day."),
                              const ExampleSentenceKurdish(
                                  text: "لەو ڕۆژەوە بوغزێکی دژم ھەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) ھەبوونی ناوێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The stone plaque bearing his name was smashed to pieces."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەو پارچەیەی کە ناوی ھەڵگرتبوو وردوخاش کرا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (کردار) ھەڵگرتنی کەسێک یان شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He returned bearing a basket of vegetables."),
                              const ExampleSentenceKurdish(
                                  text: "گەڕایەوە بە سەبەتەیەک سەوزەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Her two sons helped bear the coffin."),
                              const ExampleSentenceKurdish(
                                  text: "دوو کوڕەکەی تابووتەکەیان ھەڵگرتبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) مامەڵە و ڕەفتارکردن بەشێوەیەکی دیاریکراو"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He bears himself (= stands, walks, etc.) proudly, like a soldier."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بە شانازییەوە ڕەفتار دەکات، وەک سەربازێک."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) منداڵبوون"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She had borne him six sons."),
                              const ExampleSentenceKurdish(
                                  text: "شەش کوڕی پێبەخشیوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) درووستکردنی گوڵ و میوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "These trees take a long time to bear fruit."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەم دارانە کاتێکی زۆریان پێدەچێت تا بەر بگرن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (کردار) ڕۆشتن یان لادان بە ئاراستەیەکدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "When you get to the fork in the road, bear right."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کە دەگەیت بە دووڕیانەکە لە ڕێگاکەدا، بە ڕاستدا بچۆ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBears21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBears21("en-US"),
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
                    YoutubeEmbeddeddfourteen(),
                    YoutubeEmbeddedfifteen(),
                    YoutubeEmbeddeddsixteen(),
                    YoutubeEmbeddeddseventeen(),
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
- Verb: bear (derived forms: bearing, borne, bore, bears)
1. Have as a feature; convey
"bear a resemblance"; "bear a signature"
 
2. Cause to be born (= give birth, deliver, birth, have)
"My wife bore twins yesterday!";
 
3. Put up with something or somebody unpleasant (= digest, endure, stick out, stomach, stand, tolerate, support, brook, abide, suffer, put up)
"I cannot bear his constant criticism";

4. Move while holding up or supporting
"Bear gifts"; "bear a heavy load"; "bear news"; "bearing orders"
 
5. Bring forth (= turn out)
"The apple tree bore delicious apples this year"; "The unidentified plant bore gorgeous flowers";
 
6. Maintain (a theory, thoughts, or feelings) (= harbor [N. Amer], harbour [Brit, Cdn], hold, entertain, nurse)
"bear a grudge";
 
7. Take on as one's own the expenses or debts of another person (= take over, accept, assume)
"She agreed to bear the responsibility";

8. Have within (= hold, carry, contain)
"The canteen bears fresh water";
 
9. (investment) bring in (= yield, pay)
"interest-bearing accounts";
 
10. Have on one's person (= wear)
"bear a scar";
 
11. Behave in a certain manner (= behave, acquit, deport, conduct, comport, carry)
"he bore himself with dignity";
 
12. Have rightfully; of rights, titles, and offices (= hold)
"She bears the title of Duchess";
 
13. Support or hold in a certain manner (= hold, carry)
"She bears her head high";

14. Be pregnant with (= have a bun in the oven, carry, gestate, expect)
"She is bearing his child";
 
15. Move, proceed or be located in a specified direction
"bear left at the next junction"

- Noun: bear (derived forms: bearing, borne, bore, bears)
1. Large mammal with long shaggy coat and strong claws
"The black bear is the most common bear species in North America, but they are less likely to attack humans than grizzly bears"
 
2. An investor with a pessimistic market outlook; an investor who expects prices to fall and so sells now in order to buy later at a lower price
 
3. A large hairy or rough man
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
  YoutubeEmbeddedone({super.key});

  static String myVideoId = "dGkbkEol9fs";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 811, // DOPSUM: CHANGE IT
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

  static String myVideoId = "yij2FpHYdwE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 710, // DOPSUM: CHANGE IT
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

  static String myVideoId = "0lq1JIWQSlc";

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

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  static String myVideoId = "yYjSYafjAjU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 107, // DOPSUM: CHANGE IT
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

  static String myVideoId = "MJDmjFPFFJc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 3308, // DOPSUM: CHANGE IT
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

  static String myVideoId = "yCdR82Odndw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 343, // DOPSUM: CHANGE IT
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

  static String myVideoId = "J3euEMWC8tg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 217, // DOPSUM: CHANGE IT
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

  static String myVideoId = "zj4zvXpQW1Y";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 217, // DOPSUM: CHANGE IT
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

  static String myVideoId = "Vv_wzaXDbUc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 786, // DOPSUM: CHANGE IT
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

  static String myVideoId = "G3v31UpO17g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 2602, // DOPSUM: CHANGE IT
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

  static String myVideoId = "ISmyk5d1gkg";

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  static String myVideoId = "WUjVPIEtJd0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 139, // DOPSUM: CHANGE IT
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

  static String myVideoId = "PZYcoWhEZxM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 702, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  YoutubeEmbeddeddfourteen({super.key});

  static String myVideoId = "oj6C9MJ89ho";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1719, // DOPSUM: CHANGE IT
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

  static String myVideoId = "JpbWqiUy0YM";

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

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  YoutubeEmbeddeddsixteen({super.key});

  static String myVideoId = "idDSfBVuKRc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 620, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  YoutubeEmbeddeddseventeen({super.key});

  static String myVideoId = "KNStujHAjQA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 728, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddeighteen extends StatelessWidget {
  YoutubeEmbeddeddeighteen({super.key});

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

class YoutubeEmbeddeddnineteen extends StatelessWidget {
  YoutubeEmbeddeddnineteen({super.key});

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

// end bear// TODO Implement this library.
