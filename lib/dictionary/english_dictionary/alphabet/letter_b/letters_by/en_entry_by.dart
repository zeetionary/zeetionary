import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

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
    await flutterTts.speak("I took him by the hand."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys25(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Pick it up by the handle!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys26(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We rented the car by the day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys27(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We only sell it by the metre."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys28(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They're improving day by day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys29(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We'll do it bit by bit."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys30(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The room measures fifteen feet by twenty feet."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys31(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("6 multiplied by 2 equals 12."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys32(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("6 divided by 2 equals 3."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys33(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's German by birth."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys34(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They're both doctors by profession."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys35(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I swear by Almighty God…"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys36(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Just drive by. Don't stop."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys37(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Excuse me, I can't get by."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys38(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Time goes by so quickly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys39(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He tapped Brown on the shoulder as he went by."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys40(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I've put some money by for college fees."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys41(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'll come by this evening and pick up the books."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys42(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4242"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys43(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4343"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys44(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4444"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys45(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4545"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys46(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4646"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys47(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4747"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys48(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4848"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys49(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4949"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbys50(String languageCode) async {
    // DOPSUM: CHANGE speakby
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys5050"); // DOPSUM: CHANGE TEXT
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
کوردی: لەلای، نزیکی، لەپاڵ، لەتەنیشت، لەکن، ل نک، لە قەراخ، لە، لەڕێگای، بەڕێگای، بەھۆی، لەلایەن، لەگەڵ، بە، بەپێی، بەگوێرەی، بەدرێژایی، بەدرێژی، لەباری، لەبواری، لە دەوروبەری، لە پێشەوە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ئامراز) بۆ پیشاندانی ئەوەی چۆن یان بە چی شێوەیەک شتێک دەکرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "The house is heated by gas."),
                                    ExampleSentenceKurdish(
                                        text: "خانووەکە بە گاز گەرمدەکرێتەوە."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "May I pay by credit card?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەکرێت بە کرێدیت کارد پارە بدەم؟"),
                                  ],
                                ),
                              ),
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
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "I will contact you by letter."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بە نامە پەیوەندیت پێوە دەکەم."),
                                          ],
                                        ),
                                      ),
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
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "Switch it on by pressing this button."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بیکەوە بە پەنجەنان بەم دووگمەدا."),
                                          ],
                                        ),
                                      ),
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
                              text: "٢. (ئامراز) نزیک یان لە تەنیشت شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The telephone is by the window."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەلەفوونەکە لە نزیک پەنجەرەکەیە."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Come and sit by me."),
                                    ExampleSentenceKurdish(
                                        text: "وەرە و لە تەنیشتم دابنیشە."),
                                  ],
                                ),
                              ),
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
                                  "٣. (ئامراز) لە ڕستەی نادیاردا بەکاردێت بۆ پیشاندانی ئەنجامدەری کارەکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Who's that book by?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەو کتێبە لەلایەن کێوە نووسراوە."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I was frightened by the noise."),
                                    ExampleSentenceKurdish(
                                        text: "بە دەنگەکە داچڵەکێنرام."),
                                  ],
                                ),
                              ),
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
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "The motorcycle was driven by a tiny bald man."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ماتۆڕەکە لەلایەن پیاوێکی کەچەڵی بچووکەوە لێدەخوڕدرا."),
                                          ],
                                        ),
                                      ),
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
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "We were amazed by what she told us."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "سەرسام بوون بەوەی کە پێی گوتین."),
                                          ],
                                        ),
                                      ),
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
                              text:
                                  "٤. (ئامراز) پێش کاتێک یان دواتر نا لەو کاتە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I'll have it done by tomorrow."),
                                    ExampleSentenceKurdish(
                                        text: "تا سبەی تەواوی دەکەم."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "By this time next week we'll be in New York."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تا ھەفتەی داھاتوو ئەم کاتانە لە نیویۆرک دەبین."),
                                  ],
                                ),
                              ),
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
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "Can you finish the work by five o'clock?"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دەتوانیت کارەکە تا کاتژمێر پێنج تەواو بکەیت؟"),
                                          ],
                                        ),
                                      ),
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
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "By the time (that) this letter reaches you I will have left the country."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تا ئەو کاتەی ئەم نامەیە بە تۆ دەگات من وڵاتەکەم جێھێشتووە."),
                                          ],
                                        ),
                                      ),
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
                                  "٥. (ئامراز) بەکاردێت لەگەڵ ژمارەیەک ناو بۆ وتنی ئەوەی شتێک بەھۆی شتێکەوە ڕوویدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "They met by chance."),
                                    ExampleSentenceKurdish(
                                        text: "بە ڕێکەوت یەکیان بینی."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I did it by mistake."),
                                    ExampleSentenceKurdish(
                                        text: "بە ھەڵە کردم."),
                                  ],
                                ),
                              ),
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
                                  "٦. (ئامراز) بەکاردێت بۆ پیشاندانی بڕ یان ڕێژە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The bullet missed him by two inches."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فیشەکەکە بە دوو ئینج لێی دووربوو."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "House prices went up by 10%."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نرخی خانوو بە ڕێژەی ١٠٪ چووە سەرەوە."),
                                  ],
                                ),
                              ),
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
                              text: "٧. (ئامراز) لە کاتی شتێکدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "We had to work by candlelight."),
                                    ExampleSentenceKurdish(
                                        text: "دەبوو بە ڕۆشنایی مۆم کاربکەین."),
                                  ],
                                ),
                              ),
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
                                  "٨. (ئامراز) بەپێی ئەوەی شتێک پیشانی دەدات یان دەیڵێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "By my watch it is two o'clock."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەپێی کاتژمێرەکەم کاتژمێر دووە."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I could tell by the look on her face that something terrible had happened."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە ڕواڵەتی ڕووخساری دەمزانی شتێکی خراپ ڕوویدابوو."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "By law, you are a child until you are 18."),
                                    ExampleSentenceKurdish(
                                        text: "بەپێی یاسا منداڵیت تا ١٨ ساڵی."),
                                  ],
                                ),
                              ),
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
                              text: "٩. (ئامراز) بەلای کەسێک/شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He walked by me without speaking."),
                                    ExampleSentenceKurdish(
                                        text: "بە لامدا تێپەڕی بەبێ قسەکردن."),
                                  ],
                                ),
                              ),
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
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ئامراز) بەکاردێت بۆ پیشاندانی ئەو بەشەی کەسێک/شتێک کە کەسێک دەستی لێ دەدات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I took him by the hand."),
                                    ExampleSentenceKurdish(
                                        text: "بەدەست بردم."),
                                  ],
                                ),
                              ),
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
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Pick it up by the handle!"),
                                    ExampleSentenceKurdish(
                                        text: "بە دەسکەکەی بەرزی بکەوە!"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (ئامراز) بەکاردێت بۆ پیشاندانی ماوە یان بڕ لە کاتی کڕین، فرۆشتن، یان پێوانی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "We rented the car by the day."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئۆتۆمبێلەکەمان بە ڕۆژ بە کرێ گرت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys26("en-US"),
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
                                        text: "We only sell it by the metre."),
                                    ExampleSentenceKurdish(
                                        text: "تەنھا بە مەتر دەیفرۆشین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys27("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (ئامراز) بەکاردێت بۆ پیشاندانی ئەوەی شتێک بە چی گۆڕانکارییەک بەرەو پێشەوە دەچێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "They're improving day by day."),
                                    ExampleSentenceKurdish(
                                        text: "ڕۆژ بە ڕۆژ گەشە دەکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys28("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys28("en-US"),
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
                                        text: "We'll do it bit by bit."),
                                    ExampleSentenceKurdish(
                                        text: "کەم کەم دەیکەین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys29("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys29("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٣. (ئامراز) بۆ پیشاندانی پێوانەی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The room measures fifteen feet by twenty feet."),
                                    ExampleSentenceKurdish(
                                        text: "ژوورەکە ١٥ فیت بە ٢٠ فیتە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys30("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys30("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٤. (ئامراز) لە کاتی لێکدان و دابەشدا لە بیرکاریدا بەکاردێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "6 multiplied by 2 equals 12."),
                                    ExampleSentenceKurdish(
                                        text: "٦ کەڕەت ٢ یەکسانە بە ١٢."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys31("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys31("en-US"),
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
                                        text: "6 divided by 2 equals 3."),
                                    ExampleSentenceKurdish(
                                        text: "٦ دابەشی ٢ دەکاتە ٣."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys32("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys32("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٥. (ئامراز) بۆ زانیاریدان لەسەر کەسێک لە ڕووی کار، شوێنی ژیان، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "He's German by birth."),
                                    ExampleSentenceKurdish(
                                        text: "بە لەدایکبوونی ئەڵمانییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys33("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys33("en-US"),
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
                                            "They're both doctors by profession."),
                                    ExampleSentenceKurdish(
                                        text: "بە پیشە ھەردووکیان دکتۆرن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys34("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys34("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٦. (ئامراز) بەکاردێت لە کاتی سوێندخواردن بە ناوی کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I swear by Almighty God…"),
                                    ExampleSentenceKurdish(
                                        text: "سوێند بە خودای گەورە..."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys35("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys35("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٧. (ھاوەڵکار) تێپەڕین بەلای شتێکدا یان تێپەڕینی کات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Just drive by. Don't stop."),
                                    ExampleSentenceKurdish(
                                        text: "بە لایدا تێپەڕە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys36("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys36("en-US"),
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
                                        text: "Excuse me, I can't get by."),
                                    ExampleSentenceKurdish(
                                        text: "ببوورە، ناتوانم تێپەڕبم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys37("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys37("en-US"),
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
                                                    "Time goes by so quickly."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کات زۆر بەخێرایی دەچێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbys38("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbys38("en-US"),
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
                                                    "He tapped Brown on the shoulder as he went by."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دەستی نا بە شانی براوندا کە تێپەڕی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbys39("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbys39("en-US"),
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
                                  "١٨. (ھاوەڵکار) بەکاردێت بۆ وتنی ئەوەی شتێک ھەڵگیردراوە بۆ ئەوەی لە داھاتوودا بەکاربێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I've put some money by for college fees."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەندێک پارەم ھەڵگرتووە بۆ کرێی زانکۆ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys40("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys40("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٩. (ھاوەڵکار) بۆ سەردانکردنی کەسێک بۆ ماوەیەکی کەم"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I'll come by this evening and pick up the books."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم ئێوارە دێم و کتێبەکان دەبەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbys41("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbys41("en-US"),
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
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '9sRQQRiltrE',
    startSeconds: 50,
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
    videoId: '-HyHZsa79LU',
    startSeconds: 204,
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
    videoId: 'CJUKVmkRx_E',
    startSeconds: 409,
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
    videoId: 'dhgEpr87Yac',
    // startSeconds: 222222222222222,
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
    videoId: 'L7APBWkgw50',
    startSeconds: 150,
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
    videoId: 'bHMmniN2ovM',
    startSeconds: 53,
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
    videoId: '9T1vfsHYiKY',
    startSeconds: 72,
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
    videoId: 'Z7PlUGbsXlQ',
    startSeconds: 24,
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
    videoId: 'IfaPp0f2wv8',
    // startSeconds: 222222222222222,
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
    videoId: 'xvsvhlVxtag',
    startSeconds: 123,
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

// end WORD_WEB
