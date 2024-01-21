import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryby extends StatelessWidget {
// blank divider
  EnglishEntryby({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakby(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("by"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys1(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The house is heated by gas."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys2(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("May I pay by credit card?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys3(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I will contact you by letter."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys4(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Switch it on by pressing this button."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys5(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The telephone is by the window."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys6(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Come and sit by me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys7(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Who's that book by?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys8(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I was frightened by the noise."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys9(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The motorcycle was driven by a tiny bald man."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys10(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We were amazed by what she told us."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys11(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'll have it done by tomorrow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys12(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "By this time next week we'll be in New York."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys13(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Can you finish the work by five o'clock?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys14(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "By the time (that) this letter reaches you I will have left the country."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys15(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They met by chance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys16(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I did it by mistake."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys17(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The bullet missed him by two inches."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys18(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("House prices went up by 10%."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys19(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We had to work by candlelight."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys20(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("By my watch it is two o'clock."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys21(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I could tell by the look on her face that something terrible had happened."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys22(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "By law, you are a child until you are 18."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys23(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He walked by me without speaking."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys24(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys25(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys26(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys27(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys28(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys29(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys30(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys3030"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys31(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys3131"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys32(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys3232"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys33(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys3333"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys34(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys3434"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys35(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys3535"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys36(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys3636"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys37(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys3737"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys38(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys3838"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys39(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys3939"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys40(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4040"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "by"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /baɪ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakby("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /baɪ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakby("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 12
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
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
کوردی: لەلای، نزیکی، لەپاڵ، لەتەنیشت، لەکن، ل نک، لە قەراخ، لە، لەڕێگای، بەڕێگای، بەهۆی، لەلایەن، لەگەڵ، بە، بەپێی، بەگوێرەی، بەدرێژایی، بەدرێژی، لەباری، لەبواری، لە دەوروبەری، لە پێشەوە

١. (ئامراز) بۆ پیشاندانی ئەوەی چۆن یان بە چی شێوەیەک شتێک دەکرێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The house is heated by gas."),
                              const ExampleSentenceKurdish(
                                  text: "خانووەکە بە گاز گەرمدەکرێتەوە."),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "by", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "May I pay by credit card?"),
                              const ExampleSentenceKurdish(
                                  text: "دەکرێت بە کرێدیت کارد پارە بدەم؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys2("en-US"),
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
                                              "I will contact you by letter."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "بە نامە پەیوەندیت پێوە دەکەم."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () => speakbys3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () => speakbys3("en-US"),
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
                                              "Switch it on by pressing this button."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "بیکەوە بە پەنجەنان بەم دووگمەدا."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () => speakbys4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () => speakbys4("en-US"),
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
                              text: "٢. (ناو) نزیک یان لە تەنیشت شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The telephone is by the window."),
                              const ExampleSentenceKurdish(
                                  text: "تەلەفوونەکە لە نزیک پەنجەرەکەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Come and sit by me."),
                              const ExampleSentenceKurdish(
                                  text: "وەرە و لە تەنیشتم دابنیشە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) لە ڕستەی نادیاردا بەکاردێت بۆ پیشاندانی ئەنجامدەری کارەکە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Who's that book by?"),
                              const ExampleSentenceKurdish(
                                  text: "ئە وکتێبە لەلایەن کێوە نووسراوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I was frightened by the noise."),
                              const ExampleSentenceKurdish(
                                  text: "بە دەنگەکە داچڵەکێنرام."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys8("en-US"),
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
                                              "The motorcycle was driven by a tiny bald man."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ماتۆڕەکە لەلایەن پیاوێکی کەچەڵی بچووکەوە لێدەخوڕدرا."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () => speakbys9("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () => speakbys9("en-US"),
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
                                              "We were amazed by what she told us."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "سەرسام بوون بەوەی کە پێی گوتین."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbys10("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbys10("en-US"),
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
                              text: "٤. (ناو) پێش کاتێک یان دواتر نا لەو کاتە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I'll have it done by tomorrow."),
                              const ExampleSentenceKurdish(
                                  text: "تا سبەی تەواوی دەکەم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys11("en-US"),
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
                                      "By this time next week we'll be in New York."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تا هەفتەی داهاتوو ئەم کاتانە لە نیویۆرک دەبین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys12("en-US"),
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
                                              "Can you finish the work by five o'clock?"),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "دەتوانیت کارەکە تا کاتژمێر پێنج تەواو بکەیت؟"),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbys13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbys13("en-US"),
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
                                              "By the time (that) this letter reaches you I will have left the country."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "تا ئەو کاتەی ئەم نامەیە بە تۆ دەگات من وڵاتەکەم جێهێشتووە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbys14("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbys14("en-US"),
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
                                  "٥. (ناو) بەکاردێت لەگەڵ ژمارەیەک ناو بۆ وتنی ئەوەی شتێک بەهۆی شتێکەوە ڕوویدا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "They met by chance."),
                              const ExampleSentenceKurdish(
                                  text: "بە ڕێکەوت یەکیان بینی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I did it by mistake."),
                              const ExampleSentenceKurdish(
                                  text: "بە هەڵە کردم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) بەکاردێت بۆ پیشاندانی بڕ یان ڕێژە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The bullet missed him by two inches."),
                              const ExampleSentenceKurdish(
                                  text: "فیشەکەکە بە دوو ئینج لێی دووربوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "House prices went up by 10%."),
                              const ExampleSentenceKurdish(
                                  text: "نرخی خانوو بە ڕێژەی ١٠٪ چووە سەرەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) لە کاتی شتێکدا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We had to work by candlelight."),
                              const ExampleSentenceKurdish(
                                  text: "دەبوو بە ڕۆشنایی مۆم کاربکەین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) بەپێی ئەوەی شتێک پیشانی دەدات یان دەیڵێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "By my watch it is two o'clock."),
                              const ExampleSentenceKurdish(
                                  text: "بەپێی کاتژمێرەکەم کاتژمێر دووە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys20("en-US"),
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
                                      "I could tell by the look on her face that something terrible had happened."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بە ڕواڵەتی ڕووخساری دەمزانی شتێکی خراپ ڕوویدابوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys21("en-US"),
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
                                      "By law, you are a child until you are 18."),
                              const ExampleSentenceKurdish(
                                  text: "بەپێی یاسا منداڵیت تا ١٨ ساڵی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ناو) بەلای کەسێک یان شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He walked by me without speaking."),
                              const ExampleSentenceKurdish(
                                  text: "بە لامدا تێپەڕی بەبێ قسەکردن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys23("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٠. (ناو) پێنناسە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "speakbys2424"),
                              const ExampleSentenceKurdish(
                                  text: "رستە_رستە_رستە_رستە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys24("en-US"),
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
- Preposition: by 
1. In the neighbourhood of, close to (= near)
"my house is by the church";

2. By means of; with aid of; through the act or agency of (= through)
"destroyed by fire";

3. Used in specifying adjacent dimensions
"a room ten by twenty metres"
 
4. At some time before; before the end of a given time interval
"get it done by 9am tomorrow"
 
5. On, in traversing (= along)
"came by the path";

- Adverb: by 
1. So as to pass a given point (= past)
"every hour a train goes by";
 
2. In reserve; not for immediate use (= aside, away)
"put something by for her old age";
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
  static String myVideoId = "https://youtu.be/9sRQQRiltrE?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 50, // DOPSUM: CHANGE IT
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
  static String myVideoId = "https://youtu.be/-HyHZsa79LU?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 204, // DOPSUM: CHANGE IT
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
  static String myVideoId = "https://youtu.be/CJUKVmkRx_E?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 409, // DOPSUM: CHANGE IT
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
  static String myVideoId = "https://youtu.be/dhgEpr87Yac?t=";

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
  static String myVideoId = "https://youtu.be/L7APBWkgw50?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 150, // DOPSUM: CHANGE IT
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
  static String myVideoId = "https://youtu.be/bHMmniN2ovM?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 53, // DOPSUM: CHANGE IT
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
  static String myVideoId = "https://youtu.be/9T1vfsHYiKY?t=";

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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});
  static String myVideoId = "https://youtu.be/Z7PlUGbsXlQ?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 24, // DOPSUM: CHANGE IT
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
  static String myVideoId = "https://youtu.be/IfaPp0f2wv8";

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
  static String myVideoId = "https://youtu.be/xvsvhlVxtag?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 123, // DOPSUM: CHANGE IT
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
