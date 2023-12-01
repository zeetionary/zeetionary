import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// More sentences is NOT done

// Define the word "bank" and provide five example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace bank - replace EnglishEntrybank

// replace speakBank - /bæŋk/

enum TtsState { playing }

class EnglishEntrybank extends StatelessWidget {
// blank divider
  EnglishEntrybank({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBank(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bank"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks1(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I don't have much money in the bank at the end of the month."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks2(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The player's bank was dwindling after several losses."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks3(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They intend to establish a bank of information which will be accessible to the public."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks4(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The blood bank is always in need of donations."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks5(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Take old clothes and shoes to the recycling bank."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks6(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The river burst its banks after heavy rain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks7(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There were low banks of earth between the rice fields."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks8(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The driver carefully navigated the sharp bend on the banked road."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks9(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The sun disappeared behind a bank of clouds."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks10(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was faced with a huge bank of switches and buttons."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks11(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is believed to have banked £10 million in two years."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks12(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The family had banked with Bank of America for generations."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks13(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The pilot banked the plane to give passengers a better look at the mountain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks14(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The snow had banked up in the corner of the garden."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBanks15(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We banked up the fire to keep it burning all night."); // DOPSUM: CHANGE TEXT
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
                            Expanded(
                              child: Text(
                                "bank", // DOPSUM: CHANGE WORD ENTRY
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                            // Text(
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              constraints: const BoxConstraints(maxWidth: 300),
                              child: const Text(
                                "IpaUK: /bæŋk/", // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.blue,
                              ),
                              onPressed: () =>
                                  speakBank(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              constraints: const BoxConstraints(maxWidth: 300),
                              child: const Text(
                                "IpaUS: /bæŋk/", // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakBank(
                                  "en-US"), // DOPSUM: CHANGE THE WORD ABOVE
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
                  VideoIconForTab(), // 07 --- FIND: DOPSUM_WRITE_A_SENTENCE
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
کوردی: بانک، کەنار، کەناراو، موزورگ، پەراڤ، لێواری ڕووبار، بەستێن، ڕۆخ، تەپۆڵکە، زورگ، لێوار، زێوار، قەراخ، پەراوێز، (زەوی‌زار) بەستە، سەرحەد، کەوشەن، کەڵەکە، کۆما، تۆپەڵە، بارستە، لێژ، لاپێیی (ڕێگا)، بەلاداخواربوونەوەی فڕۆکە لە کاتی لادانا

١. (ناو) دامەزراوەیەک کە ژمارەیەک خزمەتگوزاری دارایی پێشکەش دەکات، بۆ نموونە ھەڵگرتن و بەقەرزدانی پارە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I don't have much money in the bank at the end of the month."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە کۆتایی مانگەکەدا پارەم زۆر لە بانک نامێنێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks1(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) لە قوماردا ئەو پارەیە کە خاوەنەکەی دەیخاتە گرەو و بەأداربووان دەتوانن بیبەنەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The player's bank was dwindling after several losses."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پارەی یاریزانەکە بەرەو کەمبوون دەچوو لەدوای ژمارەیەک دۆڕان."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks2(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) ڕێژەیەک لە شت کە بەردەستە، یان ئەو شوێنەی کە تێیدایە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They intend to establish a bank of information which will be accessible to the public."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەیانەوێت بانکێکی زانیاری درووست بکەن کە بەردەستبێت بۆ خەڵکی."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks3(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The blood bank is always in need of donations."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بانکی خوێنەکە ھەمیشە پێویستی بە بەخشینە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks4(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) شوێنێک کە شتی تێدا دادەنرێت بۆ دووبارە بەکارھێنانەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Take old clothes and shoes to the recycling bank."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "جل و پێڵاوی کۆن ببە بۆ بانکی دووبارەبەکارھێنانەوەکە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks5(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) قەراخی ڕووبارێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The river burst its banks after heavy rain."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕووبارەکە قەراخەکانی پڕکرد لەدوای بارانی خەست."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks6(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) تەپۆلکە؛ ناوچەیەکی بەرز کە لە لاکەشەکانییەوە دادەبەزێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There were low banks of earth between the rice fields."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تەپۆلکەی نزمی زەوی ھەبوو لەنێوان کێڵگە برنجەکان."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks7(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) لێژاییەکی دەستکرد لە قەراخی ڕێگایەک کە لێژبووە بەرەو ناوەوە بۆ ڕێگری لە خلیسکان لەکاتی پێچکردنەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The driver carefully navigated the sharp bend on the banked road."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "شۆفێرەکە بەوریاییەوە دەرچوو بە پێچکردنەوە تیژەکە لەسەر ڕێگا لێژبووەکە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks8(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ناو) تۆپەڵێک لە ھەور، بەفر، ھتد، بەتایبەتی ئەگەر درووست بووبێت بەھۆی باوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The sun disappeared behind a bank of clouds."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "خۆر کەوتە پشت تۆپەڵە ھەورێک."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks9(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ناو) زنجیرەیەک لە ھەمان شت، بەتایبەتی ئامێر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She was faced with a huge bank of switches and buttons."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕێژەیەکی زۆر لە سویچ و دووگمەی لەپێش بوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks10(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) پارە خستنە بانک (لەدوای قازانجکردن)"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She is believed to have banked (= been paid) £10 million in two years."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "باوەڕوایە ١٠ ملیۆن یۆرۆی قازانج کردبێت (خستبێتە بانک) لە دوو ساڵدا."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks11(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) ھەبوونی ھەژمارێک بانکێکی دیاریکراو"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The family had banked with Bank of America for generations."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خێزانەکە بۆ چەندین نەوەیە ھەژماریان لە بانکی ئەمریکا ھەیە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks12("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks12(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) (فڕۆکە) گەشتکردن لەکاتێکدا لایەک بەرزترە لە لایەکی ترە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The pilot banked the plane to give passengers a better look at the mountain."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "فڕۆکەوانەکە فڕۆکەکەی خست بە لادا بۆ ئەوەی دیمەنێکی باشتری شاخەکە بدات بە گەشتیاران."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks13("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks13(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (کردار) درووستکردنی کەڵەکەیەک لە شت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The snow had banked up in the corner of the garden."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەفرەکە کەڵەکەی کردبوو لە سووچی باخچەکە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks14("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks14(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (کردار) کەڵەکەکردنی خەڵووز، ھتد لەسەر ئاگر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We banked up the fire (= put more coal on it) to keep it burning all night."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئاگرەکەمان خۆشکردەوە بۆ ئەوەی تەواوی شەوەکە بسوتێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBanks15("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBanks15(// REPLACE: bank
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
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
- Noun: bank (derived forms: banks, banking, banked)
1. Sloping land (especially the slope beside a body of water)
"they pulled the canoe up on the bank"; "he sat on the bank of the river and watched the currents"
 
2. A financial institution that accepts deposits and channels the money into lending activities (= depository financial institution, banking concern, banking company)
"that bank holds the mortgage on my home"; "he cashed a check at the bank";
 
3. A long ridge or pile
"a huge bank of earth"
 
4. An arrangement of similar objects in a row or in tiers
"he operated a bank of switches"
 
5. A supply or stock held in reserve for future use (especially in emergencies)
 
6. The funds held by a gambling house or the dealer in some gambling games
"he tried to break the bank at Monte Carlo"
 
7. A slope in the turn of a road or track; the outside is higher than the inside in order to reduce the effects of centrifugal force (= cant, camber)
 
8. A container (usually with a slot in the top) for keeping money at home (= savings bank, coin bank, money box)
"the coin bank was empty"; "the savings bank was empty";

9. A building in which the business of banking is transacted (= bank building)
"the bank is on the corner of Nassau and Witherspoon";

10. A flight manoeuvre; aircraft tips laterally about its longitudinal axis (especially in turning)
"the plane went into a steep bank"

- Verb: bank (derived forms: banks, banking, banked)
1. Tip laterally
"the pilot had to bank the aircraft"
 
2. Enclose with a bank
"bank roads"
 
3. Do business with a bank or keep an account at a bank
"Where do you bank in this town?"
 
4. Act as the banker in a game or in gambling
 
5. Be in the banking business
 
6. Put into a bank account (= deposit)
"She banks her paycheque every month";
 
7. Cover with ashes so as to control the rate of burning
"bank a fire"
 
8. Have faith or confidence in (= count, bet, depend, swear, rely, look, calculate, reckon)
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = "63tQ7yGmsmI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 60, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  static String myVideoId = "wknSc6HRUMI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedtwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  static String myVideoId = "rUXG_p64Lzo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 9, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  static String myVideoId = "oJUv16WQuDM";

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

  YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  static String myVideoId = "rUXG_p64Lzo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 525, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedfive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  static String myVideoId = "kogxHSPXKzk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 55, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedsix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  static String myVideoId = "DCOm4osfWn8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 26, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  static String myVideoId = "DTvS9lvRxZ8";

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

  YoutubeEmbeddedeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  static String myVideoId = "zqllxbPWKNI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1028, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddednine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  static String myVideoId = "h4CyhQqAPpk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 277, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedten({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  static String myVideoId = "AAGIi62-sAU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 911, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedeleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  static String myVideoId = "Cqbleas1mmo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1094, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedtwelve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// morethan one video, only first autoplay

class YoutubeEmbeddedthirteen extends StatelessWidget {
  static String myVideoId = "dqcSk-EDrRo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 314, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdTwo = "Rxh_SVtyZqo";

  final YoutubePlayerController _controllertwo = YoutubePlayerController(
    initialVideoId: myVideoIdTwo,
    flags: const YoutubePlayerFlags(
      startAt: 2907, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdThree = "TMkoX1kfyDs";

  final YoutubePlayerController _controllerthree = YoutubePlayerController(
    initialVideoId: myVideoIdThree,
    flags: const YoutubePlayerFlags(
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdFour = "NQ65p6He22k";

  final YoutubePlayerController _controllerfour = YoutubePlayerController(
    initialVideoId: myVideoIdFour,
    flags: const YoutubePlayerFlags(
      startAt: 880, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdFive = "NNNRTCRJjqs";

  final YoutubePlayerController _controllerfive = YoutubePlayerController(
    initialVideoId: myVideoIdFive,
    flags: const YoutubePlayerFlags(
      startAt: 30, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedthirteen({super.key});

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

// end bank// TODO Implement this library.