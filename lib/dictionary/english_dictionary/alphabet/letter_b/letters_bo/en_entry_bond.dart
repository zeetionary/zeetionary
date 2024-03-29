import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

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
کوردی: بەڵێنی، خۆبەستەیی، پێبەندی، بەندێتی، دەربەست‌بوون، پەیگرتن، خۆبەستنەوە، بڕیار، بڕیارنامە، گرێبەست، بەڵێن‌نامە، گفت، سۆز، پەیمان، پێوەندی، تێکەڵی، گرێدایی، پێکەوەنووسان، یەک‌گرتن، پێکەوەبەستراوی، دێدی‌وبۆدی، کۆت‌وبەند، کۆت‌وزنجیر، پێوەند، کۆت‌وبەند، (کیمیا) بەند، پەیوەستی، گل‌دانەوەی گومڕکی، (بیناسازی) ڕەگ، چین
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) شتێک کە پەیوەندی یان ھاوڕێیەتی درووست دەکات لە نێوان خەڵکی و گرووپدا، بۆ نموونە خۆشەویستی یان بیرۆکە و ئەزموون"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "A bond of friendship had been forged between them."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پەیوەندییەکی خۆشەویستی درووست بووە لە نێوانیان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbonds1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbonds1("en-US"),
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
                                            "The agreement strengthened the bonds between the two countries."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێککەوتنەکە پەیوەندی نێوان دوو وڵاتەکەی بەھێزکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbonds2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbonds2("en-US"),
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
                                                    "The students formed strong bonds with each other."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "قوتابییان پەیوەندیی بەھێزیان لەگەڵ یەکدی درووستکرد."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbonds3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbonds3("en-US"),
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
                                                    "She felt a bond of affection for the other girls."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەستی بە وابەستەیەکی سۆزدارانە دەکرد بەرامبەر بە کچانی دیکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbonds4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbonds4("en-US"),
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
                                  "٢. (ناو) ڕێککەوتنێک لەلایەنی حکومەتێک یان بانکێکەوە کە سووت پێبدات بۆ ئەو پارەیەی بە قەرز پێیان دەدەیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The bonds were redeemed in 2002."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گرێبەستەکان لە ساڵی ٢٠٠٢ پاککرانەوە (قەرزەکان درانەوە)."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbonds5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbonds5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) بڕێک پارە کە وەک کەفالەت دەدرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He was released on £5 000 bond."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە کەفالەتی ٥٠٠٠ پاوەند ئازادکرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbonds6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbonds6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) بڕێک ڕێککەوتنێکی یاسایی کە بەپێی ئەوە بانکێک پارەت پێدەدات بۆ بەکارھێنان و بەدرێژایی چەندین ساڵ دەیدەیتەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We had to take out a second bond on the property."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێویست بوو بیمەی دووەم وەربگرین بە دانانی زەوییەکە وەک زەمانەت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbonds7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbonds7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) حەبل یان زنجیر کە بەندکراوێکی پێوە بەستراوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Loose his bonds and set him free."),
                                    ExampleSentenceKurdish(
                                        text: "کۆتەکەی شل بکەوە و ئازادی بکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbonds8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbonds8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) بەڵێن یان ڕێککەوتنێکی یاسایی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "We entered into a solemn bond."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چووینە ناو ڕێککەوتنێکی فەرمییەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbonds9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbonds9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) شێوازی پێکەوەبەسترانی دوو شت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "When the glue has set, the bond formed is watertight."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کە چەسپەکە جێی خۆی دەگرێت، شوێنی یەکگرتنەکە ئاو ناکێشێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbonds10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbonds10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) ھێزی پێکەوەلکێنەری ئەتۆمەکان لە ئاوێتەیەکی کیمیاییدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Carbon atoms can form bonds not only with themselves but with the atoms of oxygen and nitrogen."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەتۆمەکانی کاربۆن دەتوانن بۆند درووست بکەن نەک تەنھا لەگەڵ خۆیان بەڵکو لەگەڵ ئەتۆمەکانی ئۆکسجین و نایترۆجین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbonds11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbonds11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) پێکەوەلکاندنی دوو شت بە توندی پێکەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This new glue bonds a variety of surfaces in seconds."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم چەسپە تازەیە ژمارەیەکی جیاواز لە ڕووکەش پێکەوەدەبەستێت لە چەند چرکەیەکدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbonds12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbonds12("en-US"),
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
                                                    "It cannot be used to bond wood to metal."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ناتوانرێت بەکاربھێندرێت بۆ لکاندنی تەختە بە ئاسنەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbonds13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbonds13("en-US"),
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
                                                    "The atoms bond together to form a molecule."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەتۆمەکان یەکدەگرن بۆ درووستکردنی ئاوێتە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbonds14("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbonds14("en-US"),
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
                                  "١٠. (کردار) درووستکردن یان پەرەپێدانی پەیوەندی لەسەر بنەمای متمانە لەگەڵ کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Mothers who are depressed sometimes fail to bond with their children."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەو دایکانەی کە خەمۆکییان ھەیە ھەندێک جار ناتوانن لەگەڵ منداڵەکانیان ئاوێتە بن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
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
- Noun: bond (derived forms: bonds)
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

- Verb: bond (derived forms: bonded, bonding, bonds)
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
    videoId: 'hS2x1zl4rn0',
    startSeconds: 854,
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
    videoId: 'Kou7ur5xt_4',
    startSeconds: 18,
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
    videoId: '7Xcv3s_7XFI',
    startSeconds: 188,
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
    videoId: 'v6yg4ImnYwA',
    startSeconds: 457,
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
    videoId: 'raSeaAeryWE',
    startSeconds: 1831,
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
    videoId: 'WUjVPIEtJd0',
    startSeconds: 1765,
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
    videoId: '10FiSsim_a4',
    startSeconds: 265,
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
    videoId: '544DTGHIBM0',
    startSeconds: 897,
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
    videoId: 'RG9TMn1FJzc',
    startSeconds: 71,
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
    videoId: 'DAUl6upA3q4',
    startSeconds: 199,
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
    videoId: 'BDGVbiaiJ2M',
    startSeconds: 392,
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
    videoId: 'wcJXA8IqYl8',
    startSeconds: 169,
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

// end bond
