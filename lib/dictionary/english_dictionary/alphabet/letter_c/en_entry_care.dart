import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycare extends StatelessWidget {
  // blank divider
  EnglishEntrycare({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcare(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("care"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares1(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Some people were badly injured and needed medical care."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares2(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We aim to continually improve the quality of patient care."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares3(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "With proper care, the plants may last for fifty years."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares4(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The children were left in the care of a neighbour."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares5(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The two girls were taken into care after their parents were killed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares6(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He had been in foster care since he was five."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares7(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Great care is needed when buying a used car."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares8(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She chose her words with care."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares9(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Transporting an atomic bomb requires great care."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares10(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I felt free from the cares of the day as soon as I left the building."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares11(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Sam looked as if he didn't have a care in the world."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares12(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I don't care if I never see him again!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares13(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He threatened to fire me, as if I cared!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares14(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She cares deeply about environmental issues."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares15(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I don't really care about how much it costs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares16(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He genuinely cares about his employees."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares17(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They care an awful lot about each other."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares18(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I've done this job more times than I care to remember."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares19(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares20(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares21(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares22(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares23(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares24(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares25(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares26(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares27(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares28(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares29(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares30(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3030"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares31(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3131"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares32(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3232"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares33(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3333"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares34(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3434"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares35(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3535"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares36(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3636"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares37(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3737"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares38(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3838"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares39(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3939"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares40(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4040"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares41(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4141"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares42(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4242"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares43(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4343"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares44(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4444"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares45(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4545"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares46(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4646"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares47(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4747"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares48(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4848"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares49(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4949"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcares50(String languageCode) async {
    // DOPSUM: CHANGE speakcare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares5050"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "care"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /keə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcare("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ker/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcare("en-US"),
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
کوردی: ئاگاداری، وریایی، ھۆشیاری، ئاگالێ‌بوون، بەدیارەوەبوون، چاوبەسەرەوەبوون، لەبەرچاوگرتن، بەتەنگەوەبوون، بیر(لابوون)، دڵ(لابوون)، لالێ‌دانەوە، سەرنج، وردبوونەوە، لێ‌خوردبوونەوە، چاودێری، دڵەڕاوکە، دڵەکورکە، نگەرانی، دڵ‌لەدوایی، بەرپرسایەتی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) چاودێریکردنی کەسێک یان شتێک و پێدانی ئەوەی پێویستیانە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Some people were badly injured and needed medical care."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەندێک کەس بە خراپی برینداربوون و پێویستیان بە چاودێریی تەندرووستی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // Define the word "care", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcares1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcares1("en-US"),
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
                                            "We aim to continually improve the quality of patient care."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئامانجمانە بە بەردەوامی کوالێتیی چاودێریی نەخۆشان باشتر بکەین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcares2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcares2("en-US"),
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
                                                    "With proper care, the plants may last for fifty years."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بە چاودێریی باشەوە، ڕووەکەکان ڕەنگە بۆ پەنجا ساڵ بژین."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcares3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcares3("en-US"),
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
                                                    "The children were left in the care of a neighbour."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "منداڵەکان لەژێر چاودێریی دراوسێیەک جێھێڵدران."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcares4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcares4("en-US"),
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
                                  "٢. (ناو) دابینکردنی ماڵ بۆ ئەو منداڵانەی کە ناتوانن لەگەڵ دایک و باوکیان بژین لە کۆمەڵگەیەکی نیشتەجێبوون یان ماڵێکی دیکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The two girls were taken into care after their parents were killed."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دوو کچەکە بردرانە کۆمەڵگەی نیشتەجێبوون لە دوای دایک و باوکیان کوژران."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcares5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcares5("en-US"),
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
                                            "He had been in foster care since he was five."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە خانەی بێ‌نەوایان بووە لە تەمەنی پێنج ساڵییەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcares6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcares6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ئەو سەرنجەی کە بە شتێکی دەدەیت بۆ ئەوەی بە باشی و بێ ھەڵە بیکەیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Great care is needed when buying a used car."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وریایی زۆر پێویستە کە ئۆتۆمبێلێکی دەستی دوو دەکڕیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcares7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcares7("en-US"),
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
                                        text: "She chose her words with care."),
                                    ExampleSentenceKurdish(
                                        text: "بە وریاییەوە وشەکانی ھەڵبژارد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcares8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcares8("en-US"),
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
                                            "Transporting an atomic bomb requires great care."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گواستنەوەی چەکێکی ئەتۆمی پێویستی بە چاودێری زۆر ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcares9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcares9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) ھەستی نیگەرانی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I felt free from the cares of the day as soon as I left the building."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەرکە بیانکەم جێھێشت ھەموو نیگەرانی ڕۆژەکەم بیرچوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcares10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcares10("en-US"),
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
                                            "Sam looked as if he didn't have a care in the world."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سام وادیاربوو کە ھیچ خەمێکی لە دونیادا نەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcares11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcares11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ھەستکردن بەوەی شتێک گرنگە و ھی ئەوەیە نیگەران بیت بۆی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I don't care (= I will not be upset) if I never see him again!"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گرنگ نییە لام ئەگەر ھەرگیز نەیبینمەوە!"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcares12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcares12("en-US"),
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
                                            "He threatened to fire me, as if I cared!"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەڕەشەی دەرکردنمی کرد وەک ئەوەی گرنگ بێت لام!"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcares13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcares13("en-US"),
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
                                                    "She cares deeply about environmental issues."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تەواو گرنگی دەدات بە کێشە ژینگەییەکان."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcares14("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcares14("en-US"),
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
                                                    "I don't really care about how much it costs."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "گرنگ نییە لام چەندە تێچووی ھەیە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcares15("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcares15("en-US"),
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
                                  "٦. (کردار) حەزکردن و خۆشویستنی کەسێک و گرنگیدان بەوەی چیان بەسەر دێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He genuinely cares about his employees."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەڕاستی گرنگی دەدات بە کارمەندەکانی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcares16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcares16("en-US"),
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
                                            "They care an awful lot about each other."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ڕادەبەر گرنگی بە یەکدی دەدەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcares17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcares17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) ھەوڵدان بۆ کردنی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I've done this job more times than I care to remember."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم کارەم زیاد لەوە کردووە کە حەوسەڵەم ھەبێت بیر خۆمی بێنمەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcares18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcares18("en-US"),
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
- Verb: care (derived forms: cares, caring, cared)
1. Feel concern or interest
"I really care about my work"; "I don't care"
 
2. Look after; give medial or emotional help (= give care)
"The nurse was caring for the wounded";
 
3. To hope, to desire or to prefer to have something, or to do something (= wish, like)
"Do you care to try this dish?";

4. Be in charge of, act on, or dispose of (= manage, deal, handle)
 
5. Be concerned with (something considered important) (= worry)
"I care about my grades";

- Noun: care (derived forms: cares)
1. The work of providing treatment for or attending to someone or something (= attention, aid, tending)
"no medical care was required";

2. Judiciousness in avoiding harm or danger (= caution, precaution, forethought)
"he handled the vase with care";

3. An anxious feeling (= concern, fear)
"care had aged him";
 
4. A cause for feeling concern
"his major care was the illness of his wife"
 
5. Attention and management implying responsibility for safety (= charge, tutelage, guardianship)
"he is in the care of a bodyguard";

6. Activity involved in maintaining something in good working order (= maintenance, upkeep)
"he wrote the manual on car care";
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
    videoId: '9R_hPxyRQUA',
    startSeconds: 154,
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
    videoId: 'j94QOMf10BI',
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'y-2mcJeK1kY',
    startSeconds: 61,
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
    videoId: 'Vtos9gw1HJI',
    startSeconds: 26,
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
    videoId: 'hFZFjoX2cGg',
    startSeconds: 986,
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
    videoId: 'khOUvmOQExc',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '_wNsZEqpKUA',
    startSeconds: 343,
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
    videoId: '47MNn4bsmSw',
    startSeconds: 2722,
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
