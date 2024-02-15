import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycharacter extends StatelessWidget {
  // blank divider
  EnglishEntrycharacter({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcharacter(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("character"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters1(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Who plays the main character?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters2(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The writers killed off her character when she got cancer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters3(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The two lead actors inhabit their characters fully."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters4(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The main character is played by Nicole Kidman."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters5(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He has developed a skill set from his character work in film, TV and stage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters6(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Generosity is part of the American character."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters7(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His scruffy appearance does not reflect his character."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters8(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's not in his character to be so secretive."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters9(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Everyone admires her strength of character and determination for success."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters10(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The team showed great character in coming back to win."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters11(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The character of the neighbourhood hasn't changed at all."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters12(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The police pointed out the illegal character of the protest action."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters13(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The restaurant is cheap and full of character."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters14(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Who's that suspicious character hanging around outside?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters15(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's a character!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters16(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He left his job without a stain on his character."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters17(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was prepared to sue for defamation of character."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters18(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These are the Chinese characters meaning ‘wind’ and ‘water’."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters19(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharacters1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters20(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharacters2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters21(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharacters2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters22(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharacters2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters23(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharacters2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters24(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharacters2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters25(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharacters2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters26(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharacters2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters27(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharacters2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters28(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharacters2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters29(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharacters2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters30(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharacters3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters31(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharacters3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharacters32(String languageCode) async {
    // DOPSUM: CHANGE speakcharacter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharacters3200"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "character"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkærəktə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcharacter("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkærəktər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcharacter("en-US"),
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
کوردی: کەسایەتی، کەسێتی، خوو، خوو و ڕەوشت، کریار، تایبەتمەندی، ڕەوشت، سروشت، جیانیشان، تایبەتمەندی جیاکەەروە، خەسڵەت، توانایی مێنتاڵ یان هۆشی، لێهاتوویی، کەش، کەش‌وهەوا، بار، ڕەوش، پیت، تیپ، نیشانە، هێما، بەرژەنگ، جۆر، چەشن، ئاوا،	نێوبانگ، ناوودەنگ،	ڕۆڵ،	ئابڕوو، ناوی باش،	پلە، پلەوپایە،	کەس، مرۆ، پیاو، بنیادەم، مرۆی نائاسایی، پیاوی سەیر،	ڕابووری، پێشینە،	(کۆمپیوتەر) نیشانە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) کەسێک یان شتێک لە شانۆیەک، فیلمێک، یان کتێبێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Who plays the main character?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کێ ڕۆڵی کەسایەتی سەرەکی دەبینێت؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "character", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters1("en-US"),
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
                                            "The writers killed off her character when she got cancer."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نووسەرەکان کۆتییان بە کارەکتەرەکەی هێنا کە تووشی شێرپەنجە بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters2("en-US"),
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
                                                    "The two lead actors inhabit their characters fully."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دوو ئەکتەرە سەرەکییەکە بە تەواوی ڕۆدەچنە ناو کارەکتەرەکانیان."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcharacters3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcharacters3("en-US"),
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
                                                    "The main character is played by Nicole Kidman."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کارەکتەری سەرەکی لەلایەن نیکۆڵ کیدمانەوە ڕۆڵی دەبینرێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcharacters4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcharacters4("en-US"),
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
                                  "٢. (ناو) کەسێکی دیاریکراو کە فیلمێک، شانۆیەک، یان زنجیرە درامایەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He has developed a skill set from his character work in film, TV and stage."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "شارەزاییەکی بەدەستهێناوە کە سەرچاوەی گرتووە لە کارە کارەکتەرییەکانی لە فیلم، تەلەفیزیۆن، و تەختەی شانۆوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) تەواوی خاسیەت و تایبەتمەندی کەسێک کە وادەکات جیاواز بێت لە کەسانی دیکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Generosity is part of the American character."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەخشندەیی بەشێکە لە سرووشتی ئەمریکا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters6("en-US"),
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
                                            "His scruffy appearance does not reflect his character."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەرکەوتنە شڕوشپرزەکەی پێناسەی کەسایەتیی ناکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters7("en-US"),
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
                                            "It's not in his character to be so secretive."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە کەسایەتییدا نییە کە نهێنی‌پارێز بێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) خاسیەتی کەسیی بەهێز، بۆ نموونە وەک توانای مامەڵەکردن لەگەڵ دۆخی مەترسیدار و سەخت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Everyone admires her strength of character and determination for success."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەمووان سەرسامی بەهێزیی کەسایەتیی و ویستی بۆ سەرکەوتن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters9("en-US"),
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
                                            "The team showed great character in coming back to win."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تیمەکە لێهاتوویی گەورەی پیشاندا لە گەڕانەوە بۆ بردنەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) خاسیەتێکی دیاریکراو یان تایبەتمەندییەک کە شتێک، بۆنەیەک، یان شوێنێک هەیەتی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The character of the neighbourhood hasn't changed at all."),
                                    ExampleSentenceKurdish(
                                        text: "ڕواڵەتی گەڕەکەکە هیچ نەگۆڕاوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters11("en-US"),
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
                                            "The police pointed out the illegal character of the protest action."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پۆلیس خەسڵەتی نایاسایی‌بوونی ناڕەزایی دەربڕینەکەی خستەبەرچاو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) خاسیەتی سەرنجڕاکێش یان نامۆی شتێک یان کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The restaurant is cheap and full of character."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چێشتخانەکە هەرزان و پڕ لە تایبەتمەندییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) کەسێک، بەتایبەتی کەسێک نامۆ و خراپ"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Who's that suspicious character hanging around outside?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەو کەسە گوماناوییە کێیە کە لە دەرەوە دەسووڕێتەوە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ناو) کەسێکی سەرنجڕاکێش و نامۆ"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "She's a character!"),
                                    ExampleSentenceKurdish(
                                        text: "کچێکی سەرنجڕاکێشە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ناو) بۆچوونی خەڵکی لەسەرت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He left his job without a stain on his character."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کارەکەی جێهێشت بەبێ هیچ لەکەیەک لەسەر کەسایەتیی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters16("en-US"),
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
                                            "He was prepared to sue for defamation of character."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئامادەبوو بۆ شکاتکردن بۆ لەکەدارکردنی کەسایەتیی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) پیتێک، ئاماژەیەک، نیشانەیەک، یان سمبولێک کە لە نووسین، چاپ، و کۆمپیوتەردا بەکاردێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "These are the Chinese characters meaning ‘wind’ and ‘water’."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم ئەو هێما چینییانەن کە بە واتار 'با' و 'ئاو' دێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharacters18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharacters18("en-US"),
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
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(), //
                        // YoutubeEmbeddednine(),
                        // YoutubeEmbeddedten(),
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
                        YoutubeEmbeddedend(),
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
- Noun: character (Derived forms: characters)
1. An imaginary person represented in a work of fiction (play, film or story) (= fictional character, fictitious character)
"she is the main character in the novel";
 
2. A characteristic property that defines the apparent individual nature of something (= quality, lineament)
"the radical character of our demands";

3. The inherent complex of attributes that determines a person's moral and ethical actions and reactions (= fiber [US], fibre [Brit, Cdn])
"education has for its object the formation of character";
 
4. An actor's portrayal of someone in a play (= role, theatrical role, part, persona)
"she played the character of Desdemona";
 
5. A person of a specified kind (usually with many eccentricities) (= eccentric, type, case)
"a real character"; "a strange character";
 
6. Good repute
"he is a man of character"
 
7. A formal recommendation by a former employer to a potential future employer describing the person's qualifications and dependability (= reference, character reference)
"requests for character references are all too often answered evasively";

8. A written symbol that is used to represent speech (= graph, grapheme, graphic symbol)
"the Greek alphabet has 24 characters";
 
9. (genetics) an attribute (structural or functional) that is determined by a gene or group of genes

- Verb: character (Derived forms: characters, charactering, charactered)
1. Engrave or inscribe characters on
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

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/OR2gpBMHI9I?t=',
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
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/ZVS1YrH_Lfc?t=',
    startSeconds: 29,
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
    videoId: 'https://youtu.be/nQ-Ua6NYago?t=',
    startSeconds: 93,
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
    videoId: 'https://youtu.be/R0wa9IlCA_w?t=',
    startSeconds: 354,
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
    videoId: 'https://youtu.be/Jk7NYEhai0g?t=',
    startSeconds: 232,
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
    videoId: 'https://youtu.be/xoyLYumj7tI?t=',
    startSeconds: 125,
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
    videoId: 'https://youtu.be/a3WnvDtDD2M?t=',
    startSeconds: 24,
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
    videoId: 'https://youtu.be/_GFkHA5EZdE?t=',
    startSeconds: 204,
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

// end WORD_WEB
