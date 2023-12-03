import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// More sentences is NOT done

// Define the word "base" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace base - replace EnglishEntrybase

// replace speakBase - /beɪs/

enum TtsState { playing }

class EnglishEntrybase extends StatelessWidget {
// blank divider
  EnglishEntrybase({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBase(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("base"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases1(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They decided to base the new company in New York."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases2(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The lamp has a heavy base."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases3(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He felt a sharp pain at the base of his spine."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases4(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I spend a lot of time in Britain but Paris is still my base."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases5(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After the attack, they returned to base."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases6(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These policies have a broad base of support."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases7(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This course is an opportunity to expand my knowledge base."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases8(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("All we got was base pay—we didn't reach profitability levels to award a bonus."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases9(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She used her family's history as a base for her novel."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases10(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Put some moisturizer on as a base before applying your make-up."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases11(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sodium hydroxide (NaOH) is a strong base that is used in many industrial processes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases12(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The base of the decimal system is 10, which uses the digits 0-9."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases13(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He acted from base motives."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases14(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBases1414"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases15(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBases1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases16(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBases1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBases17(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBases1717"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "base"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /beɪs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakBase("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /beɪs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakBase("en-US"),
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
کوردی: بنک، بن، خوارووی، بنکە، بێخ، بنج، بنچک، هیم، خیم، بنگە، پایە، بنەما، بنیات، بناخە، بنەڕەت، بنواشە، بنەواشە، بنکە، (کیمیا) تفت، باز، بەیس، کەرەسەی سەرەکی، مەتریاڵی بنەڕەتی، (مێعماری) ژێرکۆڵ، بن‌کۆڵ، بنک، (دار) بن، کۆلکە، (زمانەوانی) قەد، بن، ڕەگ، ڕیشە (هی وشە یان داڕشتەیێ)، فۆڕم یان وشەی گەردان‌نەکراو، (بیرکاری) بنک، بنچینە، (بەیسبۆڵ) گۆشە، سووک، نەگریس، جێی‌شەرم، ناحەز، بێ‌شەرمانە

١. (کردار) بەکارهێنانی شارێک، شارۆچکەیەک، هتد وەک شوێنی سەرەکی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They decided to base the new company in New York."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بڕیاریاندا نیویۆرک بکەنە بنکەی سەرەکی کۆمپانیا تازەکە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBases1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBases1("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) نزمترین بەشی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The lamp has a heavy base."),
                              const ExampleSentenceKurdish(
                                  text: "گڵۆپەکە بنکێکی قوورسی هەیە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBases2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBases2("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He felt a sharp pain at the base of his spine."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هەستی بە ئازارێکی توند دەکرد لە بەشی خوارەوەی بڕبڕەی پشتی."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBases3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBases3("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) شوێنی سرەکی ژیان یان کارکردن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I spend a lot of time in Britain but Paris is still my base."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کاتێکی زۆر لە پاریس بەسەر دەبەم، بەڵام هێشتا پاریس هەوارگەی سەرەکیمە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBases4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBases4("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) بنکەی سەربازی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "After the attack, they returned to base."),
                              const ExampleSentenceKurdish(
                                  text: "لەدوای هێرشەکە گەڕانەوە بنکەکە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBases5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBases5("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) ئەو کەس و چالاکییانەی کەسێک لێیانەوە هێز و پشتیوانی و پارە وەردەگرێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "These policies have a broad base of support."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەم سیاسەتانە بناغەیەکی فراوانی پشتیوانیان هەیە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBases6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBases6("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "This course is an opportunity to expand my knowledge base."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەم کۆرسە هەلێکی بۆ فراوانکردنی بناغەی زانیاریم."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBases7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBases7("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) ئەو مووچەیەی کە وەریدەگری پێش ئەوەی هیچی تری بۆ زیادبکرێت بۆ (نموونە بەخشیش)"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "All we got was base pay—we didn't reach profitability levels to award a bonus."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هەموو ئەوەی مووچەکەی خۆمان بوو، نەگەشتین بەو ئاستەی قازانج کە بەخشیش بدرێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBases8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBases8("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) بیرۆکەیەک، زانیارییەک، یان دۆخێک کە وەک سەرچاوە بەکاردێت بۆ گەشەپێدانی شتێکی تر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She used her family's history as a base for her novel."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "مێژووی خێزانەکەی وەک سەرچاوە و ئیلهام بۆ ڕۆمانەکەی بەکارهێنا."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBases9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBases9("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ناو) یەکەم بەشی شتێک کە دواتر شتی تری بۆ زیاددەکرێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Put some moisturizer on as a base before applying your make-up."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هەندێک کرێمی شێدارکەرەوە بەکاربێنە وەک بناغە پێش ئەوەی مەیکەپەکەت بکەیت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBases10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBases10("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ناو) مادەیەکی کیمیایی کە دەتوانێت لەگەڵ ئەسید (ترشەڵۆک) یەکبگرێت بۆ درووستکردنی خوێ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Sodium hydroxide (NaOH) is a strong base that is used in many industrial processes."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هایدرۆکسایدی سۆدیۆم تفتێکی بەهێزە کە لە زۆر پڕۆسەی پیشەسازیدا بەکاردێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBases11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBases11("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ناو) لە بیرکاریدا بریتییە لە ژمارەیەک کە سیستەمێکی ژماردن و دەربڕینی ژمارەی لەسەر بنیاتنراوە بۆ نموونە ژمارە لە سیستەمی دەیان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The base of the decimal system is 10, which uses the digits 0-9."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بنچینەی سیستەمی دەیان بریتییە لە ١٠ و ژمارەکانی ١-٩ بەکاردێنێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBases12("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBases12("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (هاوەڵناو) کەسێک کە هیچ بەها و ئەخلاقی نییە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He acted from base motives."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بە پاڵنەری کەسی هەنگاوی نا (بۆ بەرژەوەندی خۆی)."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBases13("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBases13("en-US"),
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
- Verb: base (Derived forms: basing, bases, based)
1. Use as a basis for; found on (= establish, ground, found)
"base a claim on some observation";
 
2. Situate as a centre of operations
"we will base this project in the new lab"
 
3. Use (purified cocaine) by burning it and inhaling the fumes (= free-base)

- Adjective: base (Derived forms: basest, baser)
1. Serving as or forming a base (= basal)
"the painter applied a base coat followed by two finishing coats";
 
2. (used of metals) consisting of or alloyed with inferior metal
"base coins of aluminium"; "a base metal"
 
3. Not adhering to ethical or moral principles (= immoral)
"base and unpatriotic motives"; "a base, degrading way of life";
 
4. Having or showing an ignoble lack of honour or morality (= mean, meanspirited)
"that liberal obedience without which your army would be a base rabble";
 
5. Debased; not genuine
"an attempt to eliminate the base coinage"
 
6. [archaic] Of low birth or station (= baseborn, humble, lowly)
"base wretches with dirty faces";
 
7. [archaic] Illegitimate (= baseborn [archaic])

- Noun: base (Derived forms: bases)
1. The bottom or lowest part
"the base of the mountain"
 
2. Lowest support of a structure (= foundation, fundament, foot, groundwork, substructure, understructure)
"it was built on a base of solid rock";
 
3. A flat bottom on which something is intended to sit
"a tub should sit on its own base"
 
4. (military) installation from which a military force initiates operations (= base of operations)
"the attack wiped out our forward bases";
 
5. A place that the runner must touch before scoring (= bag)
"he scrambled to get back to the base";
 
6. (anatomy) the part of an organ nearest its point of attachment
"the base of the skull"
 
7. A lower limit (= floor)
"the government established a wage base";
 
8. The fundamental assumptions from which something is begun, developed, calculated or explained (= basis, foundation, fundament, groundwork, cornerstone)
"the whole argument rested on a base of conjecture";
 
9. A support or foundation (= pedestal, stand)
"the base of the lamp";
 
10. A phosphoric ester of a nucleoside; the basic structural unit of nucleic acids (DNA or RNA) (= nucleotide)
 
11. Any of various water-soluble compounds capable of turning litmus blue and reacting with an acid to form a salt and water (= alkali)
"bases include oxides and hydroxides of metals and ammonia";
 
12. The bottom side of a geometric figure from which the altitude can be constructed
"the base of the triangle"
 
13. The most important or necessary part of something (= basis)
"the base of this drink is orange juice";
 
14. (numeration system) the positive integer that is equivalent to one in the next higher counting place (= radix)
"10 is the base of the decimal system";
 
15. The place where you are stationed and from which missions start and end (= home)
 
16. (linguistics) the form of a word after all affixes are removed (= root, root word, stem, theme, radical)
"thematic vowels are part of the base";
 
17. The stock of basic facilities and capital equipment needed for the functioning of a country or area (= infrastructure)
"the industrial base of Japan";
 
18. The principal ingredient of a mixture
"glycerinated gelatin is used as a base for many ointments"; "he told the painter that he wanted a yellow base with just a hint of green"; "everything she cooked seemed to have rice as the base"
 
18. (electronics) the part of a transistor that separates the emitter from the collector
 
20. (usually plural) the office that serves as the administrative centre of an enterprise (= headquarters, central office, main office, home office, home base)
"many companies have their home base in New York";
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

  static String myVideoId = "https://youtu.be/xvyj35Pd9C4?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 469, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/ieQQMxW9A6E?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 9473, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/MnExgQ81fhU?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 522, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/MGO4_8YRKro?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 22, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/poHTA94-BeY?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 275, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/zqllxbPWKNI?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 235, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/544DTGHIBM0?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 297, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/s3B-qp3U5G0?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 298, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/tsxmyL7TUJg?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 141, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/qq9iRMrubzg?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 161, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/vp-8-WXeq-E?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 212, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/jrje73EyKag?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 39, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  YoutubeEmbeddedthirteen({super.key});

  static String myVideoId = "https://youtu.be/oD9BaNAH-eE?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 2351, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdTwo = "https://youtu.be/a9m3GD0DbPY?t=";

  final YoutubePlayerController _controllertwo = YoutubePlayerController(
    initialVideoId: myVideoIdTwo,
    flags: const YoutubePlayerFlags(
      startAt: 609, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdThree = "https://youtu.be/pFEB0chiuJA?t=";

  final YoutubePlayerController _controllerthree = YoutubePlayerController(
    initialVideoId: myVideoIdThree,
    flags: const YoutubePlayerFlags(
      startAt: 118, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdFour = "https://youtu.be/qvNXPn4ptJM?t=";

  final YoutubePlayerController _controllerfour = YoutubePlayerController(
    initialVideoId: myVideoIdFour,
    flags: const YoutubePlayerFlags(
      startAt: 223, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdFive = "https://youtu.be/_-cGBYAt2Fw?t=";

  final YoutubePlayerController _controllerfive = YoutubePlayerController(
    initialVideoId: myVideoIdFive,
    flags: const YoutubePlayerFlags(
      startAt: 191, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            YouTubeContainerDesign(controller: _controller),
            YouTubeContainerDesign(controller: _controllertwo),
            YouTubeContainerDesign(controller: _controllerthree),
            YouTubeContainerDesign(controller: _controllerfour),
            YouTubeContainerDesign(controller: _controllerfive),
          ],
        ),
      ),
    );
  }
}

// end base// TODO Implement this library.
