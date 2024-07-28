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
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("by");
  }

  Future<void> speakbys1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The house is heated by gas.");
  }

  Future<void> speakbys2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("May I pay by credit card?");
  }

  Future<void> speakbys3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I will contact you by letter.");
  }

  Future<void> speakbys4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Switch it on by pressing this button.");
  }

  Future<void> speakbys5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The telephone is by the window.");
  }

  Future<void> speakbys6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Come and sit by me.");
  }

  Future<void> speakbys7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Who's that book by?");
  }

  Future<void> speakbys8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I was frightened by the noise.");
  }

  Future<void> speakbys9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The motorcycle was driven by a tiny bald man.");
  }

  Future<void> speakbys10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We were amazed by what she told us.");
  }

  Future<void> speakbys11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll have it done by tomorrow.");
  }

  Future<void> speakbys12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("By this time next week we'll be in New York.");
  }

  Future<void> speakbys13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you finish the work by five o'clock?");
  }

  Future<void> speakbys14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "By the time (that) this letter reaches you I will have left the country.");
  }

  Future<void> speakbys15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They met by chance.");
  }

  Future<void> speakbys16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I did it by mistake.");
  }

  Future<void> speakbys17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bullet missed him by two inches.");
  }

  Future<void> speakbys18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("House prices went up by 10%.");
  }

  Future<void> speakbys19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We had to work by candlelight.");
  }

  Future<void> speakbys20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("By my watch it is two o'clock.");
  }

  Future<void> speakbys21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I could tell by the look on her face that something terrible had happened.");
  }

  Future<void> speakbys22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("By law, you are a child until you are 18.");
  }

  Future<void> speakbys23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He walked by me without speaking.");
  }

  Future<void> speakbys24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I took him by the hand.");
  }

  Future<void> speakbys25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Pick it up by the handle!");
  }

  Future<void> speakbys26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We rented the car by the day.");
  }

  Future<void> speakbys27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We only sell it by the metre.");
  }

  Future<void> speakbys28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They're improving day by day.");
  }

  Future<void> speakbys29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We'll do it bit by bit.");
  }

  Future<void> speakbys30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The room measures fifteen feet by twenty feet.");
  }

  Future<void> speakbys31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("6 multiplied by 2 equals 12.");
  }

  Future<void> speakbys32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("6 divided by 2 equals 3.");
  }

  Future<void> speakbys33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's German by birth.");
  }

  Future<void> speakbys34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They're both doctors by profession.");
  }

  Future<void> speakbys35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I swear by Almighty God…");
  }

  Future<void> speakbys36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Just drive by. Don't stop.");
  }

  Future<void> speakbys37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Excuse me, I can't get by.");
  }

  Future<void> speakbys38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Time goes by so quickly.");
  }

  Future<void> speakbys39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He tapped Brown on the shoulder as he went by.");
  }

  Future<void> speakbys40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've put some money by for college fees.");
  }

  Future<void> speakbys41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll come by this evening and pick up the books.");
  }

  Future<void> speakbys42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4242");
  }

  Future<void> speakbys43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4343");
  }

  Future<void> speakbys44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4444");
  }

  Future<void> speakbys45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4545");
  }

  Future<void> speakbys46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4646");
  }

  Future<void> speakbys47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4747");
  }

  Future<void> speakbys48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4848");
  }

  Future<void> speakbys49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys4949");
  }

  Future<void> speakbys50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbys5050");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
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
                  VideoIconForTab(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(),
                    SingleChildScrollView(
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
                          SentencesRow(
                            englishText: "The house is heated by gas.",
                            kurdishText:
                                "خانووەکە بە گاز گەرمدەکرێتەوە.", // by", follow LX strictly
                            onPressedBritish: () => speakbys1("en-GB"),
                            onPressedAmerican: () => speakbys1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "May I pay by credit card?",
                            kurdishText: "دەکرێت بە کرێدیت کارد پارە بدەم؟",
                            onPressedBritish: () => speakbys2("en-GB"),
                            onPressedAmerican: () => speakbys2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "I will contact you by letter.",
                                    kurdishText:
                                        "بە نامە پەیوەندیت پێوە دەکەم.",
                                    onPressedBritish: () => speakbys3("en-GB"),
                                    onPressedAmerican: () => speakbys3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Switch it on by pressing this button.",
                                    kurdishText:
                                        "بیکەوە بە پەنجەنان بەم دووگمەدا.",
                                    onPressedBritish: () => speakbys4("en-GB"),
                                    onPressedAmerican: () => speakbys4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ئامراز) نزیک یان لە تەنیشت شتێک"),
                          SentencesRow(
                            englishText: "The telephone is by the window.",
                            kurdishText: "تەلەفوونەکە لە نزیک پەنجەرەکەیە.",
                            onPressedBritish: () => speakbys5("en-GB"),
                            onPressedAmerican: () => speakbys5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Come and sit by me.",
                            kurdishText: "وەرە و لە تەنیشتم دابنیشە.",
                            onPressedBritish: () => speakbys6("en-GB"),
                            onPressedAmerican: () => speakbys6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ئامراز) لە ڕستەی نادیاردا بەکاردێت بۆ پیشاندانی ئەنجامدەری کارەکە"),
                          SentencesRow(
                            englishText: "Who's that book by?",
                            kurdishText: "ئەو کتێبە لەلایەن کێوە نووسراوە.",
                            onPressedBritish: () => speakbys7("en-GB"),
                            onPressedAmerican: () => speakbys7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "I was frightened by the noise.",
                            kurdishText: "بە دەنگەکە داچڵەکێنرام.",
                            onPressedBritish: () => speakbys8("en-GB"),
                            onPressedAmerican: () => speakbys8("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The motorcycle was driven by a tiny bald man.",
                                    kurdishText:
                                        "ماتۆڕەکە لەلایەن پیاوێکی کەچەڵی بچووکەوە لێدەخوڕدرا.",
                                    onPressedBritish: () => speakbys9("en-GB"),
                                    onPressedAmerican: () => speakbys9("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We were amazed by what she told us.",
                                    kurdishText:
                                        "سەرسام بوون بەوەی کە پێی گوتین.",
                                    onPressedBritish: () => speakbys10("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbys10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ئامراز) پێش کاتێک یان دواتر نا لەو کاتە"),
                          SentencesRow(
                            englishText: "I'll have it done by tomorrow.",
                            kurdishText: "تا سبەی تەواوی دەکەم.",
                            onPressedBritish: () => speakbys11("en-GB"),
                            onPressedAmerican: () => speakbys11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "By this time next week we'll be in New York.",
                            kurdishText:
                                "تا ھەفتەی داھاتوو ئەم کاتانە لە نیویۆرک دەبین.",
                            onPressedBritish: () => speakbys12("en-GB"),
                            onPressedAmerican: () => speakbys12("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Can you finish the work by five o'clock?",
                                    kurdishText:
                                        "دەتوانیت کارەکە تا کاتژمێر پێنج تەواو بکەیت؟",
                                    onPressedBritish: () => speakbys13("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbys13("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "By the time (that) this letter reaches you I will have left the country.",
                                    kurdishText:
                                        "تا ئەو کاتەی ئەم نامەیە بە تۆ دەگات من وڵاتەکەم جێھێشتووە.",
                                    onPressedBritish: () => speakbys14("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbys14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ئامراز) بەکاردێت لەگەڵ ژمارەیەک ناو بۆ وتنی ئەوەی شتێک بەھۆی شتێکەوە ڕوویدا"),
                          SentencesRow(
                            englishText: "They met by chance.",
                            kurdishText: "بە ڕێکەوت یەکیان بینی.",
                            onPressedBritish: () => speakbys15("en-GB"),
                            onPressedAmerican: () => speakbys15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "I did it by mistake.",
                            kurdishText: "بە ھەڵە کردم.",
                            onPressedBritish: () => speakbys16("en-GB"),
                            onPressedAmerican: () => speakbys16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ئامراز) بەکاردێت بۆ پیشاندانی بڕ یان ڕێژە"),
                          SentencesRow(
                            englishText: "The bullet missed him by two inches.",
                            kurdishText: "فیشەکەکە بە دوو ئینج لێی دووربوو.",
                            onPressedBritish: () => speakbys17("en-GB"),
                            onPressedAmerican: () => speakbys17("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "House prices went up by 10%.",
                            kurdishText: "نرخی خانوو بە ڕێژەی ١٠٪ چووە سەرەوە.",
                            onPressedBritish: () => speakbys18("en-GB"),
                            onPressedAmerican: () => speakbys18("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ئامراز) لە کاتی شتێکدا"),
                          SentencesRow(
                            englishText: "We had to work by candlelight.",
                            kurdishText: "دەبوو بە ڕۆشنایی مۆم کاربکەین.",
                            onPressedBritish: () => speakbys19("en-GB"),
                            onPressedAmerican: () => speakbys19("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ئامراز) بەپێی ئەوەی شتێک پیشانی دەدات یان دەیڵێت"),
                          SentencesRow(
                            englishText: "By my watch it is two o'clock.",
                            kurdishText: "بەپێی کاتژمێرەکەم کاتژمێر دووە.",
                            onPressedBritish: () => speakbys20("en-GB"),
                            onPressedAmerican: () => speakbys20("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I could tell by the look on her face that something terrible had happened.",
                            kurdishText:
                                "بە ڕواڵەتی ڕووخساری دەمزانی شتێکی خراپ ڕوویدابوو.",
                            onPressedBritish: () => speakbys21("en-GB"),
                            onPressedAmerican: () => speakbys21("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "By law, you are a child until you are 18.",
                            kurdishText: "بەپێی یاسا منداڵیت تا ١٨ ساڵی.",
                            onPressedBritish: () => speakbys22("en-GB"),
                            onPressedAmerican: () => speakbys22("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ئامراز) بەلای کەسێک/شتێک"),
                          SentencesRow(
                            englishText: "He walked by me without speaking.",
                            kurdishText: "بە لامدا تێپەڕی بەبێ قسەکردن.",
                            onPressedBritish: () => speakbys23("en-GB"),
                            onPressedAmerican: () => speakbys23("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ئامراز) بەکاردێت بۆ پیشاندانی ئەو بەشەی کەسێک/شتێک کە کەسێک دەستی لێ دەدات"),
                          SentencesRow(
                            englishText: "I took him by the hand.",
                            kurdishText: "بەدەست بردم.",
                            onPressedBritish: () => speakbys24("en-GB"),
                            onPressedAmerican: () => speakbys24("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Pick it up by the handle!",
                            kurdishText: "بە دەسکەکەی بەرزی بکەوە!",
                            onPressedBritish: () => speakbys25("en-GB"),
                            onPressedAmerican: () => speakbys25("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (ئامراز) بەکاردێت بۆ پیشاندانی ماوە یان بڕ لە کاتی کڕین، فرۆشتن، یان پێوانی شتێک"),
                          SentencesRow(
                            englishText: "We rented the car by the day.",
                            kurdishText: "ئۆتۆمبێلەکەمان بە ڕۆژ بە کرێ گرت.",
                            onPressedBritish: () => speakbys26("en-GB"),
                            onPressedAmerican: () => speakbys26("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "We only sell it by the metre.",
                            kurdishText: "تەنھا بە مەتر دەیفرۆشین.",
                            onPressedBritish: () => speakbys27("en-GB"),
                            onPressedAmerican: () => speakbys27("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (ئامراز) بەکاردێت بۆ پیشاندانی ئەوەی شتێک بە چی گۆڕانکارییەک بەرەو پێشەوە دەچێت"),
                          SentencesRow(
                            englishText: "They're improving day by day.",
                            kurdishText: "ڕۆژ بە ڕۆژ گەشە دەکەن.",
                            onPressedBritish: () => speakbys28("en-GB"),
                            onPressedAmerican: () => speakbys28("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "We'll do it bit by bit.",
                            kurdishText: "کەم کەم دەیکەین.",
                            onPressedBritish: () => speakbys29("en-GB"),
                            onPressedAmerican: () => speakbys29("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٣. (ئامراز) بۆ پیشاندانی پێوانەی شتێک"),
                          SentencesRow(
                            englishText:
                                "The room measures fifteen feet by twenty feet.",
                            kurdishText: "ژوورەکە ١٥ فیت بە ٢٠ فیتە.",
                            onPressedBritish: () => speakbys30("en-GB"),
                            onPressedAmerican: () => speakbys30("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٤. (ئامراز) لە کاتی لێکدان و دابەشدا لە بیرکاریدا بەکاردێت"),
                          SentencesRow(
                            englishText: "6 multiplied by 2 equals 12.",
                            kurdishText: "٦ کەڕەت ٢ یەکسانە بە ١٢.",
                            onPressedBritish: () => speakbys31("en-GB"),
                            onPressedAmerican: () => speakbys31("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "6 divided by 2 equals 3.",
                            kurdishText: "٦ دابەشی ٢ دەکاتە ٣.",
                            onPressedBritish: () => speakbys32("en-GB"),
                            onPressedAmerican: () => speakbys32("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٥. (ئامراز) بۆ زانیاریدان لەسەر کەسێک لە ڕووی کار، شوێنی ژیان، ھتد"),
                          SentencesRow(
                            englishText: "He's German by birth.",
                            kurdishText: "بە لەدایکبوونی ئەڵمانییە.",
                            onPressedBritish: () => speakbys33("en-GB"),
                            onPressedAmerican: () => speakbys33("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "They're both doctors by profession.",
                            kurdishText: "بە پیشە ھەردووکیان دکتۆرن.",
                            onPressedBritish: () => speakbys34("en-GB"),
                            onPressedAmerican: () => speakbys34("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٦. (ئامراز) بەکاردێت لە کاتی سوێندخواردن بە ناوی کەسێک"),
                          SentencesRow(
                            englishText: "I swear by Almighty God…",
                            kurdishText: "سوێند بە خودای گەورە...",
                            onPressedBritish: () => speakbys35("en-GB"),
                            onPressedAmerican: () => speakbys35("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٧. (ھاوەڵکار) تێپەڕین بەلای شتێکدا یان تێپەڕینی کات"),
                          SentencesRow(
                            englishText: "Just drive by. Don't stop.",
                            kurdishText: "بە لایدا تێپەڕە.",
                            onPressedBritish: () => speakbys36("en-GB"),
                            onPressedAmerican: () => speakbys36("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Excuse me, I can't get by.",
                            kurdishText: "ببوورە، ناتوانم تێپەڕبم.",
                            onPressedBritish: () => speakbys37("en-GB"),
                            onPressedAmerican: () => speakbys37("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText: "Time goes by so quickly.",
                                    kurdishText: "کات زۆر بەخێرایی دەچێت.",
                                    onPressedBritish: () => speakbys38("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbys38("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He tapped Brown on the shoulder as he went by.",
                                    kurdishText:
                                        "دەستی نا بە شانی براوندا کە تێپەڕی.",
                                    onPressedBritish: () => speakbys39("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbys39("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٨. (ھاوەڵکار) بەکاردێت بۆ وتنی ئەوەی شتێک ھەڵگیردراوە بۆ ئەوەی لە داھاتوودا بەکاربێت"),
                          SentencesRow(
                            englishText:
                                "I've put some money by for college fees.",
                            kurdishText:
                                "ھەندێک پارەم ھەڵگرتووە بۆ کرێی زانکۆ.",
                            onPressedBritish: () => speakbys40("en-GB"),
                            onPressedAmerican: () => speakbys40("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٩. (ھاوەڵکار) بۆ سەردانکردنی کەسێک بۆ ماوەیەکی کەم"),
                          SentencesRow(
                            englishText:
                                "I'll come by this evening and pick up the books.",
                            kurdishText: "ئەم ئێوارە دێم و کتێبەکان دەبەم.",
                            onPressedBritish: () => speakbys41("en-GB"),
                            onPressedAmerican: () => speakbys41("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
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
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

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
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '9sRQQRiltrE';
  final double _startSeconds = 50;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = '-HyHZsa79LU';
  final double _startSeconds = 204;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'CJUKVmkRx_E';
  final double _startSeconds = 409;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'dhgEpr87Yac';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'L7APBWkgw50';
  final double _startSeconds = 150;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'bHMmniN2ovM';
  final double _startSeconds = 53;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = '9T1vfsHYiKY';
  final double _startSeconds = 72;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'Z7PlUGbsXlQ';
  final double _startSeconds = 24;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'IfaPp0f2wv8';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'xvsvhlVxtag';
  final double _startSeconds = 123;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB
