import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybrief extends StatelessWidget {
// blank divider
  EnglishEntrybrief({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbrief(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("brief"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs1(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Mozart's life was brief."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs2(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        " He said nothing during the brief court appearance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs3(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He died after a relatively brief period of suffering."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs4(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Could you make it brief? I've got a meeting in ten minutes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs5(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Please be brief."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs6(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Section 1 of the book gives a brief history of Mexico."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs7(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was wearing a fairly brief skirt, as I recall."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs8(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It wasn't part of his brief to speak to the press."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs9(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's not part of my brief to advise on financial matters."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs10(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Will you accept this brief?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs11(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I want to see my brief."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs12(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We were given daily briefs by the general."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs13(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I expect to be kept fully briefed at all times."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs14(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The officer briefed her on what to expect."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs15(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We had already been briefed about what the job would entail."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs16(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The men have been fully briefed about the mission."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs17(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "On several occasions government officials briefed against their own ministers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs18(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbriefs1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs19(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbriefs1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs20(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbriefs2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs21(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbriefs2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs22(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbriefs2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs23(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbriefs2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs24(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbriefs2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs25(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbriefs2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs26(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbriefs2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs27(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbriefs2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs28(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbriefs2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbriefs29(String languageCode) async {
    // DOPSUM: CHANGE speakbrief
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbriefs2929"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "brief"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /briːf/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbrief("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /briːf/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbrief("en-US"),
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
کوردی: کورت (جل‌وبەرگ)، تیژپەڕ، کورت‌ماوە، کورتە، پوختە، نویشک، توند، بڕا، یەکلایی‌کەرەوە، دەستوور، فەرمان، ئەرک، چوارچێوەی دەسەڵات، دەستوورەکان، ڕاسپاردەکان، کورتەی داواکاری یان دۆسیە (ماف)، ڕاسپاردە

١. (ھاوەڵناو) بۆ ماوەیەکی کەم"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Mozart's life was brief."),
                              const ExampleSentenceKurdish(
                                  text: "ژیانی مۆزارت کورتخایەن بوو."),
                              const CustomSizedBoxForTTS(), // Define the word "brief" as
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbriefs1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbriefs1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      " He said nothing during the brief court appearance."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هیچی نەگوت لە ئامادەبوونە کورتەکەی لە دادگادا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbriefs2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbriefs2("en-US"),
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
                                      const ExampleSentenceEnglish(
                                          text:
                                              "He died after a relatively brief period of suffering."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "گیانی لەدەستدا لە دوای ماوەیەکی کەم لە ئازارکێشان."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbriefs3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbriefs3("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "Could you make it brief? I've got a meeting in ten minutes."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ئەتوانی بە کورتی بیڵێیت؟ کۆبوونەوەیەکم هەیە لە چەند خولەکێکی تردا."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbriefs4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbriefs4("en-US"),
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
                              text: "٢. (ھاوەڵناو) بەکارهێنانی وشەی کەم"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Please be brief (= say what you want to say quickly)."),
                              const ExampleSentenceKurdish(
                                  text: "تکایە بە کورتی/زوویی بیڵێ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbriefs5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbriefs5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Section 1 of the book gives a brief history of Mexico."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەشی یەکەمی کتێبەکە مێژووی کورتی مەکسیک دەخاتە بەردەست."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbriefs6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbriefs6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ھاوەڵناو) جلێکی کورت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She was wearing a fairly brief skirt, as I recall."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەپێی ئەوەی بیرم بێت تەنوورەیەکی تاڕادەیەک کورتی لەبەربوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbriefs7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbriefs7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) کۆمەڵێک ڕێنمایی کە بە کەسێک دەدرێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It wasn't part of his brief to speak to the press."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەوە بەشێک لە ڕێنمایەکانی نەبوو کە بە میدیاکان بڵێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbriefs8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbriefs8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It's not part of my brief to advise on financial matters."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەوە بەشێک لە ڕاسپاردەکانم نییە کە ڕاوێژ کە باسی ئابووریدا بدەم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbriefs9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbriefs9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کەیسێکی یاسایی کە دەدرێت بە پارێزەرێک بۆ ئەوەی لە دادگا بەرگری لێ بکات"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Will you accept this brief?"),
                              const ExampleSentenceKurdish(
                                  text: "ئەم کەیسە وەردەگریت؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbriefs10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbriefs10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) پارێزەرێک کە بەرگری لە کەیسێک دەکات"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I want to see my brief."),
                              const ExampleSentenceKurdish(
                                  text: "دەمەوێت پارێزەرەکەم ببینم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbriefs11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbriefs11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) زانیاری و ڕێنمایی کە لە کۆبوونەوەیەکدا دەدرێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We were given daily briefs by the general."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زانیاری ڕۆژانەمان پێدەدرا لەلایەن ژەنەراڵەکەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbriefs12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbriefs12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) پێدانی زانیاری بە کەسێک بۆ ئەوەی ئامادە بێت مامەڵەی لەگەڵدا بکات"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I expect to be kept fully briefed at all times."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "چاوەڕێی ئەوە دەکەم هەموو کات زانیاریم پێ بدرێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbriefs13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbriefs13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The officer briefed her on what to expect."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەفسەرەکە زانیاریی پێدا لەسەر ئەوەی چاوەڕێی چی بکات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbriefs14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbriefs14("en-US"),
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
                                      const ExampleSentenceEnglish(
                                          text:
                                              "We had already been briefed about/on what the job would entail."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "پێشوەختە زانیاریمان پێدرابوو کە کارەکە چی لەخۆدەگرێت."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbriefs15("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbriefs15("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "The men have been fully briefed about the mission."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "سەربازەکان بە تەواوی زانیارییان پێدراوە لەسەر ئەرکەکە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbriefs16("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbriefs16("en-US"),
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
                                  "٩. (کردار) ئاشکراکردنی زانیاری لەسەر کەسێک یان شتێک بە مەبەستی دژایەتی یان پەسندانی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "On several occasions government officials briefed against their own ministers."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە ژمارەیەک بۆنەدا بەرپرسانی حکومەت زانیارییان دژ بە وەزیرەکانی خۆیان ئاشکراکردووە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbriefs17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbriefs17("en-US"),
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
          DividerDefinition(),
          EnglishMeaningConst(
            text: """
- Adjective: brief (Derived forms: briefer, briefest)
1. Of short duration or distance
"a brief stay in the country"
 
2. Concise and succinct
"covered the matter in a brief statement"
 
3. (of clothing) very short (= abbreviated)
"a brief bikini";

- Noun: brief (Derived forms: briefs)
1. (law) a document stating the facts and points of law of a client's case (= legal brief)
 
2. A condensed written summary or abstract
 
3. The topic that a person, committee, or piece of research is expected to deal with or has authority to deal with (= remit [Brit], responsibility)
"they set up a group with a brief to suggest ways for strengthening family life";

- Verb: brief (Derived forms: briefed, briefing, briefs)
1. Give essential information to someone
"The reporters were briefed about the President's plan to invade"
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

  static String myVideoId = "https://youtu.be/hFZFjoX2cGg?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 675, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/khOUvmOQExc?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 273, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/QiKZYt9070U?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 480, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/-L7o6HtX8Vg?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1070, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/mY3SEMTROas?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 916, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/a9m3GD0DbPY?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 162, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/EkIbC5JqVck?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 362, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/C-qYgs_yOXA?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 10805, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/knjliFs3gR8?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 83, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/fKaZLR2C88E?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 496, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/kotoNOAvNGk?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 2950, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/1kNNVgsmMSE?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 216, // DOPSUM: CHANGE IT
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

// end WORD_WEB