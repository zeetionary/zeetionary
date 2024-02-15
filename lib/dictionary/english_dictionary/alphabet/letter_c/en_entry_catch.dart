import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycatch extends StatelessWidget {
  // blank divider
  EnglishEntrycatch({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcatch(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("catch"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs1(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She managed to catch the keys as they fell."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs2(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I caught him when he fell."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs3(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The dog caught the stick in its mouth."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs4(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I threw the bag in the air and she caught it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs5(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The roof was leaking and I had to use a bucket to catch the drips."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs6(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He caught hold of her arm as she tried to push past him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs7(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He caught her up in his arms."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs8(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She caught the rope with both hands as she fell."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs9(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We caught the 12.15 bus from Oxford."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs10(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I must go—I have a train to catch."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs11(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The murderer was never caught."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs12(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Our cat is hopeless at catching mice."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs13(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("How many fish did you catch?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs14(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is unusual to catch measles more than once."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs15(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I think I must have caught this cold from you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs16(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A sign on the wall caught my attention."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs17(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There was one story in particular that caught her interest."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs18(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She caught sight of a car in the distance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs19(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He caught a glimpse of himself in the mirror."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs20(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Sorry, I didn't quite catch what you said."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs21(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I caught her smoking in the bathroom."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs22(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You wouldn't catch me working on a Sunday!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs23(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was caught with bomb-making equipment in his home."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs24(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You've caught me at a bad time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs25(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I caught him just as he was leaving the building."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs26(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I was hoping to catch you at home."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs27(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The illness can be treated provided it's caught early enough."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs28(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Bye for now! I'll catch you later."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs29(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Let's eat now and maybe we could catch a movie later."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs30(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Did you catch that show on the radio?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs31(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His arrival caught me by surprise."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs32(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She got caught in a rainstorm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs33(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her dress caught on a nail."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs34(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He caught his thumb in the door."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs35(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The stone caught him on the side of the head."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs36(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She caught him a blow on the chin."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs37(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The house caught fire."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs38(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("These logs are wet: they won't catch."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs39(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The knife gleamed as it caught the light."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs40(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A colourful glow appears as the light catches the glass."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs41(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You've caught the sun on the back of your neck."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs42(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The artist has caught her smile perfectly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs43(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Roger made some brilliant catches at today's game."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs44(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He dropped several easy catches."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs45(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Fishermen have been landing record catches this season."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs46(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I can’t open the catch on this bracelet."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs47(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcatchs4747"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs48(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcatchs4848"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs49(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcatchs4949"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcatchs50(String languageCode) async {
    // DOPSUM: CHANGE speakcatch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcatchs5050"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "catch"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kætʃ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcatch("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kætʃ/,  /ketʃ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcatch("en-US"),
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
                          const KurdishVocabulary(text: """
کوردی: گرتن، گیرخستن، چنگ‌پێوەگرتن، دەس‌لێ‌گیرکردن، گیرکردن، قولاپ، گیرگە، گیرە، چەفت، قوفڵ، ڕاو، بەرەڕاو، کێشە، گرفتاری، گیر، گێرەوکێشە، درووشم، وشەی بەرچاو، مەتەڵ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) وەستان و گرتنی شتێک یان کەسێک بە دەستت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She managed to catch the keys as they fell."),
                                    ExampleSentenceKurdish(
                                        text: "توانی کلیلەکان بگرێت کە کەوتن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // Define the word "catch", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs1("en-US"),
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
                                        text: "I caught him when he fell."),
                                    ExampleSentenceKurdish(
                                        text: "گرتمەوە کە کەوت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs2("en-US"),
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
                                                    "The dog caught the stick in its mouth."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "سەگەکە دارەکەی بە دەمی گرتەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcatchs3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcatchs3("en-US"),
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
                                                    "I threw the bag in the air and she caught it."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "جانتاکەم فڕێدایە حەوا و گرتییەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcatchs4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcatchs4("en-US"),
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
                              text: "٢. (کردار) گرتنی شلە کە دەکەوێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The roof was leaking and I had to use a bucket to catch the drips."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بنبانەکە تکەی دەکرد و پێویست بوو سەتڵێک بەکاربێنم بۆ گرتنی تکەکانی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) گرتنی کەسێک یان شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He caught hold of her arm as she tried to push past him."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "باڵی ڕاکێشا کە ویستی بە تەنیشتیدا بچێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs6("en-US"),
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
                                        text: "He caught her up in his arms."),
                                    ExampleSentenceKurdish(
                                        text: "خستییە باوەشی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs7("en-US"),
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
                                            "She caught the rope with both hands as she fell."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "حەبلەکەی گرت بە ھەردوو دەست کە کەوت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) ئامادەبوون لە کاتی خۆیدا بۆ چوونە ناو پاس، شەمەندەفەر، فڕۆکە، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We caught the 12.15 bus from Oxford."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فریای پاسی ١٢:١٥ خولەک لە ئۆکسفۆردەوە کەوتین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs9("en-US"),
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
                                            "I must go—I have a train to catch."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەبێت بچم، شەمەندەفەرێک ھەیە پێیدا بگەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) گرتنی کەسێک یان ئاژەڵێک کە ھەوڵ دەدات ھەڵبێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "The murderer was never caught."),
                                    ExampleSentenceKurdish(
                                        text: "بکووژەکە ھەرگیز نەگیردرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs11("en-US"),
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
                                            "Our cat is hopeless at catching mice."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پشیلەکەمان بێ‌توانایە لە گرتنی مشک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs12("en-US"),
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
                                        text: "How many fish did you catch?"),
                                    ExampleSentenceKurdish(
                                        text: "چەند ماسیت گرت؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) گرتنی نەخۆشی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It is unusual to catch measles more than once."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "باو نییە سوورێژە زیاتر لە جارێک بگریت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs14("en-US"),
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
                                            "I think I must have caught this cold from you."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێم‌وایە دەبێت ئەم ھەڵامەتەم لە تۆوە گرتبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) تێبینیکردنی شتێک و حەزکردن لێی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "A sign on the wall caught my attention."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نووسراوێک لەسەر دیوارەکە سەرنجمی ڕاکێشا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs16("en-US"),
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
                                            "There was one story in particular that caught her interest."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "یەک چیرۆک بەتایبەت ھەبوو کە خولیای ڕاکێشا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) ھەستکردن بە شتێک تەنھا بۆ ساتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She caught sight of a car in the distance."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تێبینی ئۆتۆمبێلێکی کرد لە دوورەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs18("en-US"),
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
                                            "He caught a glimpse of himself in the mirror."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چاوێکی لە ئاوێنەکەوە خشاند بە خۆیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) گوێ‌لێ‌بوون یان تێگەشتن لە شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Sorry, I didn't quite catch what you said."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ببوورە، تەواو تێنەگەشتم لەوەی گوتت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) دۆزینەوەی ئەوەی کە کەسێک شتێک دەکات، بەتایبەتی شتێکی خراپ"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I caught her smoking in the bathroom."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە کاتی جگەرەکێشاندا بینی/گرتی لە باسروومەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs21("en-US"),
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
                                            "You wouldn't catch me working (= I would never work) on a Sunday!"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەرگیز نامبینی لە ڕۆژانی یەکشەماندا کار بکەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs22("en-US"),
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
                                                    "He was caught with bomb-making equipment in his home."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "گیردرا بە کەرەستەی درووستکردنی بۆمبەوە لە ماڵەکەیدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcatchs23("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcatchs23("en-US"),
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
                                                    "You've caught me at a bad time (= at a time when I am busy)."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لەکاتێکی خراپ ھاتوویت بۆ لام."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcatchs24("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcatchs24("en-US"),
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
                                  "١١. (کردار) ئامادەبوون لە کاتی خۆی بۆ کردنی شتێک، قسەکردن لەگەڵ کەسێک، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I caught him just as he was leaving the building."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێی ڕاگەیشتم کە بیناکەی جێدەھێشت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs25("en-US"),
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
                                            "I was hoping to catch you at home (= to see you at home when you were there)."),
                                    ExampleSentenceKurdish(
                                        text: "ھیواداربووم لە ماڵەوە بتبینم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs26("en-US"),
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
                                                    "The illness can be treated provided it's caught (= discovered) early enough."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "نەخۆشییەکە دەکرێت چارەسەر بکرێت ئەگەر بەپێی پێویست زوو پێی بزانرێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcatchs27("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcatchs27("en-US"),
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
                                                    "Bye for now! I'll catch you later (= speak to you again later)."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "خوات لەگەڵ بۆ ئێستا! دواتر دەتبینمەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcatchs28("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcatchs28("en-US"),
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
                                  "١٢. (کردار) بینین، گوێگرتن، یان بەژداری لە شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Let's eat now and maybe we could catch a movie later."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "با ئێستا نان بخۆین و بزانین دواتر سەیری فیلمێک دەکەین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs29("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs29("en-US"),
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
                                            "Did you catch that show on the radio?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گوێت لەو پڕۆگرامە گرت لە ڕادیۆ؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs30("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs30("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (کردار) لەناکاو ڕوودان و درووستکردنی بارودۆخێکی قورس بۆ کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "His arrival caught me by surprise."),
                                    ExampleSentenceKurdish(
                                        text: "گەشتنی سوپرایزی پێدام."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs31("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs31("en-US"),
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
                                        text: "She got caught in a rainstorm."),
                                    ExampleSentenceKurdish(
                                        text: "کەوتە ناو با و بۆرانێکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs32("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs32("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٤. (کردار) گیرخواردن لە شتێکدا یان لەسەر شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Her dress caught on a nail."),
                                    ExampleSentenceKurdish(
                                        text: "جلەکەی گیرا لە بزمارێک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs33("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs33("en-US"),
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
                                            "He caught his thumb in the door."),
                                    ExampleSentenceKurdish(
                                        text: "پەنجەی کەوتە بەر دەرگاکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs34("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs34("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٥. (کردار) لێدان لە کەسێک/شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The stone caught him on the side of the head."),
                                    ExampleSentenceKurdish(
                                        text: "بەردەکە کێشای بە سەریدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs35("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs35("en-US"),
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
                                            "She caught him a blow on the chin."),
                                    ExampleSentenceKurdish(
                                        text: "مشتێکی کێشا بە چەناگەیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs36("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs36("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٦. (کردار) دەستکردن بە سووتان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "The house caught fire."),
                                    ExampleSentenceKurdish(
                                        text: "خانووەکە گڕی گرت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs37("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs37("en-US"),
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
                                            "These logs are wet: they won't catch."),
                                    ExampleSentenceKurdish(
                                        text: "ئەم کۆلکەدارانە تەڕن: گڕناگرن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs38("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs38("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٧. (کردار) درەوشانەوە بە بەرکەوتنی ڕۆشنایی، یان بەرکەوتنی ڕۆشنایی بە شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The knife gleamed as it caught the light."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چەقۆکە درەوشایەوە کە ڕۆشنایی بەرکەوت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs39("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs39("en-US"),
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
                                            "A colourful glow appears as the light catches the glass."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕووناکییەکی ڕەنگین دەردەکەوێت کە ڕۆشناییەکە بەر گڵاسەکە دەکەوێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs40("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs40("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٨. (کردار) بەرکەوتن بە خۆر و گۆڕانی پێست بۆ ڕەش، قاوەیی، یان سوور"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "You've caught the sun on the back of your neck."),
                                    ExampleSentenceKurdish(
                                        text: "پشتەملت ڕەشھەڵگەڕاوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs41("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs41("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٩. (کردار) پیشاندان یان ناساندنی شتێک بە درووستی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The artist has caught her smile perfectly."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھونەرمەندەکە بێ‌خەوشانە بزەکەیی وێناکردووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs42("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs42("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٠. (ناو) گرتنی شتێک، بۆ نموونە تۆپێک لە یاریدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Roger made some brilliant catches at today's game."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕۆجەر ئەمڕۆ ھەندێک گرتنەوەی بلیمەتانەی ئەنجامدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs43("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs43("en-US"),
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
                                            "He dropped several easy catches."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ژمارەیەک گرتنەوەی ئاسانی لەدەستدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs44("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs44("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢١. (ناو) تەواوی ئە بڕەی کە گیردراوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Fishermen have been landing record catches this season."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ماسیگران ئەم وەرزە ڕاوی مێژووییان کردووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs45("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs45("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٢. (ناو) ئامێرێک کە بەکاردێت بۆ گرتنی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I can’t open the catch on this bracelet."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناتوانم ئەڵقەی دەستبەندەکە بکەمەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs46("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs46("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٣. (ناو) سەختییەک یان گرفتێک کە شاراوەیە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It sounds too good. There must be a catch."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئێجگار باش دیارە. دەبێت گێرەوکێشەیەک ھەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcatchs47("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcatchs47("en-US"),
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
- Verb: catch (derived forms: caught, catches, catching)
1. Take hold of so as to seize, restrain or stop the motion of (= grab, take hold of)
"Catch the ball!";

2. Perceive with the senses quickly, suddenly, or momentarily (= pick up)
"I caught the aroma of coffee"; "He caught the allusion in her glance"; "ears open to catch every sound"; "Catch a glimpse";
 
3. Discover or come upon accidentally, suddenly, or unexpectedly; catch somebody doing something or in a certain state
"She caught her son eating candy"; "She was caught shoplifting"
 
4. Reach with a blow or hit in a particular spot (= get)
"the rock caught her in the back of the head"; "The punch caught him in the stomach";
 
5. Succeed in catching or seizing, especially after a chase (= get, capture)
"Did you catch the thief?";

6. To hook or entangle (= hitch)
"One foot caught in the stirrup";
 
7. Attract and fix (= arrest, get)
"His look caught her"; "She caught his eye"; "Catch the attention of the waiter";
 
8. Capture as if by hunting, snaring, or trapping (= capture)
"I caught a rabbit in the trap today";
 
9. Reach in time
"I have to catch a train at 7 o'clock"
 
10. Get or regain something necessary, usually quickly or briefly
"Catch some sleep"; "catch one's breath"
 
11. Move faster becoming closer and then possibly overtake (= catch up with)
"The Rolls Royce caught us near the exit ramp";
 
12. Be struck or affected by
"catch fire"; "catch the mood"
 
13. Check oneself during an action
"She managed to catch herself before telling her boss what was on her mind"
 
14. Hear, usually without the knowledge of the speakers (= take in, overhear)
"We caught the conversation at the next table";
 
15. Look at and follow all (or part of) something being shown or performed (= watch, view, see, take in)
"Catch a show on Broadway";

16. Cause to become accidentally or suddenly caught, ensnared, or entangled
"I caught the hem of my dress in the brambles"
 
17. Detect a blunder or misstep (= trip up)
"The reporter caught the senator";
 
18. Grasp with the mind or develop an understanding of (= get)
"did you catch that allusion?"; "We caught something of his theory in the lecture"; "don't catch your meaning";
 
19. Come down with
"did you catch a cold?"
 
20. Start burning
"The fire caught"
 
21. Perceive by hearing (= get)
"I didn't catch your name";
 
22. Suffer from the receipt of (= get)
"She will catch hell for this behaviour!";
 
23. Cause rapt attraction or admiration; attract love (= capture, enamour [Brit, Cdn], trance, becharm [archaic], enamor [US], captivate, beguile, charm, fascinate, bewitch, entrance, enchant)
"She caught all the men's hearts";
 
24. Apprehend and reproduce accurately (= get)
"She really caught the spirit of the place in her drawings";
 
25. Take in and retain
"We have a big barrel to catch the rainwater"
 
26. Spread or be communicated
"The fashion did not catch"
 
27. Become aware of
"he caught her staring out the window"
 
28. Delay or hold up; prevent from proceeding on schedule or as planned
"I was caught in traffic and missed the meeting"
 
29. (baseball) be the catcher
"Who is catching?"

- Noun: catch (derived forms: catches)
1. A drawback or difficulty that is not readily evident
"it sounds good but what's the catch?"
 
2. The quantity that was caught (= haul)
"the catch was only 10 fish";
 
3. A person regarded as a good matrimonial prospect (= match)
 
4. Anything that is caught (especially if it is worth catching)
"he shared his catch with the others"
 
5. A break or check in the voice (usually a sign of strong emotion)
 
6. A restraint that checks the motion of something (= stop)
"he used a book as a catch to hold the door open";
 
7. A fastener that fastens or locks a door or window
 
8. A cooperative game in which a ball is passed back and forth
"he played catch with his son in the backyard"
 
9. The act of catching an object with the hands (= grab, snatch, snap)
"Mays made the catch with his back to the plate";
 
10. The act of apprehending (especially apprehending a criminal) (= apprehension, arrest, collar [informal], pinch, taking into custody)
"the policeman on the beat got credit for the catch";
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
    videoId: 'r86fjEtxPgY',
    startSeconds: 30,
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
    videoId: 'x5RTQZGtkI8',
    startSeconds: 27,
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
    videoId: 'eCVA-5w0Mf8',
    startSeconds: 27,
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
    startSeconds: 477,
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
    videoId: 'R_fZjGm2OrM',
    startSeconds: 197,
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
    videoId: 'kXShLPXfWZA',
    startSeconds: 15,
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
    videoId: 'rsaLUIeurZ8',
    startSeconds: 267,
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
    videoId: '99i-Uo7rIpw',
    startSeconds: 319,
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
