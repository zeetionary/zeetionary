import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "better" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace better - replace EnglishEntrybetter

// replace speakBetter - /ˈbetə(r)/

enum TtsState { playing }

class EnglishEntrybetter extends StatelessWidget {
// blank divider
  EnglishEntrybetter({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBetter(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("better"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters1(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We're hoping for better weather tomorrow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters2(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He is in a much better mood than usual."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters3(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You'd be better going by bus."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters4(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It would be better for him to talk to his parents about his problems."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters5(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters55"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters6(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's far better at science than her brother."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters7(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's a lot better today."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters8(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His leg was getting better."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters9(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Don't go back to work until you are better."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters10(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She sings much better than I do."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters11(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You'll like her when you know her better."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters12(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Researchers are hoping to better understand the role of this protein in human disease."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters13(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The money could be better spent on more urgent cases."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters14(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I expected better of him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters15(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He ran the 100 metres in 9.91 seconds, and I have not seen better this year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters16(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You shouldn't be so mean to your mother - she deserves better."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters17(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As children, we were taught not to argue with our elders and betters."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters18(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their success that season could not be bettered."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters19(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Thousands of Victorian workers joined educational associations in an attempt to better themselves."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters20(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters21(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters22(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters23(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters24(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters25(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters26(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters27(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters28(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters29(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBetters30(String languageCode) async {
    // DOPSUM: CHANGE speakBetter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBetters3030"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 15, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "better"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbetə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakBetter("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbetər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakBetter("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 15
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  VideoIconForTab(), // 13
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
کوردی: باش‌تر، چاتر، چاک‌تر، زۆرتر، زۆرینەی، زۆربەی، پتر، زیاتر، زێتر، گەورەتر، گرێوکار، گرێوباز، مەرج‌بەست، (شت یان مرۆ) باشتر، چاکتر، سەرتری، بەسەرداشکانەوە

١. (ھاوەڵناو) باشتر لە شتێکی تر، شتێک کە هێندەی شتێکی تر خراپ نییە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We're hoping for better weather tomorrow."),
                              const ExampleSentenceKurdish(
                                  text: "هیوا بۆ کەشوهەوایەکی باشتر دەخوازین."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters1("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He is in a much better mood than usual."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە حەوسەلەیەکی باشترە وەک لەوەی لە کاتی ئاسایی تێیدایە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters2("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) گونجاوتر یان شیاوتر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "You'd be better going by bus."),
                              const ExampleSentenceKurdish(
                                  text: "باشتر دەبێت بە پاس بچیت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters3("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It would be better for him to talk to his parents about his problems."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "باشتر دەبێت قسە لەگەڵ دایک و باوکی بکات دەربارەی کێشەکانی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters4("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) بە تواناتر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She's far better at science than her brother."),
                              const ExampleSentenceKurdish(
                                  text: "لە زانستدا زۆر باشترە لە براکەی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters6("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵناو) لە دۆخێکی تەندرووستی باشتر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She's a lot better today."),
                              const ExampleSentenceKurdish(
                                  text: "ئەمڕۆ زۆر باشترە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters7("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "His leg was getting better."),
                              const ExampleSentenceKurdish(
                                  text: "لاقی باشتر دەبوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters8("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) بە تەواوی چاکبووەوە لە نەخۆشییەک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Don't go back to work until you are better."),
                              const ExampleSentenceKurdish(
                                  text: "مەچۆوە بۆ کار تا باش دەبیتەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters9("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵکار) بەشێوەیەکی باشتر؛ بەشێوەیەک کە وەک شتێکی تر خراپ نییە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She sings much better than I do."),
                              const ExampleSentenceKurdish(
                                  text: "لە من باشتر گۆرانی دەڵێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters10("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵکار) زیاتر؛ تا ئاستێکی زۆرتر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "You'll like her when you know her better."),
                              const ExampleSentenceKurdish(
                                  text: "خۆشتدەوێت کە باشتر بیناسی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters11("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Researchers are hoping to better understand the role of this protein in human disease."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "توێژەران هیوا دەخوازن باشتر تێبگەن لە ئەرکی ئەم پڕۆتینە لە نەخۆشی مرۆڤدا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters12("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters12("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ھاوەڵکار) بەکاردێت بۆ وتنی ئەوەی شتێک گونجاوتر یان شیاوتر دەبێت بۆ کردن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The money could be better spent on more urgent cases."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پارەکە دەکرێت خەرج بکرێت لەسەر بابەتی زەروورتر."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters13("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters13("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ناو) شتێکی باشتر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I expected better of him (= I thought he would have behaved better)."),
                              const ExampleSentenceKurdish(
                                  text: "زیاتر لەوەم لێ چاوەڕێ دەکرد."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters14("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters14("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He ran the 100 metres in 9.91 seconds, and I have not seen better (= a faster result) this year."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "١٠٠ مەتری لە ٩,٩١ چرکەدا بڕی و و باشتر لەوەم نەدیوە ئەمساڵ."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters15("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters15("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "You shouldn't be so mean to your mother - she deserves better."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نابێت وەها توند بیت لەگەڵ دایکت، شایەنی باشتر لەوەیە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters16("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters16("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ناو) ئەو کەسانەی کە لە تۆ زیرەکتر یان گرنگترن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "As children, we were taught not to argue with our elders and betters."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "وەک منداڵ فێردەکرێین دەمەدەم نەکەین لەگەڵ گەورەکان و کەسانی باڵاتر لە خۆمان."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters17("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters17("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) باشتربوون لە کەسێک یان شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Their success that season could not be bettered."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سەرکەوتنیان لەو وەرزەدا نەدەتوانرا ببەزێندرێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters18("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters18("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) باشترکردنی دۆخی کۆمەڵایەتیت لە ڕێگەی کارێکی باشتر، خوێندن، هتد"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Thousands of Victorian workers joined educational associations in an attempt to better themselves."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هەزاران کرێکاری سەردەمی شاژن ڤیکتۆریا پەیوەندییان بە کۆڕە پەروەردەییەکانەوە کرد بۆ باشترکردنی دۆخی کۆمەڵایەتییان."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBetters19("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBetters19("en-US"),
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
          DividerDefinition(),
          EnglishMeaningConst(
            text: """
- Adjective: better
1. (comparative and superlative of 'well') wiser or more advantageous and hence advisable (= best)
"it would be better to speak to him";
 
2. (comparative of 'good') superior to another (of the same class or set or kind) in excellence or quality or desirability or suitability; more highly skilled than another
"You're a better man than I am, Gunga Din"; "a better coat"; "a better type of car"; "a suit with a better fit"; "a better chance of success"; "produced a better mousetrap"; "she's better in maths than in history"
 
3. (comparative of 'good') changed for the better in health or fitness
"her health is better now"; "I feel better"
 
4. More than half
"argued for the better part of an hour"

- Adverb: better
1. Comparative of 'well'; in a better or more excellent manner or more advantageously or attractively or to a greater degree etc.
"She had never sung better"; "a deed better left undone"; "better suited to the job"
 
2. From a position of superiority or authority (= best)
"I know better.";

- Noun: better (derived forms: betters)
1. Something superior in quality, condition or effect
"a change for the better"
 
2. Someone who bets (= bettor, wagerer, punter)
 
3. A superior person having claim to precedence
"the common man has been kept in his place by his betters"
 
4. The superior one of two alternatives
"chose the better of the two"

- Verb: better (derived forms: betters, bettering, bettered)
1. Surpass in excellence (= break)
"She bettered her own record";
 
2. To make better (= improve, amend, ameliorate, meliorate, mend)
 
3. Get better (= improve, ameliorate, meliorate)
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

  static String myVideoId = "3YltYCrPZos";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 34, // DOPSUM: CHANGE IT
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

  static String myVideoId = "hFZFjoX2cGg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 568, // DOPSUM: CHANGE IT
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

  static String myVideoId = "VrKW58MS12g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 757, // DOPSUM: CHANGE IT
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

  static String myVideoId = "hS2x1zl4rn0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 504, // DOPSUM: CHANGE IT
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

  static String myVideoId = "_spuxXnul0U";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 376, // DOPSUM: CHANGE IT
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

  static String myVideoId = "xVQxvthAcLU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1634, // DOPSUM: CHANGE IT
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

  static String myVideoId = "p3O6bKdPLbw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 780, // DOPSUM: CHANGE IT
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

  static String myVideoId = "mvK0qJdg2Nc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 633, // DOPSUM: CHANGE IT
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

  static String myVideoId = "5pAnk9MKHzo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 321, // DOPSUM: CHANGE IT
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

  static String myVideoId = "vCKy1-nnZ3U";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 74, // DOPSUM: CHANGE IT
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

  static String myVideoId = "7PuWFxmSwuU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 880, // DOPSUM: CHANGE IT
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

  static String myVideoId = "Hw1X5oFPgro";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 564, // DOPSUM: CHANGE IT
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

  static String myVideoId = "C9JaUR9MXGs";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 72, // DOPSUM: CHANGE IT
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

// end better// TODO Implement this library.
