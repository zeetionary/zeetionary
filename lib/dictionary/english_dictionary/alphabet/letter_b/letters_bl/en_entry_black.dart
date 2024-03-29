import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "black" and provide five simple and short example sentences for each meaning. Use Merriam Webster style. Provide at least 5 meanings or more.

// replace black - /blæk/

enum TtsState { playing }

class EnglishEntryblack extends StatelessWidget {
// blank divider
  EnglishEntryblack({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakblack(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("black"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks1(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She had curly black hair and blue eyes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks2(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I wanted a simple black dress, nothing fancy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks3(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The zebra is a wild African horse with black and white stripes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks4(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My head banged on a rock and everything went black."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks5(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Through the black night came the sound of thunder."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks6(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He's seen as a role model for young Black men."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks7(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There's a large Black community living in this area."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks8(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Two black coffees, please."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks9(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Go and wash your hands; they're absolutely black!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks10(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's been in a really black mood all day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks11(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The future looks pretty black."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks12(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Everyone at the funeral was dressed in black."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks13(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She often dresses in black."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks14(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The museum exhibit featured portraits of influential blacks who shaped history."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks15(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The countries have blacked all imports from Russia."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks16(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The artist decided to black out the background to emphasize the central figure."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks17(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblacks1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks18(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblacks1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks19(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblacks1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks20(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblacks2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks21(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblacks2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks22(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblacks2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks23(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblacks2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks24(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblacks2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks25(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblacks2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks26(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblacks2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks27(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblacks2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks28(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblacks2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks29(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblacks2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblacks30(String languageCode) async {
    // DOPSUM: CHANGE speakblack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblacks3030"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "black"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /blæk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakblack("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /blæk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakblack("en-US"),
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
کوردی: ڕەش، تەواو ڕەش، ڕەشی ڕەش، تاریک، ئەنگوستەچاو، بێ‌ڕووناکی، (سەربە) ڕەش‌پێستەکان، بێ‌شیر (قاوە و چایی)، پیس، چڵکن، گڵاو، چەپەڵ، ڕق‌ھەستاو، تووڕە، ھیوابڕ، ناھومێدکەر، خراپ، ڕەش، بەد، دڵپڕ، کز، خەمبار، بەزیان، بەوەی، بەزەڕ، ڕەشی، سیان، قورم، ڕەنگی ڕەش، ڕەش‌پێست، چەرم‌ڕەش، بەرگی ڕەش، بەرگ یان جلی ماتەم
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) ڕەنگی ڕەش."),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She had curly black hair and blue eyes."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "قژی ڕەشی لوول و چاوی شینی ھەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I wanted a simple black dress, nothing fancy."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەنھا جلێکی ڕەشی سادەم دەویست، شتێکی دڵبەر نا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The zebra is a wild African horse with black and white stripes."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەرەکێوی ئەسپێکی کێویی ئەفریقییە بە خەتی ڕەش و سپییەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ھاوەڵناو) تەواو تاریک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "My head banged on a rock and everything went black."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەرم دای بە بەردێکدا و ھەموو شتێک تاریک بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Through the black night came the sound of thunder."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەدرێژایی شەوە تاریکەکە دەنگی ھەورەگرمە دەھات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) پەیوەندیدار بە کەسانی ڕەشپێست، زیاتر ئەوانەی بە ڕەچەڵەک ئەفریقین"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He's seen as a role model for young Black men."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وەک نموونەیەک سەیر دەکرێت بۆ پیاوانی ڕەشپێستی گەنج."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "There's a large Black community living in this area."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆمەڵگەیەکی گەورەی کەسانی ڕەشپێست ھەیە لەم ناوچە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ھاوەڵناو) چا و قاوەی بێ شیر"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Two black coffees, please."),
                                    ExampleSentenceKurdish(
                                        text: "دوو قاوەی بێ شیر بێ زەحمەت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ھاوەڵناو) زۆر پیس"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Go and wash your hands; they're absolutely black!"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بچۆ و دەستت بشۆرە، تەواو گەنیاون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ھاوەڵناو) پڕ لە ڕق و تووڕەیی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She's been in a really black mood all day."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەواوی ڕۆژەکە لە کەشێکی تووڕەیی بووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ھاوەڵناو) زۆر بێزار و نائومێدکەر"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "The future looks pretty black."),
                                    ExampleSentenceKurdish(
                                        text: "داھاتوو زۆر بێ ھیوابڕ دیارە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٨. (ناو) ڕەنگی ڕەش."),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Everyone at the funeral was dressed in black."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەموو ئەوانەی لە مەراسیمی ناشتنەکە بوون جلی ڕەشیان پۆشیبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She often dresses in black (= in black clothes)."),
                                    ExampleSentenceKurdish(
                                        text: "زۆرجار ڕەنگی ڕەش دەپۆشێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ناو) کەسانی ڕەشپێست (بەکارھێنانی وشەکە بەم واتایە وەک ناو باش نییە. باشترە وەک ھاوەڵناو بەکاربێت)"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The museum exhibit featured portraits of influential blacks who shaped history."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێشانگای مۆزەخانەکە ژمارەیەک وێنەی کەسانی کاریگەری ڕەشپێست نمایش دەکات کە کاریگەرییان لەسەر مێژوو ھەبووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) رەتکردنەوەی مامەڵە لەگەڵ کەسێک وەک ناڕەزایی سیاسی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The countries have blacked all imports from Russia."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وڵاتەکان ھەموو ھاوردەیەکیان لە ڕووسیاوە ڕاگرتووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١١. (کردار) ڕەشکردنی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The artist decided to black out the background to emphasize the central figure."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھونەرمەندەکە بڕیاری دا پشتەوە ڕەش بکاتەوە بۆ ئەوەی سەرنج بخاتە سەر ئەو کەسەی لە ناوەڕاست بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblacks16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblacks16("en-US"),
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
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        YoutubeEmbeddedthirteen(),
                        YoutubeEmbeddeddfourteen(),
                        YoutubeEmbeddedfifteen(),
                        YoutubeEmbeddeddsixteen(),
                        YoutubeEmbeddeddseventeen(),
                        YoutubeEmbeddeddeighteen(),
                        YoutubeEmbeddeddnineteen(),
                        YoutubeEmbeddedtwenty(),
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
- Adjective: black (derived forms: blackest, blacker)
1. Being of the achromatic colour of maximum darkness; having little or no hue owing to absorption of almost all incident light
"black leather jackets"; "as black as coal"; "rich black soil"
 
2. Of or belonging to a racial group especially of sub-Saharan African origin
"a great people--a black people--...injected new meaning and dignity into the veins of civilization"
 
3. Marked by anger, resentment or hostility
"black looks"; "black words"
 
4. Offering little or no hope (= bleak, dim)
"the future looked black";
 
5. Stemming from evil characteristics or forces; wicked or dishonourable (= dark, sinister)
"black deeds"; "a black lie"; "his black heart has concocted yet another black deed";
 
6. (of events) having extremely unfortunate or dire consequences; bringing ruin (= calamitous, disastrous, fatal, fateful)
"the stock market crashed on Black Friday";

7. (of the face) made black especially as with suffused blood (= blackened)
"a face black with fury";

8. Extremely dark (= pitch-black, pitch-dark)
"a black moonless night"; "through the pitch-black woods";
 
9. Harshly ironic or sinister (= grim, mordant)
"black humour";

10. (of intelligence operations) deliberately misleading
"black propaganda"
 
11. Distributed or sold illicitly (= bootleg, black-market, contraband, smuggled)
"the black economy pays no taxes";

12. (used of conduct or character) deserving or bringing disgrace or shame (= disgraceful, ignominious, inglorious, opprobrious, shameful)
"Man...has written one of his blackest records as a destroyer on the oceanic islands";
 
13. (of coffee) without cream or sugar
 
14. Soiled with dirt or soot (= smutty)
"his shirt was black within an hour"; "with feet black from playing outdoors";

- Noun: black (derived forms: blacks)
1. The quality or state of the achromatic colour of least lightness (bearing the least resemblance to white) (= blackness, inkiness)
 
2. Total absence of light (= total darkness, lightlessness, blackness, pitch blackness)
"in the black of night";

3. (board games) the darker pieces
 
4. Black clothing (worn as a sign of mourning)
"the widow wore black"

- Verb: black (derived forms: blacked, blacks, blacking)
1. Make or become black (= blacken, melanize, melanise [Brit], nigrify [archaic])

- Noun: Black (derived forms: Blacks)
1. Popular child actress of the 1930's (1928-2014) (= Shirley Temple Black, Shirley Temple)
 
2. A person with African ancestry (= African-American, Negro, African American, Afro-American)
 
3. British chemist who identified carbon dioxide and who formulated the concepts of specific heat and latent heat (1728-1799) (= Joseph Black)
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
    videoId: 'rPe4yziWiOg',
    startSeconds: 324,
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
    videoId: 'VrKW58MS12g',
    startSeconds: 476,
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
    videoId: 'hS2x1zl4rn0',
    startSeconds: 886,
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
    videoId: 'P8m-KThvtxA',
    startSeconds: 186,
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
    videoId: 'PXsZntwnArQ',
    startSeconds: 73,
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
    videoId: 'uN84HhcdIws',
    startSeconds: 44,
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
    videoId: '0zXfDafyyao',
    startSeconds: 5,
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
    videoId: 'E991yX1WiEI',
    startSeconds: 388,
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
    videoId: 'wB8CTs4AD6g',
    startSeconds: 17,
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
    videoId: '9-QsT-U2d4k',
    startSeconds: 194,
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'JLkCaBwRrVo',
    startSeconds: 53,
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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Mde2q7GFCrw',
    startSeconds: 5103,
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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  YoutubeEmbeddedthirteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'H9mtCLL8rI0',
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

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  YoutubeEmbeddeddfourteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Qa6R58-L3Ds',
    startSeconds: 34,
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

class YoutubeEmbeddedfifteen extends StatelessWidget {
  YoutubeEmbeddedfifteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'lawvkcCTNjA',
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

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  YoutubeEmbeddeddsixteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '-_wQv4Vq1qE',
    startSeconds: 19,
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

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  YoutubeEmbeddeddseventeen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'nKN-VK0B-18',
    startSeconds: 84,
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

class YoutubeEmbeddeddeighteen extends StatelessWidget {
  YoutubeEmbeddeddeighteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'WxB1gB6K-2A',
    startSeconds: 280,
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

class YoutubeEmbeddeddnineteen extends StatelessWidget {
  YoutubeEmbeddeddnineteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'kAG39jKi0lI',
    startSeconds: 33,
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

class YoutubeEmbeddedtwenty extends StatelessWidget {
  YoutubeEmbeddedtwenty({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'we-F0Gi0Lqs',
    startSeconds: 2418,
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

// end black// TODO Implement this library.
