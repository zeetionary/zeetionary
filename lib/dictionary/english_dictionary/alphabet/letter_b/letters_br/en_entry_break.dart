import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "break" as TYPE and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

enum TtsState { playing }

class EnglishEntrybreak extends StatelessWidget {
// blank divider
  EnglishEntrybreak({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbreak(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("break");
  }

  Future<void> speakbreaks1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("All the windows broke with the force of the blast.");
  }

  Future<void> speakbreaks2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She dropped the plate and it broke into pieces.");
  }

  Future<void> speakbreaks3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The boat hit a rock and broke in half.");
  }

  Future<void> speakbreaks4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She fell off a ladder and broke her arm.");
  }

  Future<void> speakbreaks5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He broke the chocolate in two.");
  }

  Future<void> speakbreaks6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The glass broke into hundreds of pieces.");
  }

  Future<void> speakbreaks7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I didn't mean to break the window.");
  }

  Future<void> speakbreaks8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Charles is always breaking things.");
  }

  Future<void> speakbreaks9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My watch has broken.");
  }

  Future<void> speakbreaks10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I think I've broken the washing machine.");
  }

  Future<void> speakbreaks11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The dog bit me but didn't break the skin.");
  }

  Future<void> speakbreaks12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I had broken the law and deserved to be punished.");
  }

  Future<void> speakbreaks13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("People should not be allowed to break the rules.");
  }

  Future<void> speakbreaks14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was breaking the speed limit.");
  }

  Future<void> speakbreaks15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She had broken the conditions of her bail.");
  }

  Future<void> speakbreaks16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I've never broken my word; why should I do it now?");
  }

  Future<void> speakbreaks17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's break for lunch.");
  }

  Future<void> speakbreaks18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Parliament breaks for recess next week.");
  }

  Future<void> speakbreaks19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Their sleep was broken by noise from the street.");
  }

  Future<void> speakbreaks20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She broke the silence by coughing.");
  }

  Future<void> speakbreaks21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The phone rang, breaking my concentration.");
  }

  Future<void> speakbreaks22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They decided to break their journey in Singapore.");
  }

  Future<void> speakbreaks23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Management has not succeeded in breaking the strike.");
  }

  Future<void> speakbreaks24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The thieves broke the safe open and stole the diamonds.");
  }

  Future<void> speakbreaks25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He broke all ties with his parents.");
  }

  Future<void> speakbreaks26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He finally managed to break free from his attacker.");
  }

  Future<void> speakbreaks27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The horse tried to break free from its stable.");
  }

  Future<void> speakbreaks28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The scandal broke him.");
  }

  Future<void> speakbreaks29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She broke under questioning and confessed to everything.");
  }

  Future<void> speakbreaks30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Williams broke her opponent's serve five times.");
  }

  Future<void> speakbreaks31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The death of his wife broke him completely.");
  }

  Future<void> speakbreaks32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "On the third day the weather broke and they had a violent storm.");
  }

  Future<void> speakbreaks33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The clouds broke and the sun came out.");
  }

  Future<void> speakbreaks34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("When his head broke the surface he took in deep gulps of air.");
  }

  Future<void> speakbreaks35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Dawn was breaking when they finally left.");
  }

  Future<void> speakbreaks36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We arrived just as a storm was breaking.");
  }

  Future<void> speakbreaks37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There was a public outcry when the scandal broke.");
  }

  Future<void> speakbreaks38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Who's going to break it to her?");
  }

  Future<void> speakbreaks39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm sorry to be the one to break the news to you.");
  }

  Future<void> speakbreaks40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her voice broke as she told us the dreadful news.");
  }

  Future<void> speakbreaks41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His voice broke when he was 13.");
  }

  Future<void> speakbreaks42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The movie broke all box-office records.");
  }

  Future<void> speakbreaks43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A huge wave broke against the rocks.");
  }

  Future<void> speakbreaks44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The enemy were unable to break the code.");
  }

  Future<void> speakbreaks45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you break a twenty-dollar bill?");
  }

  Future<void> speakbreaks46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was on her lunch break.");
  }

  Future<void> speakbreaks47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She worked all day without a break.");
  }

  Future<void> speakbreaks48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Come and see me at break.");
  }

  Future<void> speakbreaks49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Employees can take a career break of up to one year.");
  }

  Future<void> speakbreaks50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The team have been taking a break in Spain.");
  }

  Future<void> speakbreaks51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll make us a cup of tea in the next break.");
  }

  Future<void> speakbreaks52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's a great city for a weekend break.");
  }

  Future<void> speakbreaks53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He needed to make a complete break with the past.");
  }

  Future<void> speakbreaks54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their decision to not name their daughter Jane was a break with family tradition.");
  }

  Future<void> speakbreaks55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Wait for a break in the traffic before crossing the road.");
  }

  Future<void> speakbreaks56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Wait for a break in the traffic before crossing the road.");
  }

  Future<void> speakbreaks57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We've had a few bad breaks along the way.");
  }

  Future<void> speakbreaks58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("If you just give me a break, you won’t regret it.");
  }

  Future<void> speakbreaks59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The X-ray showed there was no break in his leg.");
  }

  Future<void> speakbreaks60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Murray must get another break to win.");
  }

  Future<void> speakbreaks61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The champion began with breaks of 74 and 58.");
  }

  Future<void> speakbreaks62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6262");
  }

  Future<void> speakbreaks63(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6363");
  }

  Future<void> speakbreaks64(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6464");
  }

  Future<void> speakbreaks65(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6565");
  }

  Future<void> speakbreaks66(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6666");
  }

  Future<void> speakbreaks67(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6767");
  }

  Future<void> speakbreaks68(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6868");
  }

  Future<void> speakbreaks69(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6969");
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
                            EntryTitle(word: "break"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /breɪk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbreak("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /breɪk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbreak("en-US"),
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
کوردی: شکاوی، شکان، شکست، وردوخاشی، قڵیش، کون، شەبەق، درز، دابڕاوی، پساوی، پسان، پچڕان، ھەڵوێستە، ھەڵوەستە، پشوو، وچان، ورنگ، پێندان، پشووی خوێندن، گۆھارتن، گۆڕان، گۆڕانی ناکاو، دەرچوون، دەربازبوون، ھەڵاتن، چانس، ھەل، دەرفەت، دەلیڤە
"""),
                          const DefinitionKurdish(
                              text: """١. (کردار) شکان یان شکاندن"""),
                          SentencesRow(
                            englishText:
                                "All the windows broke with the force of the blast.",
                            kurdishText:
                                "ھەموو پەنجەرەکان بە ھێزی تەقینەوەکە شکان.",
                            onPressedBritish: () => speakbreaks1("en-GB"),
                            onPressedAmerican: () => speakbreaks1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She dropped the plate and it broke into pieces.",
                            kurdishText:
                                "دەورییەکەی بەردایەوە و پارچەپارچە بوو.",
                            onPressedBritish: () => speakbreaks2("en-GB"),
                            onPressedAmerican: () => speakbreaks2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The boat hit a rock and broke in half.",
                                    kurdishText:
                                        "بەلەمەکە لە تاشە بەردێکی دا و دووکەرت بوو.",
                                    onPressedBritish: () =>
                                        speakbreaks3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbreaks3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She fell off a ladder and broke her arm.",
                                    kurdishText:
                                        "لە پەیژەیەک کەوتە خوارەوە و دەستی شکا.",
                                    onPressedBritish: () =>
                                        speakbreaks4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbreaks4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He broke the chocolate in two.",
                                    kurdishText:
                                        "چکلێتەکەی کرد بە دوو کەرتەوە.",
                                    onPressedBritish: () =>
                                        speakbreaks5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbreaks5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The glass broke into hundreds of pieces.",
                                    kurdishText:
                                        "شووشەکە بوو بە سەدان پارچەوە.",
                                    onPressedBritish: () =>
                                        speakbreaks6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbreaks6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "I didn't mean to break the window.",
                                    kurdishText:
                                        "مەبەستم نەبوو پەنجەرەکە بشکێنم.",
                                    onPressedBritish: () =>
                                        speakbreaks7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbreaks7("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Charles is always breaking things.",
                                    kurdishText: "چارڵس ھەمیشە شت دەشکێنێت.",
                                    onPressedBritish: () =>
                                        speakbreaks8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbreaks8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) وەستان لە کارکردن"),
                          SentencesRow(
                            englishText: "My watch has broken.",
                            kurdishText: "کاتژمێرەکەم وەستاوە.",
                            onPressedBritish: () => speakbreaks9("en-GB"),
                            onPressedAmerican: () => speakbreaks9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I think I've broken the washing machine.",
                            kurdishText: "پێم‌وایە جلشۆرەکەم شکاند.",
                            onPressedBritish: () => speakbreaks10("en-GB"),
                            onPressedAmerican: () => speakbreaks10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) بڕینی پێست و خوێن‌لێ‌ھێنانی"),
                          SentencesRow(
                            englishText:
                                "The dog bit me but didn't break the skin.",
                            kurdishText:
                                "سەگەکە گازی لێ گرتم بەڵام پێستمی نەدڕی.",
                            onPressedBritish: () => speakbreaks11("en-GB"),
                            onPressedAmerican: () => speakbreaks11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) کردنی شتێک کە دژە بە یاسا، بەڵین، ڕێککەوتن، ھتد"),
                          SentencesRow(
                            englishText:
                                "I had broken the law and deserved to be punished.",
                            kurdishText: "یاسام شکاندبوو و شایەنی سزا بووم.",
                            onPressedBritish: () => speakbreaks12("en-GB"),
                            onPressedAmerican: () => speakbreaks12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "People should not be allowed to break the rules.",
                            kurdishText:
                                "خەڵکی نابێت ڕێگایان پێ بدرێت یاساکان بشکێنن.",
                            onPressedBritish: () => speakbreaks13("en-GB"),
                            onPressedAmerican: () => speakbreaks13("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "He was breaking the speed limit (= travelling faster than the law allows).",
                                    kurdishText:
                                        "خێراتر لە خێرایی ڕێگەپێدراو دەچوو.",
                                    onPressedBritish: () =>
                                        speakbreaks14("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbreaks14("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She had broken the conditions of her bail.",
                                    kurdishText:
                                        "مەرجەکانی ئازادکردنی بە کەفالەتی پێشێلکردبوو.",
                                    onPressedBritish: () =>
                                        speakbreaks15("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbreaks15("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "I've never broken my word; why should I do it now?",
                                    kurdishText:
                                        "ھەرگیز قسەی خۆمم نەشکاندووە، بۆچی ئێستا بیکەم؟",
                                    onPressedBritish: () =>
                                        speakbreaks16("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbreaks16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) وەستان لە کردنی شتێک بۆ ماوەیەک"),
                          SentencesRow(
                            englishText: "Let's break for lunch.",
                            kurdishText: "با پشوویەک بۆ نانی نیوەڕۆ وەربگرین.",
                            onPressedBritish: () => speakbreaks17("en-GB"),
                            onPressedAmerican: () => speakbreaks17("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Parliament breaks for recess next week.",
                            kurdishText:
                                "پەرلەمان پشووی ساڵانەی وەردەگرێت ھەفتەی داھاتوو.",
                            onPressedBritish: () => speakbreaks18("en-GB"),
                            onPressedAmerican: () => speakbreaks18("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Their sleep was broken by noise from the street.",
                            kurdishText:
                                "لە خەو ڕاپەڕین بە دەنگەدەنگی سەر شەقامەکە.",
                            onPressedBritish: () => speakbreaks19("en-GB"),
                            onPressedAmerican: () => speakbreaks19("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) وەستاندنی شتێک لە ناکاو بەشێوەیەک کە کۆتایی پێ دێت"),
                          SentencesRow(
                            englishText: "She broke the silence by coughing.",
                            kurdishText:
                                "بە کۆکەیەک کۆتایی بە بێ‌دەنگییەکە ھێنا.",
                            onPressedBritish: () => speakbreaks20("en-GB"),
                            onPressedAmerican: () => speakbreaks20("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The phone rang, breaking my concentration.",
                            kurdishText: "موبایلەکە زەنگی لێدا و سەرنجمی برد.",
                            onPressedBritish: () => speakbreaks21("en-GB"),
                            onPressedAmerican: () => speakbreaks21("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They decided to break their journey in Singapore.",
                            kurdishText:
                                "بڕیاریاندا لە سەنگاپوورە کۆتایی بە گەشتەکەیان بێنن.",
                            onPressedBritish: () => speakbreaks22("en-GB"),
                            onPressedAmerican: () => speakbreaks22("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) کۆتایی ھێنانی شتێک بە ھێز"),
                          SentencesRow(
                            englishText:
                                "Management has not succeeded in breaking the strike.",
                            kurdishText:
                                "بەڕێوبەرایەتییەکە نەیتوانی مانگرتنەکە کۆتایی پێ‌بھێنێت.",
                            onPressedBritish: () => speakbreaks23("en-GB"),
                            onPressedAmerican: () => speakbreaks23("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The thieves broke the safe open and stole the diamonds.",
                            kurdishText:
                                "دزەکان قاسەکەیان شکاندبوو و ئەڵماسەکانیان دزی بوو.",
                            onPressedBritish: () => speakbreaks24("en-GB"),
                            onPressedAmerican: () => speakbreaks24("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) پچڕانی پەیوەندی"),
                          SentencesRow(
                            englishText: "He broke all ties with his parents.",
                            kurdishText:
                                "ھەموو پەیوەندییەکی لەگەڵ دایک و باوکی پچڕاند.",
                            onPressedBritish: () => speakbreaks25("en-GB"),
                            onPressedAmerican: () => speakbreaks25("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) ھەڵھاتن لە شوێنێک یان لەدەست کەسێک"),
                          SentencesRow(
                            englishText:
                                "He finally managed to break free from his attacker.",
                            kurdishText:
                                "لە کۆتاییدا توانی لەدەست ھێرشکارەکەی ھەڵبێت.",
                            onPressedBritish: () => speakbreaks26("en-GB"),
                            onPressedAmerican: () => speakbreaks26("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The horse tried to break free from its stable.",
                            kurdishText: "ئەسپەکە ھەوڵیدا لە تەویلەکە ھەڵبێت.",
                            onPressedBritish: () => speakbreaks27("en-GB"),
                            onPressedAmerican: () => speakbreaks27("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) لاوازکردن یان لاوازبوون؛ وێرانبوون یان وێرانکردن"),
                          SentencesRow(
                            englishText:
                                "The scandal broke him (= ruined his reputation and destroyed his confidence).",
                            kurdishText: "ئابڕووچوونەکە کۆتایی پێھێنا.",
                            onPressedBritish: () => speakbreaks28("en-GB"),
                            onPressedAmerican: () => speakbreaks28("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She broke under questioning (= was no longer able to bear it) and confessed to everything.",
                            kurdishText:
                                "شەکەت بوو بەدەست پرسیارەوە و دانی بە ھەموو شتێکدا نا.",
                            onPressedBritish: () => speakbreaks29("en-GB"),
                            onPressedAmerican: () => speakbreaks29("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) (لە تێنسدا) بردنەوەی یارییەک ھەرکە ڕکابەرەکە یەکەم سێرڤ لێدەدات"),
                          SentencesRow(
                            englishText:
                                "Williams broke her opponent's serve five times.",
                            kurdishText:
                                "ولیام پێنج جار وەڵامی سێرڤی بەرامبەرەکەی دایەوە.",
                            onPressedBritish: () => speakbreaks30("en-GB"),
                            onPressedAmerican: () => speakbreaks30("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (کردار) وا لە کەسێک بکەیت ھەست بە بێزاری، تەنھایی، ھتد بکات و ژیانێکی ئاسایی نەژی"),
                          SentencesRow(
                            englishText:
                                "The death of his wife broke him completely.",
                            kurdishText: "مردنی ھاوژینەکەی بەتەواوی تێکیشکاند.",
                            onPressedBritish: () => speakbreaks31("en-GB"),
                            onPressedAmerican: () => speakbreaks31("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (کردار) کەشوھەوایەک کە دەگۆڕێت، بەتایبەتی لە دوای ماوەیەک لە باشبوون"),
                          SentencesRow(
                            englishText:
                                "On the third day the weather broke and they had a violent storm.",
                            kurdishText:
                                "لە ڕۆژی سێیەمدا کەشەکە گۆڕا و زریانێکی بەھێز ھات.",
                            onPressedBritish: () => speakbreaks32("en-GB"),
                            onPressedAmerican: () => speakbreaks32("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٤. (کردار) ھەورێک کە شەقێکی تێدەکەوێت"),
                          SentencesRow(
                            englishText:
                                "The clouds broke and the sun came out.",
                            kurdishText: "ھەورەکان شەقبوون و خۆرەکە دەرکەوت.",
                            onPressedBritish: () => speakbreaks33("en-GB"),
                            onPressedAmerican: () => speakbreaks33("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٥. (کردار) ھاتنە دەرەوە لە دەریایەک، مەلەوانگەیەک، ھتد"),
                          SentencesRow(
                            englishText:
                                "When his head broke the surface he took in deep gulps of air.",
                            kurdishText:
                                "کە سەری دەرکرد لە ئاوەکە ھەناسەی قووڵی ھەڵمژی.",
                            onPressedBritish: () => speakbreaks34("en-GB"),
                            onPressedAmerican: () => speakbreaks34("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٦. (کردار) کە ڕۆژ، بەیانی، یان زریانێک دەستپێ‌دەکات"),
                          SentencesRow(
                            englishText:
                                "Dawn was breaking when they finally left.",
                            kurdishText:
                                "بەرەبەیان دەستی‌‌پێکرد کە لەکۆتاییدا ڕۆشتن.",
                            onPressedBritish: () => speakbreaks35("en-GB"),
                            onPressedAmerican: () => speakbreaks35("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We arrived just as a storm was breaking.",
                            kurdishText: "گەشتین کە زریانێک دەستی‌پێدەکرد.",
                            onPressedBritish: () => speakbreaks36("en-GB"),
                            onPressedAmerican: () => speakbreaks36("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٧. (کردار) ئاشکراکردنی ھەواڵێک"),
                          SentencesRow(
                            englishText:
                                "There was a public outcry when the scandal broke.",
                            kurdishText:
                                "ناڕەزاییەکی زۆر ھەبوو کە ئابڕووچوونەکە ئاشکرابوو.",
                            onPressedBritish: () => speakbreaks37("en-GB"),
                            onPressedAmerican: () => speakbreaks37("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٨. (کردار) بوون بە یەکەم کەس ھەواڵێکی ناخۆش بە کەسێک بڵێیت"),
                          SentencesRow(
                            englishText: "Who's going to break it to her?",
                            kurdishText: "کێ ھەواڵەکەی پێ‌ دەڵێت؟",
                            onPressedBritish: () => speakbreaks38("en-GB"),
                            onPressedAmerican: () => speakbreaks38("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I'm sorry to be the one to break the news to you.",
                            kurdishText:
                                "بەداخەوەم کە دەبم بەو کەسەی ھەواڵەکەت پێ ڕادەگەیەنم.",
                            onPressedBritish: () => speakbreaks39("en-GB"),
                            onPressedAmerican: () => speakbreaks39("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٩. (کردار) گۆڕانی تۆنی دەنگ بەھۆی ھەستو سۆزەوە"),
                          SentencesRow(
                            englishText:
                                "Her voice broke as she told us the dreadful news.",
                            kurdishText:
                                "دەنگی دەلەرزی کە ھەواڵە ناخۆشەکەی پێ گوتین.",
                            onPressedBritish: () => speakbreaks40("en-GB"),
                            onPressedAmerican: () => speakbreaks40("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٠. (کردار) کە دەنگی کوڕێک وەک دەنگی پیاوی لێ دێت"),
                          SentencesRow(
                            englishText: "His voice broke when he was 13.",
                            kurdishText: "دەنگی گڕ بوو کە ١٣ ساڵان بوو.",
                            onPressedBritish: () => speakbreaks41("en-GB"),
                            onPressedAmerican: () => speakbreaks41("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢١. (کردار) شکاندنی ڕیکۆردێک"),
                          SentencesRow(
                            englishText:
                                "The movie broke all box-office records.",
                            kurdishText:
                                "فیلمەکە ھەموو ڕیکۆردەکانی بۆکس ئۆفیسی شکاند.",
                            onPressedBritish: () => speakbreaks42("en-GB"),
                            onPressedAmerican: () => speakbreaks42("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٢. (کردار) کە شەپۆلێک دەکێشێت بە شتێکدا، و دەکەوێت و نامێنێت"),
                          SentencesRow(
                            englishText: "A huge wave broke against the rocks.",
                            kurdishText:
                                "شەپۆلێکی گەورە کێشای بە تاشە بەردەکاندا.",
                            onPressedBritish: () => speakbreaks43("en-GB"),
                            onPressedAmerican: () => speakbreaks43("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٣. (کردار) زانینی واتای شتێکی نھێنی"),
                          SentencesRow(
                            englishText:
                                "The enemy were unable to break the code (= understand it and so make it useless).",
                            kurdishText: "دوژمن نەیانتوانی واتای کۆدەکە بزانن.",
                            onPressedBritish: () => speakbreaks44("en-GB"),
                            onPressedAmerican: () => speakbreaks44("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٤. (کردار) دراوێکی دۆلار بگۆڕیت بۆ دراو"),
                          SentencesRow(
                            englishText: "Can you break a twenty-dollar bill?",
                            kurdishText: "دەتوانیت ٢٠ دۆلارییەک ورد بکەیتەوە؟",
                            onPressedBritish: () => speakbreaks45("en-GB"),
                            onPressedAmerican: () => speakbreaks45("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٥. (ناو) وچانێکی کەم بۆ حەسانەوە، نان خواردن، ھتد"),
                          SentencesRow(
                            englishText: "She was on her lunch break.",
                            kurdishText: "لە پشووی نانی نیوەڕۆی بوو؟",
                            onPressedBritish: () => speakbreaks46("en-GB"),
                            onPressedAmerican: () => speakbreaks46("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She worked all day without a break.",
                            kurdishText: "تەواوی ڕۆژەکە بەبێ پشوو کاری کرد.",
                            onPressedBritish: () => speakbreaks47("en-GB"),
                            onPressedAmerican: () => speakbreaks47("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٦. (ناو) پشووی نێوان وانەکانی خوێندنگە"),
                          SentencesRow(
                            englishText: "Come and see me at break.",
                            kurdishText: "لە پشووەکەدا وەرە بۆ لام.",
                            onPressedBritish: () => speakbreaks48("en-GB"),
                            onPressedAmerican: () => speakbreaks48("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٧. (ناو) ماوەیەک کە شتێک دەوەستێت پێش ئەوەی دووبارە دەستپێ‌بکاتەوە"),
                          SentencesRow(
                            englishText:
                                "Employees can take a career break of up to one year.",
                            kurdishText:
                                "کارمەندان دەتوانن دابڕانک لە کارکردن وەربگرن بۆ ماوەی یەک ساڵ.",
                            onPressedBritish: () => speakbreaks49("en-GB"),
                            onPressedAmerican: () => speakbreaks49("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The team have been taking a break in Spain.",
                            kurdishText: "تیمەکە پشوو لە ئیسپانیا وەردەگرن.",
                            onPressedBritish: () => speakbreaks50("en-GB"),
                            onPressedAmerican: () => speakbreaks50("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٨. (ناو) ماوەیەکی کەم کە پڕۆگرامێکی تەلەفیزیۆنی یان ڕادیۆ دەوەستێت بۆ پیشاندانی سپۆنسەر"),
                          SentencesRow(
                            englishText:
                                "I'll make us a cup of tea in the next break.",
                            kurdishText:
                                "پێڵایەک چا بۆ ھەردووکمان ئامادە دەکەم لە وچانی دواتردا.",
                            onPressedBritish: () => speakbreaks51("en-GB"),
                            onPressedAmerican: () => speakbreaks51("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٩. (ناو) پشوویەکی کورت"),
                          SentencesRow(
                            englishText:
                                "It's a great city for a weekend break.",
                            kurdishText:
                                "شارێکی خۆشە بۆ پشوویەکی کۆتایی ھەفتە.",
                            onPressedBritish: () => speakbreaks52("en-GB"),
                            onPressedAmerican: () => speakbreaks52("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣٠. (ناو) ئەو ساتەی کە دۆخێک یان پەیوەندییەک کە بۆ ماوەیەکی درێژە بوونی ھەیە دەگۆڕێت، کۆتایی دێت، یان دەپچڕێت"),
                          SentencesRow(
                            englishText:
                                "He needed to make a complete break with the past.",
                            kurdishText:
                                "پێویستی بوو دابڕانێکی تەواو لە ڕابردوو وەربگرێت.",
                            onPressedBritish: () => speakbreaks53("en-GB"),
                            onPressedAmerican: () => speakbreaks53("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Their decision to not name their daughter Jane was a break with family tradition.",
                            kurdishText:
                                "بڕیارەکەیان کە منداڵەکەیان ناو نەنێن جەین دابڕانێک بوو لە نەریتی خێزانەکە.",
                            onPressedBritish: () => speakbreaks54("en-GB"),
                            onPressedAmerican: () => speakbreaks54("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣١. (ناو) شەقێک یان بۆشاییەک لە نێوان دوو شت یان زیاتر"),
                          SentencesRow(
                            englishText:
                                "We could see the moon through a break in the clouds.",
                            kurdishText:
                                "دەمانتوانی مانگ ببینین لە شەقێکەوە لە ھەورەکاندا.",
                            onPressedBritish: () => speakbreaks55("en-GB"),
                            onPressedAmerican: () => speakbreaks55("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Wait for a break in the traffic before crossing the road.",
                            kurdishText:
                                "بوەستە بەینێک بکەوێتە ترافیکەوە پێش ئەوەی بپەڕیتەوە.",
                            onPressedBritish: () => speakbreaks56("en-GB"),
                            onPressedAmerican: () => speakbreaks56("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣٢. (ناو) بەختێک، دەرفەتێک بۆ کردنی شتێک"),
                          SentencesRow(
                            englishText:
                                "We've had a few bad breaks (= pieces of bad luck) along the way.",
                            kurdishText:
                                "تووشی ھەندێک بەختی خراپ بووین لە پڕۆسەکەدا.",
                            onPressedBritish: () => speakbreaks57("en-GB"),
                            onPressedAmerican: () => speakbreaks57("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "If you just give me a break, you won’t regret it.",
                            kurdishText:
                                "ئەگەر دەرفەتێکم پێ بدەیت پەشیمان نابی.",
                            onPressedBritish: () => speakbreaks58("en-GB"),
                            onPressedAmerican: () => speakbreaks58("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣٣. (ناو) شوێنی شکان، بەتایبەتی لە ئێسکی جەستەدا"),
                          SentencesRow(
                            englishText:
                                "The X-ray showed there was no break in his leg.",
                            kurdishText:
                                "تیشکە ئێکسەکە دەریخست ھیچ شکانێک لە لاقیدا نییە.",
                            onPressedBritish: () => speakbreaks59("en-GB"),
                            onPressedAmerican: () => speakbreaks59("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣٤. (ناو) لە تێنسدا بردنەوە لە یارییەکە کە ڕکابەرەکەت یەکەم سێرڤ لێ دەدات"),
                          SentencesRow(
                            englishText:
                                "Murray must get another break to win.",
                            kurdishText:
                                "مۆرای دەبێت بردنەوەیەکی دیکەی ھەبێت بۆ ئەوەی بباتەوە.",
                            onPressedBritish: () => speakbreaks60("en-GB"),
                            onPressedAmerican: () => speakbreaks60("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣٥. (ناو) لە بلیارددا ژمارەی ئەو خاڵانەیە کە بە زنجیرەیەک لە لێدانی سەرکەوتووانە لەلایەن یاریزانێکەوە لە یەک نۆرەدا بەدەست دێت"),
                          SentencesRow(
                            englishText:
                                "The champion began with breaks of 74 and 58.",
                            kurdishText:
                                "پاڵەوانەکە دەستی پێکرد بە بردنەوەی خاڵی ٧٤ و ٥٨ی.",
                            onPressedBritish: () => speakbreaks61("en-GB"),
                            onPressedAmerican: () => speakbreaks61("en-US"),
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
- Verb: break (derived forms: broken, breaking, breaks, broke)
1. Destroy the integrity of; usually by force; cause to separate into pieces or fragments
"He broke the glass plate"; "She broke the match"
 
2. Become separated into pieces or fragments (= separate, split up, fall apart, come apart)
"The figurine broke";

3. Render inoperable or ineffective (= hose [N. Amer, informal])
"You broke the alarm clock when you took it apart!";
 
4. Ruin completely (= bust [informal])
 
5. Terminate or end (= interrupt)
"break a lucky streak"; "break the cycle of poverty";
 
6. Act in disregard of laws, rules, contracts, or promises (= transgress, offend, infract, violate, go against, breach)
"break a law";

7. Move away or escape suddenly (= break out, break away)
"The horses broke from the stable"; "Three inmates broke jail"; "Nobody can break out--this prison is high security"; "The horses broke away from the stable";
 
8. Scatter or part
"The clouds broke after the heavy downpour"
 
9. Force out or release suddenly and often violently something pent up (= burst, erupt)
"break into tears";

10. Prevent completion (= break off, discontinue, stop)
"break off the negotiations";
 
11. Enter someone's (virtual or real) property in an unauthorized manner, usually with the intent to steal or commit a violent act (= break in)
"Someone broke in while I was on vacation"; "They broke into my car and stole my radio!"; "who broke into my account last night?";
 
12. Make submissive, obedient, or useful (= break in)
"The horse was tough to break"; "I broke in the new intern";
 
13. Fail to agree with; be in violation of; as of rules or patterns (= violate, go against)
"This sentence breaks the rules of syntax";

14. Surpass in excellence (= better)
"break a record";

15. Make known to the public information that was previously known only to a few people or that was meant to be kept a secret (= unwrap, disclose, let on, bring out, reveal, discover, expose, divulge, give away, let out, uncover, lay bare)
"he broke the news to her";

16. Come into being
"light broke over the horizon"; "Voices broke in the air"
 
17. Stop operating or functioning (= fail, go bad, give way, die, give out, conk out [informal], go, break down, pack up [Brit, informal])
"The bus we travelled in broke down on the way to town"; "The coffee maker broke";
 
18. Interrupt a continued activity (= break away)
 
19. (military) make a rupture in the ranks of the enemy or one's own by quitting or fleeing
"The ranks broke"
 
20. Curl over and fall apart in surf or foam, of waves
"The surf broke"
 
21. Lessen in force or effect (= dampen, damp, soften, weaken)
"break a fall";

22. Be broken in
"If the new teacher won't break, we'll add some stress"
 
23. Come to an end
"The heat wave finally broke yesterday"
 
24. Vary or interrupt a uniformity or continuity
 
25. Cause to give up a habit
"She finally broke herself of smoking cigarettes"
 
26. Give up
"break cigarette smoking"
 
27. Come forth or begin from a state of latency
"The first winter storm broke over New York"
 
28. Happen or take place
"Things have been breaking pretty well for us in the past few months"
 
29. Cause the failure or ruin of
"His peccadilloes finally broke his marriage"; "This play will either make or break the playwright"
 
30. Invalidate by judicial action
 
31. Discontinue an association or relation; go different ways (= separate, part, split up, split, break up)
"The business partners broke over a tax question"; "The couple broke up after 25 years of marriage";
 
32. Assign to a lower position; reduce in rank (= demote, bump, relegate, kick downstairs)
 
33. Reduce to bankruptcy (= bankrupt, ruin, smash)
"My daughter's fancy wedding is going to break me!";
 
34. Change directions suddenly
 
35. Emerge from the surface of a body of water
"The whales broke"
 
36. Break down, literally or metaphorically (= collapse, fall in, cave in, give, give way, founder)
"The dam broke";
 
37. Do a break dance (= break dance, break-dance)
"Kids were break-dancing at the street corner";
 
38. Exchange for smaller units of money
"I had to break a £100 bill just to buy the candy"
 
39. Destroy the completeness of a set of related items (= break up)
"The book dealer would not break the set";

40. (billiards) make the opening shot that scatters the balls
 
41. Separate from a clinch, in boxing
"The referee broke the boxers"
 
42. Go to pieces (= wear, wear out, bust [informal], fall apart)
"The lawn mower finally broke";
 
43. Break a piece from a whole (= break off, snap off)
"break a branch from a tree";

44. Become punctured or penetrated
"The skin broke"
 
45. Pierce or penetrate
"The blade broke her skin"
 
46. Be released or become known; of news (= get out, get around)
"News of her death broke in the morning";
 
47. Cease an action temporarily (= pause, intermit)
"let's break for lunch";

48. Interrupt the flow of current in
"break a circuit"
 
49. Undergo breaking
"The simple vowels broke in many Germanic languages"
 
50. Find a flaw in
"break an alibi"; "break down a proof"
 
51. Find the solution or key to
"break the code"
 
52. Change suddenly from one tone quality or register to another
"Her voice broke to a whisper when she started to talk about her children"
 
53. Happen (= recrudesce, develop)
"These political movements break from time to time";
 
54. Become fractured; break or crack on the surface only (= crack, check)
"The glass broke when it was heated";

55. Crack; of the male voice in puberty
"his voice is breaking--he should no longer sing in the choir"
 
56. Fall sharply
"stock prices broke"
 
57. Fracture a bone of (= fracture)
"I broke my foot while playing hockey";
 
58. Diminish or discontinue abruptly
"The patient's fever broke last night"
 
59. Weaken or destroy in spirit or body
 
60. Yield information under interrogation or torture (= crack)
"They managed to break him on the third day";
 
61. Successfully decipher a code (= crack)

- Noun: break (derived forms: breaks)
1. A pause from doing something (as work) (= respite, recess, time out)
"we took a 10-minute break";

2. Some abrupt occurrence that interrupts an ongoing activity (= interruption)
"there was a break in the action when a player was hurt";
 
3. An unexpected piece of good luck (= good luck, happy chance)
"he finally got his big break";
 
4. (geology) a crack in the earth's crust resulting from the displacement of one side with respect to the other (= fault, faulting, geological fault, shift, fracture)
"they built it right over a geological break";

5. A personal or social separation (as between opposing factions) (= rupture, breach, severance, rift, falling out)
"they hoped to avoid a break in relations";

6. The act of breaking something (= breakage, breaking)
"the break was unavoidable";

7. A time interval during which there is a temporary cessation of something (= pause, intermission, interruption, suspension)
 
8. Breaking of hard tissue such as bone (= fracture)
"the break seems to have been caused by a fall";
 
9. The occurrence of breaking
"the break in the dam threatened the valley"
 
10. An abrupt change in the tone or register of the voice (as at puberty or due to emotion)
"then there was a break in her voice"
 
11. The opening shot that scatters the balls in billiards or pool
 
12. (tennis) a score consisting of winning a game when your opponent was serving (= break of serve)
"he was up two breaks in the second set";

13. An act of delaying or interrupting the continuity (= interruption, disruption, gap)
"it was presented without commercial breaks";

14. A sudden dash
"he made a break for the open door"
 
15. Any frame in which a bowler fails to make a strike or spare (= open frame)
"the break in the eighth frame cost him the match";

16. An escape from jail (= breakout, jailbreak, gaolbreak, prisonbreak, prison-breaking)
"the break was carefully planned";
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

  final String _videoId = '_spuxXnul0U';
  final double _startSeconds = 904;

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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 195;

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

  final String _videoId = 'aHBLOkfJSYI';
  final double _startSeconds = 48;

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

  final String _videoId = 'PGk3qLxwmDQ';
  final double _startSeconds = 665;

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

  final String _videoId = 'k3aAl92_VDE';
  final double _startSeconds = 265;

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

  final String _videoId = 'LAOoF2gyQaA';
  final double _startSeconds = 30;

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

  final String _videoId = 'C_MDnd7px-I';
  final double _startSeconds = 6;

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

  final String _videoId = 'MnExgQ81fhU';
  final double _startSeconds = 544;

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

  final String _videoId = 'D-2799Y07Zc';
  final double _startSeconds = 371;

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

  final String _videoId = '03VAIrkmrD0';
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 836;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'FmEJkU6r_Rs';
  final double _startSeconds = 62;

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

// end

// /breɪk/
// end break
