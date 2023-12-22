import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "bond" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace bond - /bɒnd/

enum TtsState { playing }

class EnglishEntrybond extends StatelessWidget {
// blank divider
  EnglishEntrybond({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbond(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bond"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds1(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A bond of friendship had been forged between them."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds2(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The agreement strengthened the bonds between the two countries."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds3(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The students formed strong bonds with each other."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds4(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She felt a bond of affection for the other girls."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds5(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The bonds were redeemed in 2002."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds6(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was released on £5 000 bond."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds7(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We had to take out a second bond on the property."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds8(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Loose his bonds and set him free."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds9(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We entered into a solemn bond."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds10(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When the glue has set, the bond formed is watertight."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds11(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Carbon atoms can form bonds not only with themselves but with the atoms of oxygen and nitrogen."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds12(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This new glue bonds a variety of surfaces in seconds."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds13(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It cannot be used to bond wood to metal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds14(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The atoms bond together to form a molecule."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds15(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Mothers who are depressed sometimes fail to bond with their children."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds16(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbonds1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds17(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbonds1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds18(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbonds1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds19(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbonds1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds20(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbonds2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds21(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbonds2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds22(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbonds2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbonds23(String languageCode) async {
    // DOPSUM: CHANGE speakbond
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbonds2323"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "bond"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɒnd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbond("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɑːnd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbond("en-US"),
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
کوردی: بەڵێنی، خۆبەستەیی، پێبەندی، بەندێتی، دەربەست‌بوون، پەیگرتن، خۆبەستنەوە، بڕیار، بڕیارنامە، گرێبەست، بەڵێن‌نامە، گفت، سۆز، پەیمان، پێوەندی، تێکەڵی، گرێدایی، پێکەوەنووسان، یەک‌گرتن، پێکەوەبەستراوی، دێدی‌وبۆدی، کۆت‌وبەند، کۆت‌وزنجیر، پێوەند، کۆت‌وبەند، (کیمیا) بەند، پەیوەستی، گل‌دانەوەی گومڕکی، (بیناسازی) ڕەگ، چین

١. (ناو) شتێک کە پەیوەندی یان هاوڕێیەتی درووست دەکات لە نێوان خەڵکی و گرووپدا، بۆ نموونە خۆشەویستی یان بیرۆکە و ئەزموون"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A bond of friendship had been forged between them."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پەیوەندییەکی خۆشەویستی درووست بووە لە نێوانیان."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbonds1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbonds1("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The agreement strengthened the bonds between the two countries."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕێککەوتنەکە پەیوەندی نێوان دوو وڵاتەکەی بەهێزکرد."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbonds2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbonds2("en-US"),
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
                                              "The students formed strong bonds with each other."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "قوتابییان پەیوەندیی بەهێزیان لەگەڵ یەکدی درووستکرد."),
                                      const CustomSizedBoxForTTS(),
                                      CustomIconButtonBritish(
                                        onPressed: () => speakbonds3("en-GB"),
                                      ),
                                      CustomIconButtonAmerican(
                                        onPressed: () => speakbonds3("en-US"),
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "She felt a bond of affection for the other girls."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "هەستی بە وابەستەیەکی سۆزدارانە دەکرد بەرامبەر بە کچانی دیکە."),
                                      const CustomSizedBoxForTTS(),
                                      CustomIconButtonBritish(
                                        onPressed: () => speakbonds4("en-GB"),
                                      ),
                                      CustomIconButtonAmerican(
                                        onPressed: () => speakbonds4("en-US"),
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
                                  "٢. (ناو) ڕێککەوتنێک لەلایەنی حکومەتێک یان بانکێکەوە کە سووت پێبدات بۆ ئەو پارەیەی بە قەرز پێیان دەدەیت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The bonds were redeemed in 2002."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "گرێبەستەکان لە ساڵی ٢٠٠٢ پاککرانەوە (قەرزەکان درانەوە)."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbonds5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbonds5("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) بڕێک پارە کە وەک کەفالەت دەدرێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He was released on £5 000 bond."),
                              const ExampleSentenceKurdish(
                                  text: "بە کەفالەتی ٥٠٠٠ پاوەند ئازادکرا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbonds6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbonds6("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) بڕێک ڕێککەوتنێکی یاسایی کە بەپێی ئەوە بانکێک پارەت پێدەدات بۆ بەکارهێنان و بەدرێژایی چەندین ساڵ دەیدەیتەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We had to take out a second bond on the property."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پێویست بوو بیمەی دووەم وەربگرین بە دانانی زەوییەکە وەک زەمانەت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbonds7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbonds7("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) حەبل یان زنجیر کە بەندکراوێکی پێوە بەستراوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Loose his bonds and set him free."),
                              const ExampleSentenceKurdish(
                                  text: "کۆتەکەی شل بکەوە و ئازادی بکە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbonds8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbonds8("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) بەڵێن یان ڕێککەوتنێکی یاسایی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We entered into a solemn bond."),
                              const ExampleSentenceKurdish(
                                  text: "چووینە ناو ڕێککەوتنێکی فەرمییەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbonds9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbonds9("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) شێوازی پێکەوەبەسترانی دوو شت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "When the glue has set, the bond formed is watertight."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کە چەسپەکە جێی خۆی دەگرێت، شوێنی یەکگرتنەکە ئاو ناکێشێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbonds10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbonds10("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) هێزی پێکەوەلکێنەری ئەتۆمەکان لە ئاوێتەیەکی کیمیاییدا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Carbon atoms can form bonds not only with themselves but with the atoms of oxygen and nitrogen."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەتۆمەکانی کاربۆن دەتوانن بۆند درووست بکەن نەک تەنها لەگەڵ خۆیان بەڵکو لەگەڵ ئەتۆمەکانی ئۆکسجین و نایترۆجین."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbonds11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbonds11("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) پێکەوەلکاندنی دوو شت بە توندی پێکەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "This new glue bonds a variety of surfaces in seconds."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەم چەسپە تازەیە ژمارەیەکی جیاواز لە ڕووکەش پێکەوەدەبەستێت لە چەند چرکەیەکدا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbonds12("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbonds12("en-US"),
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
                                              "It cannot be used to bond wood to metal."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ناتوانرێت بەکاربهێندرێت بۆ لکاندنی تەختە بە ئاسنەوە."),
                                      const CustomSizedBoxForTTS(),
                                      CustomIconButtonBritish(
                                        onPressed: () => speakbonds13("en-GB"),
                                      ),
                                      CustomIconButtonAmerican(
                                        onPressed: () => speakbonds13("en-US"),
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "The atoms bond together to form a molecule."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ئەتۆمەکان یەکدەگرن بۆ درووستکردنی ئاوێتە."),
                                      const CustomSizedBoxForTTS(),
                                      CustomIconButtonBritish(
                                        onPressed: () => speakbonds14("en-GB"),
                                      ),
                                      CustomIconButtonAmerican(
                                        onPressed: () => speakbonds14("en-US"),
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
                                  "١٠. (کردار) درووستکردن یان پەرەپێدانی پەیوەندی لەسەر بنەمای متمانە لەگەڵ کەسێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Mothers who are depressed sometimes fail to bond with their children."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەو دایکانەی کە خەمۆکییان هەیە هەندێک جار ناتوانن لەگەڵ منداڵەکانیان ئاوێتە بن."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbonds15("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbonds15("en-US"),
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
- Noun: bond (Derived forms: bonds)
1. An electrical force linking atoms (= chemical bond)
 
2. A certificate of debt (usually interest-bearing or discounted) that is issued by a government or corporation in order to raise money; the issuer is required to pay a fixed sum annually until maturity and then a fixed sum to repay the principal (= bond certificate)
 
3. A connection based on kinship, marriage or common interest (= alliance)
"their friendship constitutes a powerful bond between them";
 
4. (criminal law) money that must be forfeited by the bondsman if an accused person fails to appear in court for trial (= bail, bail bond)
"a £10,000 bond was furnished by an alderman"; "the judge set bail bond at £10,000";

5. A restraint that confines or restricts freedom (especially something used to tie down or restrain a prisoner) (= shackle, hamper, trammel)
 
6. A connection that fastens things together (= attachment)
 
7. A superior quality of strong durable white writing paper; originally made for printing documents (= bond paper)
 
8. The property of sticking together (as of glue and wood) or the joining of surfaces of different composition (= adhesiveness, adhesion, adherence)
"the mutual bond of cells";

9. (construction) a specific pattern of bricklaying

- Verb: bond (Derived forms: bonded, bonding, bonds)
1. Remain stuck to; keep in place (= adhere, hold fast, bind, stick, stick to)
"Will this wallpaper bond to the wall?";
 
2. Create social or emotional ties (= bind, tie, attach)
"The grandparents want to bond with the child";
 
3. Issue bonds on
 
4. Bring together in a common cause or emotion (= draw together)
 
5. (chemistry) to form a chemical bond with

- Noun: Bond
1. United States civil rights leader who was elected to the legislature in Georgia but was barred from taking his seat because he opposed the Vietnam War (born 1940) (= Julian Bond)
 
2. British secret operative 007 in novels by Ian Fleming (= James Bond)
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

  static String myVideoId = "hS2x1zl4rn0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 854, // DOPSUM: CHANGE IT
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

  static String myVideoId = "Kou7ur5xt_4";

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

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  static String myVideoId = "7Xcv3s_7XFI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 188, // DOPSUM: CHANGE IT
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

  static String myVideoId = "v6yg4ImnYwA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 457, // DOPSUM: CHANGE IT
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

  static String myVideoId = "raSeaAeryWE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1831, // DOPSUM: CHANGE IT
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

  static String myVideoId = "WUjVPIEtJd0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1765, // DOPSUM: CHANGE IT
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

  static String myVideoId = "10FiSsim_a4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 265, // DOPSUM: CHANGE IT
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

  static String myVideoId = "544DTGHIBM0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 897, // DOPSUM: CHANGE IT
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

  static String myVideoId = "RG9TMn1FJzc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 71, // DOPSUM: CHANGE IT
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

  static String myVideoId = "DAUl6upA3q4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 199, // DOPSUM: CHANGE IT
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

  static String myVideoId = "BDGVbiaiJ2M";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 392, // DOPSUM: CHANGE IT
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

  static String myVideoId = "wcJXA8IqYl8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 169, // DOPSUM: CHANGE IT
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

// more than one video, only first autoplay

// end bond
