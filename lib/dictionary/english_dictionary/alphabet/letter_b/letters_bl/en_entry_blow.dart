import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "blow" and for each meaning provide five example sentences that consist of 10-words or less. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

// replace blow - /bləʊ/

enum TtsState { playing }

class EnglishEntryblow extends StatelessWidget {
// blank divider
  EnglishEntryblow({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakblow(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("blow"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows1(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You're not blowing hard enough!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows2(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The policeman asked me to blow into the breathalyser."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows3(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He drew on his cigarette and blew out a stream of smoke."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows4(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The birds were singing and a warm wind was blowing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows5(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A cold wind blew from the east."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows6(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My hat blew off."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows7(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She blew the dust off the book."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows8(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The referee blew his whistle."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows9(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She grabbed a tissue and loudly blew her nose."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows10(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As I finished my speech, she blew me a kiss from the audience."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows11(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She blew bubbles with a bubble wand."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows12(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The car spun out of control when a tyre blew."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows13(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The safe had been blown by the thieves."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows14(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("One mistake could blow your cover."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows15(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He inherited over a million dollars and blew it all on drink and gambling."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows16(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She blew her chances by arriving late for the interview."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows17(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Blow it! We've missed the bus."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows18(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'm blowed if I'm going to let him treat you like that."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows19(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's blow this place."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows20(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The two men were exchanging blows."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows21(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He landed a blow on Jim's nose."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows22(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Losing his job came as a terrible blow to him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows23(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was a shattering blow to her pride."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows24(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The news came as a bitter blow to the staff."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows25(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Try to put the candles out in one blow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows26(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Give your nose a good blow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows27(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Blow! I completely forgot it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows28(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblows2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows29(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblows2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblows30(String languageCode) async {
    // DOPSUM: CHANGE speakblow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblows3030"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "blow"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bləʊ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakblow("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bləʊ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakblow("en-US"),
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
کوردی: ھەڵکردن، ھاتن (با)، وەشان، با، فوو، ھوو، (لووت) فن، ھن، لێدان، ژەندن، گەرای مێش، ھەواخۆری، گیابەنگ، مەریوانە، گوڵەلێوە،لێدان، تەق، گورز، جەزرەبە، کارەسات، دومات، ناڕەحەتی، ئاپۆر، گرگاشە، مەینەتی، نەھامەتی، بەڵا، گوڵ‌کردن، پشکوتن، سەروبەندی خونچەکردن، دەمەترەک(بوون)

١. (کردار) فووکردن"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "You're not blowing hard enough!"),
                                    ExampleSentenceKurdish(
                                        text: "زۆر خێرا فوو ناکەیت!"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows1("en-US"),
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
                                            "The policeman asked me to blow into the breathalyser."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پۆلیسەکە داوای لێکردم فوو بکەم بە ئەلکھول‌پێوەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows2("en-US"),
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
                                            "He drew on his cigarette and blew out a stream of smoke."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "قومێکی لە جگەرەکەی دا و دووکەڵەکەی کرد بە ھەوادا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (کردار) جوڵانی با"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The birds were singing and a warm wind was blowing."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "باڵندەکان دەیان چریکاند و بایەکی گەرم ھەڵیکردبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows4("en-US"),
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
                                            "A cold wind blew from the east."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بایەکی سارد لە ڕۆژھەڵاتەوە ھەڵیکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) جوڵان بە با، ھەناسەی کەسێک، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "My hat blew off."),
                                    ExampleSentenceKurdish(
                                        text: "کڵاوەکەم با بردی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows6("en-US"),
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
                                            "She blew the dust off the book."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فووی کرد بە تۆزەکەدا و لە کتێبەکەی کردەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) لێدانی فیکەیەک یان ئامێرێکی میوزیکی بە فووکردن پێیدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "The referee blew his whistle."),
                                    ExampleSentenceKurdish(
                                        text: "ناوبژیوانەکە فیکەکەی لێدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) پاککردنەوەی لووتت بە تێپەڕاندنی ھەوا پێیدا بۆ دەرەوە بۆ ناو کلێنسێک یان دەستەسڕێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She grabbed a tissue and loudly blew her nose."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کلێنسێکی ڕاکێشا و بە دەنگی بەرز مشەی کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) ماچکردنی دەستت و نیشاندانی وەک ئەوەی بە فووکردن دەینێری بۆ کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "As I finished my speech, she blew me a kiss from the audience."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کە وتارەکەمم تەواوکرد، ماچێکی بۆ ھاویشتم لەناو جەماوەرەکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) درووستکردن یان پێدانی شێوە بە فووکردن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She blew bubbles with a bubble wand."),
                                    ExampleSentenceKurdish(
                                        text: "بڵقی درووستدەکرد بە دارکەفێک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) تایە تەقین"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The car spun out of control when a tyre blew."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئۆتۆمبێلەکە سووڕا و لە کۆنترۆڵ دەرچوو کە تایەیەکی تەقی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (کردار) کردنەوەی شتێک بە تەقەمەنی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The safe had been blown by the thieves."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "قاسەکە شکێندرابوو لەلایەن دزەکانەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٠. (کردار) ئاشکراکردنی نھێنی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "One mistake could blow your cover (= make your real name, job, intentions, etc. known)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "یەک ھەڵە ڕەنگە ناسنامەت ئاشکرا بکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) بەھەدەردانی ژمارەیەکی زۆر پارە لە شتێکدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He inherited over a million dollars and blew it all on drink and gambling."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەروو یەک ملیۆن دۆلاری بە میراتی بۆ جێما و ھەمووی لە خواردنەوە و قوماردا بەھەدەردا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (کردار) لەدەستدانی ھەلێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She blew her chances by arriving late for the interview."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەلەکانی لەدەستدا بە فرەنگ گەشتن بە چاوپێکەوتنەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (کردار) بەکاردێت بۆ پیشاندانی ئەوەی بێزار یان سەرسامی، یان ئەوەی شتێکت لا گرنگ نییە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Blow it! We've missed the bus."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەستی شکاوم! پاسەکەمان لەدەستدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows17("en-US"),
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
                                            "I'm blowed if I'm going to (= I certainly will not) let him treat you like that."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەڵبەتە مردووم ئەگەر بھێڵم وەھا مامەڵەت لەگەڵ بکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٤. (کردار) جێھێشتنی شوێنێک لەناکاو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Let's blow this place."),
                                    ExampleSentenceKurdish(
                                        text: "با بۆی دەرچین لەم شوێنە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٥. (ناو) لێدانێکی بەھێز بە دەست، چەک، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The two men were exchanging blows."),
                                    ExampleSentenceKurdish(
                                        text: "دوو پیاوەکە یەکتریان دەکووتا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows20("en-US"),
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
                                            "He landed a blow on Jim's nose."),
                                    ExampleSentenceKurdish(
                                        text: "کێشای بە لوتی جیمدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows21("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٦. (ناو) ڕووداوێکی لەناکاو کە زیانی دەبێت بۆ کەسێک/شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Losing his job came as a terrible blow to him."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەدەستدانی کارەکەی گورزێکی خراپ بوو بۆی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows22("en-US"),
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
                                            "It was a shattering blow to her pride."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گورزێکی کەمەرشکێن بوو بۆ لووت‌بەرزییەکەی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows23("en-US"),
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
                                            "The news came as a bitter blow to the staff."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەواڵەکە وەک گورزێکی تاڵ بوو بۆ ستافەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows24("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٧. (ناو) فووکردن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Try to put the candles out in one blow."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەوڵ بدە مۆمەکان بە یەک فوو بکوژێنیتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows25("en-US"),
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
                                            "Give your nose a good blow (= clear it completely)."),
                                    ExampleSentenceKurdish(
                                        text: "مشەمشێک بکە بە لووتت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows26("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٨. (سەرسوڕمان) بۆ پیشاندانی بێزاری سەبارەت بە شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Blow! I completely forgot it."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەستی شکاوم! بە تەواوی بیرم چوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblows27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblows27("en-US"),
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
- Noun: blow (derived forms: blows)
1. A powerful stroke with the fist or a weapon
"a blow on the head"
 
2. An impact (as from a collision) (= bump)
"the blow threw him off the bicycle";
 
3. An unfortunate happening that hinders or impedes; something that is thwarting or frustrating (= reverse, reversal, setback, black eye)
 
4. An unpleasant or disappointing surprise (= shock)
"it came as a blow to learn that he was injured";
 
5. A strong current of air (= gust, blast)
"the tree was bent almost double by the blow";
 
6. Forceful exhalation through the nose or mouth (= puff)
"he gave his nose a loud blow";

7. [slang] A street name for cocaine (= coke [slang], nose candy [slang], snow [slang], C [slang])

- Verb: blow (derived forms: blown, blew, blows, blowing)
1. Exhale hard
"blow on the soup to cool it down"
 
2. Be blowing or storming
"The wind blew from the West"
 
3. Free of obstruction by blowing air through
"blow one's nose"
 
4. Be in motion due to some air or water current (= float, drift, be adrift)
"The leaves were blowing in the wind";

5. Make a sound as if blown
"The whistle blew"
 
6. Shape by blowing
"Blow a glass vase"
 
7. [informal] Be inadequate or objectionable (= suck [informal])
"this blows!";

8. Make a mess of, destroy or ruin (= botch, bodge [Brit, informal], bumble, fumble, botch up, muff [informal], flub [N. Amer, informal], screw up [informal], spoil, muck up [informal], bungle, fluff [informal], bobble [N. Amer], mishandle, louse up [informal], foul up, mess up, butcher, goof up [informal], cock up [Brit, informal], balls up [informal], make a hash of [informal])
"I blew the dinner and we had to eat out";
 
9. [informal] Spend thoughtlessly; throw away (= waste, squander)
"He blew his inheritance on his insincere friends";
 
10. [informal] Spend lavishly or wastefully on
"He blew a lot of money on his new home theatre"
 
11. Sound by having air expelled through a tube
"The trumpets blew"
 
12. Play or sound a wind instrument
"She blew the horn"
 
13. [vulgar] Provide sexual gratification through oral stimulation (= fellate, go down on)
 
14. Cause air to go in, on, or through
"Blow my hair dry"
 
15. Cause to move by means of an air current
"The wind blew the leaves around in the yard"
 
16. Spout moist air from the blowhole
"The whales blew"
 
17. [informal] Leave; informal or rude (= shove off [informal], shove along [informal])
"Blow now!"; "let's blow this place";
 
18. Deposit eggs (of insects)
"certain insects are said to blow"
 
19. Cause to be revealed and jeopardized
"The story blew their cover"
 
20. Show off, esp. with exaggeration (= boast, tout, swash [archaic], shoot a line [informal], brag, gas [informal], bluster, vaunt, gasconade [archaic], skite [Austral, NZ, informal])
 
21. Allow to regain its breath
"blow a horse"
 
22. Melt, break, or become otherwise unusable (= blow out, burn out)
"The lightbulbs blew out"; "The fuse blew";
 
23. Burst suddenly
"The tire blew"; "We blew a tire"
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
    videoId: 'GDMel6oO2fU',
    startSeconds: 23,
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
    videoId: 'hFZFjoX2cGg',
    startSeconds: 1022,
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
    videoId: 'DPZzrlFCD_I',
    startSeconds: 226,
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
    videoId: 'e09xig209cQ',
    startSeconds: 558,
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
    videoId: 'JqDf1X2eIbE',
    startSeconds: 405,
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
    videoId: 'MGO4_8YRKro',
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
    videoId: '03VAIrkmrD0',
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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'IVRS7xWo9ik',
    startSeconds: 544,
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
    videoId: 'zqllxbPWKNI',
    startSeconds: 1388,
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
    videoId: 'uSTdUqgIdyk',
    startSeconds: 497,
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
    videoId: 'XtNni2wLFR4',
    startSeconds: 205,
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
    videoId: 'qD6bPNZRRbQ',
    startSeconds: 98,
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

// more than one video, only first autoplay

// end blow
