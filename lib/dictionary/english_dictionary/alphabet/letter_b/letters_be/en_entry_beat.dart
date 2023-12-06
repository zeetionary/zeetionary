import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alright.dart';
import 'package:zeetionary/theme/pallete.dart';

// More sentences is NOT done

// Define the word "beat" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace beat - replace EnglishEntrybeat

// replace speakBeat - /biːt/

enum TtsState { playing }

class EnglishEntrybeat extends StatelessWidget {
// blank divider
  EnglishEntrybeat({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBeat(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("beat"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats1(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He beat me at chess."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats2(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I beat her by just three points."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats3(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government's main aim is to beat inflation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats4(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is a problem that beats even the experts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats5(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If we go early we should beat the traffic."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats6(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "At that time children were regularly beaten for quite minor offences."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats7(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A man was found beaten to death."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats8(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Nothing beats home cooking."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats9(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Somebody was beating at the door."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats10(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's alive—her heart is still beating."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats11(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We heard the drums beating."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats12(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Beat the mixture well, until it is creamy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats13(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The metal had been beaten flat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats14(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I put my head on his chest but I could feel no heartbeat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats15(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They danced to the beat of the drums."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats16(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She felt the beat of his heart."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats17(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He tapped his foot to the beat (= rhythm) of the music."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats18(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "More police officers out on the beat may help to cut crime."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats19(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm beat - I'm going to bed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats20(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBeats2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats21(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBeats2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats22(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBeats2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBeats23(String languageCode) async {
    // DOPSUM: CHANGE speakBeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBeats2323"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 13, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "beat"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /biːt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakBeat("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /biːt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakBeat("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 13
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
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
کوردی: لێدان، پیاکێشان، کوتان، دەنگی لێدان، لێدان(پرتە و دڵ)، ترپە، ڕیتم (موسیقی)، کێش، هەڤدەن، زەبر، هێز (هەڵبەست)، ڕێڕەو، ڕێگا، جووڵەی باڵەکانی باڵندە، پێشکەوتن، پێش‌وەچوون، شوێنی تیاگەڕان، ناوچەی نۆبەداری (ئەفسەری پۆلیس)، نافەرمی هیلاک، شەکەت، ماندوو

١. (کردار) شکستهێنان بە کەسێک لە یارییەک یان پێشبڕکێیەک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He beat me at chess."),
                              const ExampleSentenceKurdish(
                                  text: "لە شەترەنجدا لێی بردمەوە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats1("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I beat her by just three points."),
                              const ExampleSentenceKurdish(
                                  text: "بە جیاوازی سێ خاڵ لێم بردەوە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats2("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) باشتربوون لە کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Nothing beats home cooking."),
                              const ExampleSentenceKurdish(
                                  text: "هیچ باشتر نابێت لە خواردنی ماڵەوە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats8("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) سەپاندنی هەژموون بەسەر شتێکدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The government's main aim is to beat inflation."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئامانجی سەرەکی حکومەت ئەوەیە کۆنترۆڵی هەڵاوسانی ئابووری بکات."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats3("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) شتێک کە زۆر گران دەبێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It is a problem that beats even the experts."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کێشەیەکە کە تەنانەت شارەزایانیش لێی تێ ناگەن."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats4("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) دوورکەوتنەوە لە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "If we go early we should beat the traffic."),
                              const ExampleSentenceKurdish(
                                  text: "ئەگەر زوو بچین لە ترافیک دوور دەبین."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats5("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) لێدانی زۆر لە کەسێک بە مەبەستی ئازاردان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "At that time children were regularly beaten for quite minor offences (= as a punishment)."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەو کات منداڵان کوتەکیان دەخوارد بە بەردەوامی بۆ هەڵەی زۆر بچووک."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats6("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "A man was found beaten to death."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پیاوێک دۆزرایەوە کە تا مردن لێی درابوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats7("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) لێدان لە شتێک بۆ چەند جارێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Somebody was beating at the door."),
                              const ExampleSentenceKurdish(
                                  text: "کەسێک لە دەرگاکەی دەکووتا."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats9("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) درووستکردنی دەنگێکی بەردەوام، یان وا لە شتێک بکەیت دەنگێکی بەردەوام دەربکات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She's alive—her heart is still beating."),
                              const ExampleSentenceKurdish(
                                  text: "زیندووە، دڵی هێشتا لێدەدات."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats10("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We heard the drums beating."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "گوێمان لە دەنگی لێدانی دەهۆڵەکان بوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats11("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (کردار) تێکەڵکردنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Beat the mixture well, until it is creamy."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تێکەڵەکە بەباشی تێکبدە تا کرێمدار دەبێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats12("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats12("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) گۆڕینی شێوەی شتێک، بەتایبەتی کانزا، بە لێدانی بە چەکووش"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The metal had been beaten flat."),
                              const ExampleSentenceKurdish(
                                  text: "کانزاکە بە لێدان پانکراوەتەوە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats13("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats13("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ناو) یەک لێدانی شتێک، بۆ نموونە یەک ترپەی دڵ، یان یەک لێدانی لە دەهۆڵ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I put my head on his chest but I could feel no heartbeat."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سەرم خستە سەر سنگی بەڵام گوێم لە هیچ ترپەیەکی دڵ نەبوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats14("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats14("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They danced to the beat of the drums."),
                              const ExampleSentenceKurdish(
                                  text: "سەمایان دەکرد لەگەڵ ڕیتمی دەهۆڵەکان."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats15("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats15("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (ناو) زنجیرەیەک لە لێدانی شتێک، بۆ نموونە لێدانی دڵ یان دەهۆڵ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She felt the beat of his heart."),
                              const ExampleSentenceKurdish(
                                  text: "هەستی بە لێدانی دڵی کرد."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats16("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats16("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (ناو) ڕیتمی سەرەکی، یان یەک یەکەی ڕیتمێک، لە پارچەیەک میوزیک یان هۆنراوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He tapped his foot to the beat (= rhythm) of the music."),
                              const ExampleSentenceKurdish(
                                  text: "پێی دادەکوتی لەگەڵ ڕیتمی میوزیکەکە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats17("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats17("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ناو) ناوچەیەک کە ئەفسەرێکی پۆلیس بەردەوام بەسەریدا دەچێت و بەرپرسە بۆی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "More police officers out on the beat may help to cut crime."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پۆلیسی زیاتر لە نۆبەداریدا بن ئەگەری هەیە تاوان کەمبکاتەوە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats18("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats18("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٥. (هاوەڵناو) زۆر ماندوو"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I'm beat - I'm going to bed."),
                              const ExampleSentenceKurdish(
                                  text: "زۆر ماندووم، دەچم دەنووم."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBeats19("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBeats19("en-US"),
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
                    // YoutubeEmbeddedtwelve(),
                    // YoutubeEmbeddedthirteen(),
                    // YoutubeEmbeddedfourteen(),
                    // YoutubeEmbeddedfifteen(),
                    // YoutubeEmbeddedsixteen(),
                    // YoutubeEmbeddedseventeen(),
                    // YoutubeEmbeddedeighteen(),
                    // YoutubeEmbeddednineteen(),
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
- Verb: beat (Derived forms: beaten, beat, beating, beats)
1. Hit repeatedly
"beat on the door"; "beat the table with his shoe"
 
2. Give a beating to; subject to a beating, either as a punishment or as an act of aggression (= beat up, work over)
"Thugs beat him up when he walked down the street late at night"; "The teacher used to beat the students";
 
3. Come out better in a competition, race, or conflict (= beat out, crush, shell, trounce, vanquish)
"Agassi beat Becker in the tennis championship"; "We beat the competition";
 
4. Move rhythmically (= pound, thump)
"Her heart was beating fast";
 
5. Shape by beating
"beat swords into ploughshares"
 
6. Make a rhythmic sound (= drum, thrum)
"Rain beat against the windscreen";
 
7. Glare or strike with great intensity
"The sun was beating down on us"
 
8. (of wings) move up and down with a thrashing motion (= flap)
"The eagle beat its wings and soared high into the sky";
 
9. Sail with much tacking or with difficulty
"The boat beat in the strong wind"
 
10. (cooking) stir vigorously (= scramble)
"beat the cream";
 
11. Strike (a part of one's own body) repeatedly, as in great emotion or in accompaniment to music
"beat one's breast"; "beat one's foot rhythmically"
 
12. Be superior
"Reading beats watching television"; "This sure beats work!"
 
13. Avoid paying (= bunk [informal])
"beat the subway fare";
 
14. Make a sound like a clock or a timer (= tick, ticktock, ticktack [N. Amer])
"the grandfather clock beat midnight";
 
15. Move with a flapping motion (= flap)
"The bird's wings were beating";
 
16. Indicate by beating, as with the fingers or drumsticks
"Beat the rhythm"
 
17. Move with or as if with a regular alternating motion (= pulsate, quiver)
"the city beat with music and excitement";
 
18. Make by pounding or trampling
"beat a path through the forest"
 
19. (music) produce a rhythm by striking repeatedly
"beat the drum"
 
20. Strike (water or bushes) repeatedly to rouse animals for hunting
 
21. Beat through cleverness and wit (= outwit, overreach, outsmart, outfox, circumvent, outthink)
"I beat the traffic";

22. Confuse or leave at a loss because of something complex or difficult to understand (= confuse, throw, fox, befuddle, fuddle, bedevil, confound, discombobulate [informal], perplex, vex, stick, get, puzzle, mystify, baffle, pose, bewilder, flummox, stupefy, nonplus, gravel, dumbfound)
"This beats me!";

23. [informal] Wear out completely (= exhaust, wash up, tucker [N. Amer, informal], tucker out [N. Amer, informal])
"I'm beat";

- Noun: beat (Derived forms: beats)
1. A regular route for a sentry or policeman (= round)
"in the old days a policeman walked a beat and knew all his people by name";
 
2. The rhythmic contraction and expansion of the arteries with each beat of the heart (= pulse, pulsation, heartbeat)
"he could feel the beat of her heart";

3. The basic regular repeating sound unit in a piece of music (= rhythm, musical rhythm)
"the conductor set the beat";
 
4. A single pulsation of an oscillation produced by adding two waves of different frequencies; has a frequency equal to the difference between the two oscillations
 
5. A member of the beat generation; a nonconformist in dress and behaviour (= beatnik)
 
6. The sound of stroke or blow
"he heard the beat of a drum"
 
7. (prosody) the accent in a metrical foot of verse (= meter [US], metre [Brit, Cdn], measure, cadence)
 
8. A regular rate of repetition
"the cox raised the beat"
 
9. A stroke or blow
"the signal was two beats on the steam pipe"
 
10. The act of beating to windward; sailing as close as possible to the direction from which the wind is blowing

- Adjective: beat
Usage: informal
1. Very tired (= all in, bushed, dead [informal])
"so beat I could flop down and go to sleep anywhere";
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

  static String myVideoId = "D-2799Y07Zc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 593, // DOPSUM: CHANGE IT
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

  static String myVideoId = "hDHTxtp_IBo";

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

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  static String myVideoId = "Cp-6nuo9_4o";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 694, // DOPSUM: CHANGE IT
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

  static String myVideoId = "h31p4OLbqSc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1541, // DOPSUM: CHANGE IT
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

  static String myVideoId = "MSfjCG4V2GM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 234, // DOPSUM: CHANGE IT
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

  static String myVideoId = "_5yaoc_mGD0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 320, // DOPSUM: CHANGE IT
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

  static String myVideoId = "3g7TOTQSKkE";

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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  static String myVideoId = "JhpSyGcuwJw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 63, // DOPSUM: CHANGE IT
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

  static String myVideoId = "-I6YmMAThZ8";

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

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  static String myVideoId = "hFZFjoX2cGg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 301, // DOPSUM: CHANGE IT
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

  static String myVideoId = "rEdl2Uetpvo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 270, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  YoutubeEmbeddedthirteen({super.key});

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

class YoutubeEmbeddedfourteen extends StatelessWidget {
  YoutubeEmbeddedfourteen({super.key});

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

class YoutubeEmbeddedfifteen extends StatelessWidget {
  YoutubeEmbeddedfifteen({super.key});

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

class YoutubeEmbeddedsixteen extends StatelessWidget {
  YoutubeEmbeddedsixteen({super.key});

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

class YoutubeEmbeddedseventeen extends StatelessWidget {
  YoutubeEmbeddedseventeen({super.key});

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

class YoutubeEmbeddedeighteen extends StatelessWidget {
  YoutubeEmbeddedeighteen({super.key});

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

class YoutubeEmbeddednineteen extends StatelessWidget {
  YoutubeEmbeddednineteen({super.key});

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

// end beat// TODO Implement this library.
