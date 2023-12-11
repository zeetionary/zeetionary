import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "before" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace before - replace EnglishEntrybefore

// replace speakBefore - /bɪˈfɔː(r)/

enum TtsState { playing }

class EnglishEntrybefore extends StatelessWidget {
// blank divider
  EnglishEntrybefore({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBefore(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("before"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores1(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The year before last he won a gold medal, and the year before that he won a silver."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores2(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's lived there since before the war."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores3(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He arrived before me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores4(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She became a lawyer as her father had before her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores5(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Your name is before mine on the list."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores6(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He puts his work before everything."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores7(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They knelt before the throne."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores8(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Before you is a list of the points we have to discuss."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores9(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The task before us is a daunting one."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores10(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The whole summer lay before me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores11(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was brought before the judge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores12(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She said it before witnesses."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores13(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They retreated before the enemy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores14(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do it before you forget."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores15(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Did she leave a message before she went?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores16(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Before I made a decision, I thought carefully about it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores17(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It may be many years before the situation improves."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores18(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was some time before I realized the truth."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores19(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Put that away before it gets broken."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores20(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'd die before I apologized!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores21(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You should have told me so before."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores22(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It had been fine the week before."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores23(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I think we've met before."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores24(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBefores2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores25(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBefores2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores26(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBefores2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores27(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBefores2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores28(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBefores2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores29(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBefores2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBefores30(String languageCode) async {
    // DOPSUM: CHANGE speakBefore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBefores3030"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 22, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "before"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɪˈfɔː(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakBefore("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɪˈfɔːr/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakBefore("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 22
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
                  VideoIconForTab(), // 18
                  VideoIconForTab(), // 19
                  VideoIconForTab(), // 20
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
                          const DefinitionKurdish(text: """
کوردی: پێشتر، پێشوو، پێشەکی، لەوەپێش، لەپێش، بەر، لە پێشاندا، لەپێشا، پێشدا، بەرلە، لەمەوبەر، زووتر، پێش لەوەی کە، پێش ئەوەی کە، بەر لەوەی کە، پێشتر لە، لە پێشتر، پێش، لە بەردەم، باشتر لە، ھەتا، تا

١. (ئامراز) پێش کەسێک یان شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The year before last he won a gold medal, and the year before that he won a silver."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ساڵی پێش ساڵی پار مەدالیای ئاڵتوونی بردەوە، و ساڵی پێش ئەوەش دانەیەکی زیوی بردەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores1("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She's lived there since before the war."),
                              const ExampleSentenceKurdish(
                                  text: "لەوێ ژیاوە لە پێش جەنگەکەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores2("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He arrived before me."),
                              const ExampleSentenceKurdish(
                                  text: "پێش من گەشت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores3("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She became a lawyer as her father had before her."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بوو بە پارێزەر ھەروەک چۆن باوکی پێشووتر بووبوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores4("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ئامراز) بەکاردێت بۆ وتنی ئەوەی کەسێک یان شتێک لە پێش کەسێک یان شتێکە لە ڕیزبەندییەک یان ڕێکخستنێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Your name is before mine on the list."),
                              const ExampleSentenceKurdish(
                                  text: "ناوت لە پێش ھی منە لە لیستەکەدا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores5("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He puts his work before everything (= regards it as more important than anything else)."),
                              const ExampleSentenceKurdish(
                                  text: "کارەکەی لە پێش ھەموو شت دادەنا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores6("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ئامراز) بەکاردێت بۆ وتنی ئەوەی کەسێک یان شتێک لە جێگەیەکە کە لە پێش کەسێک یان شتێکە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "They knelt before the throne."),
                              const ExampleSentenceKurdish(
                                  text: "لە پێش تەختی شاھانە چەمانەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores7("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Before you is a list of the points we have to discuss."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەوەی لە پێشتە لیستێکی ئەو خاڵانەیە کە ھەمانە بۆ باسکردن (دەبێت باسی بکەین)."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores8("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ئامراز) بەکاردێت بۆ وتنی ئەوەی شتێک ڕووبەڕووی کەسێک دەبێتەوە لە داھاتوودا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The task before us is a daunting one."),
                              const ExampleSentenceKurdish(
                                  text: "ئەو ئەرکەی لە پێشمانە دەمترسێنێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores9("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The whole summer lay before me."),
                              const ExampleSentenceKurdish(
                                  text: "تەواوی ھاوین لە پێشم چاوەڕێیە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores10("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ئامراز) لەپێش کەسێکدا کە گوێ دەگرێت یان تەماشا دەکات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He was brought before the judge."),
                              const ExampleSentenceKurdish(
                                  text: "ھێنرایە پێش دادوەر."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores11("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She said it before witnesses."),
                              const ExampleSentenceKurdish(
                                  text: "لەپێش شایەتەکان وتی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores12("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores12("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ئامراز) بۆ وتنی ئەوەی چۆن کەسێک ڕەفتاری کرد کە ڕووبەڕووی کەسێک یان شتێک دەبێتەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "They retreated before the enemy."),
                              const ExampleSentenceKurdish(
                                  text: "لە پێش دووژمن کشانەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores13("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores13("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (لێکدەر) پێش کاتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Do it before you forget."),
                              const ExampleSentenceKurdish(
                                  text: "بیکە پێش ئەوەی بیرت بچێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores14("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores14("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Did she leave a message before she went?"),
                              const ExampleSentenceKurdish(
                                  text: "ھیچ پەیامێکی ھەبوو پێش ئەوەی بچێت؟"),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores15("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores15("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Before I made a decision, I thought carefully about it."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پێش ئەوەی بڕیار بدەم، بە وریاییەوە بیرم لێکردەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores16("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores16("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (لێکدەر) تا کاتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It may be many years before the situation improves."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕەنگە ساڵانێکی زۆری پێ بچێت تا دۆخەکە باش ببێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores17("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores17("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It was some time before I realized the truth."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەندێک کاتی پێچوو تا بە ڕاستییەکەم زانی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores18("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores18("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (لێکدەر) بۆ ئاگادارکردنەوە یان ھەڕەشە لە کەسێک کە شتێکی خراپ ڕوودەدات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Put that away before it gets broken."),
                              const ExampleSentenceKurdish(
                                  text: "دووری بخەوە ئەگەرنا دەشکێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores19("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores19("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (لێکدەر) لە جیاتی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I'd die before I apologized!"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەمرم لە جیاتی ئەوەی داوای لێبووردن بکەم (مردن باشترە لە داوای لێبووردن)!"),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores20("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores20("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ھاوەڵکار) پێشتر؛ پێش کاتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "You should have told me so before."),
                              const ExampleSentenceKurdish(
                                  text: "دەبوو ئەوەت پێشتر پێ بوتمایە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores21("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores21("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It had been fine the week before (= the previous week)."),
                              const ExampleSentenceKurdish(
                                  text: "ھەفتەی پێشوو کێشەی نەبوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores22("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores22("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I think we've met before."),
                              const ExampleSentenceKurdish(
                                  text: "پێم‌وایە پێشووتر یەکمان دیوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBefores23("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBefores23("en-US"),
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
                    YoutubeEmbeddedfourteen(),
                    YoutubeEmbeddedfifteen(),
                    YoutubeEmbeddedsixteen(),
                    YoutubeEmbeddedseventeen(),
                    YoutubeEmbeddedeighteen(),
                    YoutubeEmbeddednineteen(),
                    YoutubeEmbeddedtwenty(),
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
- Adverb: before
1. Earlier in time; previously (= earlier)
"I had known her before"; "as I said before"; "he called me the day before but your call had come even earlier";
 
2. At or in the front (= ahead, in front)
"with the cross of Jesus marching on before";

- Preposition: before
1. Earlier than in time
"before 2 o'clock"
 
2. In front of; in sight of
"before the judge"

- Conjunction: before
1. Earlier in time than (= ere [literary])
"see my son before I die";
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

  static String myVideoId = "Y2T_rIZ4Pho";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 48, // DOPSUM: CHANGE IT
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
      startAt: 483, // DOPSUM: CHANGE IT
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

  static String myVideoId = "a_TSR_v07m0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 179, // DOPSUM: CHANGE IT
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

  static String myVideoId = "VrKW58MS12g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 37, // DOPSUM: CHANGE IT
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

  static String myVideoId = "DTvS9lvRxZ8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 118, // DOPSUM: CHANGE IT
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

  static String myVideoId = "DPZzrlFCD_I";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 21, // DOPSUM: CHANGE IT
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

  static String myVideoId = "hS2x1zl4rn0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 435, // DOPSUM: CHANGE IT
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

  static String myVideoId = "FHJ3CMWnVxY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 8, // DOPSUM: CHANGE IT
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

  static String myVideoId = "R_fZjGm2OrM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 414, // DOPSUM: CHANGE IT
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

  static String myVideoId = "HDntl7yzzVI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 54, // DOPSUM: CHANGE IT
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

  static String myVideoId = "MGO4_8YRKro";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 190, // DOPSUM: CHANGE IT
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

  static String myVideoId = "_GFkHA5EZdE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 5, // DOPSUM: CHANGE IT
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

  static String myVideoId = "s3B-qp3U5G0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 129, // DOPSUM: CHANGE IT
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

  static String myVideoId = "rNg17MVDsFk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 23, // DOPSUM: CHANGE IT
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

  static String myVideoId = "Gw38xQTbX6E";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 821, // DOPSUM: CHANGE IT
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

  static String myVideoId = "Fq89qTu9SCQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 145, // DOPSUM: CHANGE IT
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

  static String myVideoId = "ZmkHQ9zNm8k";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 18, // DOPSUM: CHANGE IT
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

  static String myVideoId = "2bZjBHE5Opk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 241, // DOPSUM: CHANGE IT
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

  static String myVideoId = "0oLWuS4ZI80";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 21, // DOPSUM: CHANGE IT
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

  static String myVideoId = "fNh_GyRbJDA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 259, // DOPSUM: CHANGE IT
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

// end before// TODO Implement this library.
