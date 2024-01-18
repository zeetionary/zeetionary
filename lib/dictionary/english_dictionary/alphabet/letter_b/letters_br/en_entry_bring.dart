import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybring extends StatelessWidget {
// blank divider
  EnglishEntrybring({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbring(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bring"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings1(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Don't forget to bring your books with you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings2(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can we bring the children?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings3(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She brought her boyfriend to the party."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings4(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Bring a present for Helen."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings5(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Bring Helen a present."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings6(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Did you bring anything back with you?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings7(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They brought us some good news."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings8(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We'll bring you the election results as soon as we have them."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings9(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His writing brings him £10 000 a year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings10(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The revolution brought many changes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings11(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The news brought tears to his eyes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings12(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Retirement often brings with it a massive drop in income."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings13(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "No one has worked harder to bring peace to the region."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings14(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Bring the water to the boil."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings15(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They have taken on six more staff, bringing the total to 45."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings16(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The issue was only brought to my attention this morning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings17(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This brings me to the second point I'd like to make, which is freedom of expression."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings18(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The judge brought his hammer down on the table."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings19(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her cries brought the neighbours running."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings20(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was arrested for fighting, but the police have decided not to bring charges."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings21(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She could not bring herself to tell him the news."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings22(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrings2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings23(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrings2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings24(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrings2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings25(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrings2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings26(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrings2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings27(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrings2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings28(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrings2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrings29(String languageCode) async {
    // DOPSUM: CHANGE speakbring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrings2929"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "bring"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /brɪŋ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbring("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /brɪŋ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbring("en-US"),
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
کوردی: ھێنان، گەیاندن، بوون بە ھۆ (ھۆکار)

١. (کردار) ھێنانی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Don't forget to bring your books with you."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بیرت نەچێت کتێبەکانت لەگەڵ خۆت بێنیت."),
                              const CustomSizedBoxForTTS(), // Define the word "bring" as
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Can we bring the children?"),
                              const ExampleSentenceKurdish(
                                  text: "دەتوانین منداڵەکان بێنین؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings2("en-US"),
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
                                              "She brought her boyfriend to the party."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "دۆستە کوڕەکەی لەگەڵ خۆی ھێنا بۆ ئاھەنگەکە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbrings3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbrings3("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text: "Bring a present for Helen."),
                                      const ExampleSentenceKurdish(
                                          text: "دیارییەک بۆ ھێلین بھێنە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbrings4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbrings4("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text: "Bring Helen a present."),
                                      const ExampleSentenceKurdish(
                                          text: "دیارییەک بۆ ھێلین بھێنە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbrings5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbrings5("en-US"),
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
                                              "Did you bring anything back with you?"),
                                      const ExampleSentenceKurdish(
                                          text: "ھیچت لەگەڵ خۆت ھێنایەوە؟"),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbrings6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbrings6("en-US"),
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
                              text: "٢. (کردار) پێدانی شتێک بە کەسێک یان شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "They brought us some good news."),
                              const ExampleSentenceKurdish(
                                  text: "ھەندێک ھەواڵی خۆشیان پێداین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings7("en-US"),
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
                                      "We'll bring you the election results as soon as we have them."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەنجامەکانی ھەڵبژاردنتان پێدەدەین ھەرکە بەدەستمان بگات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings8("en-US"),
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
                                      "His writing brings him £10 000 a year."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نووسینەکانی ١٠,٠٠٠ پاوەندی ساڵانەی بۆ دەھێنێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) بوون بە ھۆکاری شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The revolution brought many changes."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "شۆڕشەکە گۆڕانکاری زۆری بەدوای خۆیدا ھێنا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings10("en-US"),
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
                                      "The news brought tears to his eyes (= made him cry)."),
                              const ExampleSentenceKurdish(
                                  text: "ھەواڵەکە گریاندی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings11("en-US"),
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
                                      "Retirement often brings with it a massive drop in income."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خانەنشین بوون زۆرجار دەبێتەھۆی کەمبوونێکی زۆری داھات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) وا لە شتێک بکەیت لە شوێنێک بێت یان بکەوێتە دۆخێکەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "No one has worked harder to bring peace to the region."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھیچ کەس زیاتر (لە ئەو) ھەوڵی نەداوە ئاشتی بۆ ھەرێمەکە بێنێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Bring the water to the boil."),
                              const ExampleSentenceKurdish(
                                  text: "ئاوەکە بکوڵێنە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings14("en-US"),
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
                                      "They have taken on six more staff, bringing the total to 45."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "شەش ستافی دیکەیان گرتووە کە کۆی گشتی کردووە بە ٤٥."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings15("en-US"),
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
                                      "The issue was only brought to my attention this morning."),
                              const ExampleSentenceKurdish(
                                  text: "بابەتەکەم تەنھا ئەمڕۆ پێڕاگەیەندرا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) لە کاتی قسەکردن یان نووسین بەکاردێت بۆ چوونە خاڵی دواتر"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "This brings me to the second point I'd like to make, which is freedom of expression."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەمەش دەمھێنێتە سەر خاڵی دووەم کە دەمەوێت باسی بکەم، ئەویش ئازادی ڕادەربڕینە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) وا لە شتێک یان کەسێک بکەیت بجوڵێت بە ئاراستەیەک یان ڕێگایەکی دیاریکراو"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The judge brought his hammer down on the table."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دادوەرەکە چەکووشەکەی کێشا بە مێزەکەدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings18("en-US"),
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
                                      "Her cries brought the neighbours running (= made them run to her)."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "قیژانەکەی دراوسێیەکانی بە ڕاکردن ھێنا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) گرتنەبەری ڕێکاری یاسایی دژ بە کەسێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He was arrested for fighting, but the police have decided not to bring charges."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بۆ شەڕکردن دەستگیرکرا، بەڵام پۆلیس بڕیاری داوە سکاڵا تۆمار نەکات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) زۆرکردن لە خۆت بۆ کردنی شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She could not bring herself to tell him the news."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نەیدەتوانی وا لە خۆی بکات ھەواڵەکەی پێ بڵێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrings21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrings21("en-US"),
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
- Verb: bring (derived forms: brings, brought, bringing)
1. Take something or somebody with oneself somewhere (= convey, take)
"Bring me the box from the other room"; "This brings me to the main point";
 
2. Cause to come into a particular state or condition
"Long hard years of on the job training had brought them to their competence"; "bring water to the boiling point"
 
3. Cause to happen or to occur as a consequence (= work, play, wreak, make for)
"bring comments"; "The rain brought relief to the drought-stricken area";
 
4. Go or come after and bring or take back (= get, convey, fetch)
"Could you bring the wine?";
 
5. Be accompanied by
"Can I bring my cousin to the dinner?"
 
6. Advance or set forth in court (= institute)
"bring charges";
 
7. Provide a particular quality or character (= lend, impart, bestow, contribute, add)
"She brings a special atmosphere to our meetings";
 
8. Be sold for a certain price (= fetch, bring in)
"The painting brought £10,000"; "The old print brought in a high price at the auction";
 
9. Attract the attention of
"The noise and the screaming brought the curious"
 
10. Induce or persuade
"The confession of one of the accused brought the others to admit to the crime as well"
 
11. Bring into a different state (= land)
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

  static String myVideoId = "hFZFjoX2cGg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 308, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  static String myVideoId = "hS2x1zl4rn0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1582, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  static String myVideoId = "4VSx2E7WE50";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 97, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  static String myVideoId = "t433PEQGErc";

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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  static String myVideoId = "_spuxXnul0U";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 833, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  static String myVideoId = "khOUvmOQExc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 262, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  static String myVideoId = "R_fZjGm2OrM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 431, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  static String myVideoId = "_wNsZEqpKUA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1169, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  static String myVideoId = "80tjMF-eha4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 240, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  static String myVideoId = "oKyh5c5BoA0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1263, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  static String myVideoId = "E8lMnZ_Rlxg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1258, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  static String myVideoId = "4xmgB2EsV7s";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 256, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

// end WORD_WEB
