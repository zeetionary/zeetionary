import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

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
کوردی: لێدان، پیاکێشان، کوتان، دەنگی لێدان، لێدان(پرتە و دڵ)، ترپە، ڕیتم (میوزیکی)، کێش، ھەڤدەن، زەبر، ھێز (ھەڵبەست)، ڕێڕەو، ڕێگا، جووڵەی باڵەکانی باڵندە، پێشکەوتن، پێش‌وەچوون، شوێنی تیاگەڕان، ناوچەی نۆبەداری (ئەفسەری پۆلیس)، ھیلاک، شەکەت، ماندوو
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (کردار) شکستھێنان بە کەسێک لە یارییەک یان پێشبڕکێیەک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "He beat me at chess."),
                                    ExampleSentenceKurdish(
                                        text: "لە شەترەنجدا لێی بردمەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats1("en-US"),
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
                                            "I beat her by just three points."),
                                    ExampleSentenceKurdish(
                                        text: "بە جیاوازی سێ خاڵ لێم بردەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) باشتربوون لە کەسێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Nothing beats home cooking."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھیچ باشتر نابێت لە خواردنی ماڵەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) سەپاندنی ھەژموون بەسەر شتێکدا"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The government's main aim is to beat inflation."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئامانجی سەرەکی حکومەت ئەوەیە کۆنترۆڵی ھەڵاوسانی ئابووری بکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) شتێک کە زۆر گران دەبێت"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It is a problem that beats even the experts."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کێشەیەکە کە تەنانەت شارەزایانیش لێی تێ ناگەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) دوورکەوتنەوە لە شتێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "If we go early we should beat the traffic."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەگەر زوو بچین لە ترافیک دوور دەبین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) لێدانی زۆر لە کەسێک بە مەبەستی ئازاردان"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "At that time children were regularly beaten for quite minor offences (= as a punishment)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەو کات منداڵان کوتەکیان دەخوارد بە بەردەوامی بۆ ھەڵەی زۆر بچووک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats6("en-US"),
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
                                            "A man was found beaten to death."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پیاوێک دۆزرایەوە کە تا مردن لێی درابوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) لێدان لە شتێک بۆ چەند جارێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Somebody was beating at the door."),
                                    ExampleSentenceKurdish(
                                        text: "کەسێک لە دەرگاکەی دەکووتا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) درووستکردنی دەنگێکی بەردەوام، یان وا لە شتێک بکەیت دەنگێکی بەردەوام دەربکات"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She's alive—her heart is still beating."),
                                    ExampleSentenceKurdish(
                                        text: "زیندووە، دڵی ھێشتا لێدەدات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats10("en-US"),
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
                                        text: "We heard the drums beating."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گوێمان لە دەنگی لێدانی دەھۆڵەکان بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (کردار) تێکەڵکردنی شتێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Beat the mixture well, until it is creamy."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تێکەڵەکە بە باشی تێکبدە تا کرێمدار دەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) گۆڕینی شێوەی شتێک، بەتایبەتی کانزا، بە لێدانی بە چەکووش"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The metal had been beaten flat."),
                                    ExampleSentenceKurdish(
                                        text: "کانزاکە بە لێدان پانکراوەتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ناو) یەک لێدانی شتێک، بۆ نموونە یەک ترپەی دڵ، یان یەک لێدانی لە دەھۆڵ"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I put my head on his chest but I could feel no heartbeat."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەرم خستە سەر سنگی بەڵام گوێم لە ھیچ ترپەیەکی دڵ نەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats14("en-US"),
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
                                            "They danced to the beat of the drums."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەمایان دەکرد لەگەڵ ڕیتمی دەھۆڵەکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (ناو) زنجیرەیەک لە لێدانی شتێک، بۆ نموونە لێدانی دڵ یان دەھۆڵ"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She felt the beat of his heart."),
                                    ExampleSentenceKurdish(
                                        text: "ھەستی بە لێدانی دڵی کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (ناو) ڕیتمی سەرەکی، یان یەک یەکەی ڕیتمێک، لە پارچەیەک میوزیک یان ھۆنراوە"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He tapped his foot to the beat (= rhythm) of the music."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێی دادەکوتی لەگەڵ ڕیتمی میوزیکەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ناو) ناوچەیەک کە ئەفسەرێکی پۆلیس بەردەوام بەسەریدا دەچێت و بەرپرسە بۆی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "More police officers out on the beat may help to cut crime."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پۆلیسی زیاتر لە نۆبەداریدا بن ئەگەری ھەیە تاوان کەمبکاتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٥. (ھاوەڵناو) زۆر ماندوو"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I'm beat - I'm going to bed."),
                                    ExampleSentenceKurdish(
                                        text: "زۆر ماندووم، دەچم دەنووم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBeats19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBeats19("en-US"),
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
- Verb: beat (derived forms: beaten, beat, beating, beats)
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

- Noun: beat (derived forms: beats)
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
    videoId: 'D-2799Y07Zc',
    startSeconds: 593,
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
    videoId: 'hDHTxtp_IBo',
    startSeconds: 152,
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
    videoId: 'Cp-6nuo9_4o',
    startSeconds: 694,
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
    videoId: 'h31p4OLbqSc',
    startSeconds: 1541,
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
    videoId: 'MSfjCG4V2GM',
    startSeconds: 234,
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
    videoId: '_5yaoc_mGD0',
    startSeconds: 320,
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
    videoId: '3g7TOTQSKkE',
    startSeconds: 396,
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
    videoId: 'JhpSyGcuwJw',
    startSeconds: 63,
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
    videoId: '-I6YmMAThZ8',
    startSeconds: 728,
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
    videoId: 'hFZFjoX2cGg',
    startSeconds: 301,
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
    videoId: 'rEdl2Uetpvo',
    startSeconds: 270,
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

// end beat// TODO Implement this library.
