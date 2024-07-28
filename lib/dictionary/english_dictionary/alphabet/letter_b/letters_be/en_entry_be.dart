import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "be" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace be - replace EnglishEntrybe

// replace speakBe - /bi/, strong form  /biː/

enum TtsState { playing }

class EnglishEntrybe extends StatelessWidget {
// blank divider
  EnglishEntrybe({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbe(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("be");
  }

  Future<void> speakbes1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Today is Monday.");
  }

  Future<void> speakbes2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He is ten years old.");
  }

  Future<void> speakbes3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Be quick!");
  }

  Future<void> speakbes4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was really hot in the Spain.");
  }

  Future<void> speakbes5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He thinks it's clever to make fun of people.");
  }

  Future<void> speakbes6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Is there a country called Canada?");
  }

  Future<void> speakbes7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's from Italy.");
  }

  Future<void> speakbes8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The party is on Friday evening.");
  }

  Future<void> speakbes9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She has been in her room for hours.");
  }

  Future<void> speakbes10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll be at the party.");
  }

  Future<void> speakbes11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's two thirty.");
  }

  Future<void> speakbes12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("‘How much is that dress?’ ‘Eighty dollars.’");
  }

  Future<void> speakbes13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Three and three is six.");
  }

  Future<void> speakbes14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How much is a thousand pounds in euros?");
  }

  Future<void> speakbes15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Is your jacket real leather?");
  }

  Future<void> speakbes16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The money's not yours, it's John's.");
  }

  Future<void> speakbes17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Money isn't everything.");
  }

  Future<void> speakbes18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A thousand dollars is nothing to somebody as rich as he is.");
  }

  Future<void> speakbes19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I am studying Chinese.");
  }

  Future<void> speakbes20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll be seeing him soon.");
  }

  Future<void> speakbes21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You're not hungry, are you?");
  }

  Future<void> speakbes22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Ben's coming, isn't he?");
  }

  Future<void> speakbes23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Where were they made?");
  }

  Future<void> speakbes24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Karen wasn't beaten in any of her games, but all the others were.");
  }

  Future<void> speakbes25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I am to call them once I reach the airport.");
  }

  Future<void> speakbes26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You are to report this to the police.");
  }

  Future<void> speakbes27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was to regret that decision for the rest of his life.");
  }

  Future<void> speakbes28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Anna was nowhere to be found.");
  }

  Future<void> speakbes29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was never to see his wife again.");
  }

  Future<void> speakbes30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("If we were to offer you more money, would you stay?");
  }

  Future<void> speakbes31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Were we to offer you more money, would you stay?");
  }

  Future<void> speakbes32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've never been to Spain.");
  }

  Future<void> speakbes33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I tried phoning but there was no answer.");
  }

  Future<void> speakbes34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The town is three miles away.");
  }

  Future<void> speakbes35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was killed in the war.");
  }

  Future<void> speakbes36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They are to be married in June.");
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
                            EntryTitle(word: "be"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUK: /bi/, strong form  /biː/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbe("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUS: /bi/, strong form  /biː/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbe("en-US"),
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
                          const DefinitionKurdish(text: """
١. (کردار) وەک کرداری یاریدەدەر بەکاردێت بۆ ناونانی خەڵکی یان شت، یان بۆ ناساندنیان یان پێدانی زانیاریی زیاتر"""),
                          SentencesRow(
                            englishText: "Today is Monday.",
                            kurdishText: "ئەمڕۆ دووشەممەیە.",
                            onPressedBritish: () => speakbes1("en-GB"),
                            onPressedAmerican: () => speakbes1("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "He is ten years old.",
                            kurdishText: "ئەو دە ساڵە.",
                            onPressedBritish: () => speakbes2("en-GB"),
                            onPressedAmerican: () => speakbes2("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "Be quick!",
                            kurdishText: "خێرابە!",
                            onPressedBritish: () => speakbes3("en-GB"),
                            onPressedAmerican: () => speakbes3("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) بەشێوەی is و was بەکاردێت لەگەڵ it بۆ باسکردنی دۆخێک یان دەربڕینی بۆچوونت لەسەری"""),
                          SentencesRow(
                            englishText: "It was really hot in the Spain.",
                            kurdishText: "زۆر گەرم بوو لە ئیسپانیا.",
                            onPressedBritish: () => speakbes4("en-GB"),
                            onPressedAmerican: () => speakbes4("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "He thinks it's clever to make fun of people.",
                            kurdishText:
                                "وابیردەکاتەوە ئازاییە گاڵتە بە خەڵکی بکەیت.",
                            onPressedBritish: () => speakbes5("en-GB"),
                            onPressedAmerican: () => speakbes5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) شتێک بوونی ھەبێت"""),
                          SentencesRow(
                            englishText:
                                "I tried phoning but there was no answer.",
                            kurdishText: "تەلەفۆنم کرد بەڵام وەڵام نەدرایەوە.",
                            onPressedBritish: () => speakbes33("en-GB"),
                            onPressedAmerican: () => speakbes33("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "Is there a country called Canada?",
                            kurdishText: "وڵاتێک ھەیە بەناوی کەنەدا؟",
                            onPressedBritish: () => speakbes6("en-GB"),
                            onPressedAmerican: () => speakbes6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) بۆ دیاریکردنی شوێن"""),
                          SentencesRow(
                            englishText: "The town is three miles away.",
                            kurdishText: "شارۆچکەکە سێ میل دوورە.",
                            onPressedBritish: () => speakbes34("en-GB"),
                            onPressedAmerican: () => speakbes34("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) بەکاردێت بۆ دیاریکردنی شوێنی لەدایکبوون یان شوێنی ژیانی کەسێک"""),
                          SentencesRow(
                            englishText: "She's from Italy.",
                            kurdishText: "خەڵکی ئیتالیایە.",
                            onPressedBritish: () => speakbes7("en-GB"),
                            onPressedAmerican: () => speakbes7("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) بەکاردێت بۆ دیاریکردنی کاتی ڕوودانی شتێک"""),
                          SentencesRow(
                            englishText: "The party is on Friday evening.",
                            kurdishText: "ئاھەنگەکە لە شەوی ھەینی دەبێت.",
                            onPressedBritish: () => speakbes8("en-GB"),
                            onPressedAmerican: () => speakbes8("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) مانەوە لە شوێنێک"""),
                          SentencesRow(
                            englishText: "She has been in her room for hours.",
                            kurdishText:
                                "بۆ چەندین کاتژمێرە لە ژوورەکەی ماوەتەوە.",
                            onPressedBritish: () => speakbes9("en-GB"),
                            onPressedAmerican: () => speakbes9("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) بەژداربوون لە ئاھەنگێک یان ئامادەبوون لە شوێنێک"""),
                          SentencesRow(
                            englishText: "I'll be at the party.",
                            kurdishText: "لە ئاھەنگەکە دەبم.",
                            onPressedBritish: () => speakbes10("en-GB"),
                            onPressedAmerican: () => speakbes10("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (کردار) بۆ وتنی کات"""),
                          SentencesRow(
                            englishText: "It's two thirty.",
                            kurdishText: "کاتژمێر دوو نیوە.",
                            onPressedBritish: () => speakbes11("en-GB"),
                            onPressedAmerican: () => speakbes11("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) بۆ وتنی تێچووی شتێک"""),
                          SentencesRow(
                            englishText:
                                "‘How much is that dress?’ ‘Eighty dollars.’",
                            kurdishText: "'ئەو کراسە بە چەندە؟' 'ھەشتا دۆلار.'",
                            onPressedBritish: () => speakbes12("en-GB"),
                            onPressedAmerican: () => speakbes12("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) بۆ وتنی ئەوەی دوو شت یەکسانن"""),
                          SentencesRow(
                            englishText: "Three and three is six.",
                            kurdishText: "سێ و سێ شەش دەکات.",
                            onPressedBritish: () => speakbes13("en-GB"),
                            onPressedAmerican: () => speakbes13("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "How much is a thousand pounds in euros?",
                            kurdishText: "ھەزار پاوەند بە یۆرۆ دەبێتە چەند؟",
                            onPressedBritish: () => speakbes14("en-GB"),
                            onPressedAmerican: () => speakbes14("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) سەردانکردن یان پەیوەندیکردن بە شوێنێکەوە"""),
                          SentencesRow(
                            englishText: "I've never been to Spain.",
                            kurdishText: "ھەرگیز نەچوومەتە ئیسپانیا.",
                            onPressedBritish: () => speakbes32("en-GB"),
                            onPressedAmerican: () => speakbes32("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (کردار) بۆ وتنی ئەوەی شتێک لە چی درووستکراوە"""),
                          SentencesRow(
                            englishText: "Is your jacket real leather?",
                            kurdishText: "چاکەتەکەت چەرمی ئەسڵییە؟",
                            onPressedBritish: () => speakbes15("en-GB"),
                            onPressedAmerican: () => speakbes15("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (کردار) بۆ وتنی ئەوەی شتێک ھی کێیە"""),
                          SentencesRow(
                            englishText: "The money's not yours, it's John's.",
                            kurdishText: "پارەکە ھی تۆ نییە، ھی جۆنە.",
                            onPressedBritish: () => speakbes16("en-GB"),
                            onPressedAmerican: () => speakbes16("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٥. (کردار) بۆ وتنی ئەوەی شتێک چەندە گرنگە بۆ کەسێک"""),
                          SentencesRow(
                            englishText:
                                "Money isn't everything (= it is not the only important thing).",
                            kurdishText: "پارە ھەموو شت نییە.",
                            onPressedBritish: () => speakbes17("en-GB"),
                            onPressedAmerican: () => speakbes17("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "A thousand dollars is nothing to somebody as rich as he is.",
                            kurdishText:
                                "ھەزار دۆلار بۆ دەوڵەمەندێکی وەک ئەو ھیچ نییە.",
                            onPressedBritish: () => speakbes18("en-GB"),
                            onPressedAmerican: () => speakbes18("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٦. (کاری یاریدەدەر) لەگەڵ کاری ڕانەبردووی تەواو (کردار + ing) بەکاردێت بۆ دیاریکردنی دەمی بەردەوامی"""),
                          SentencesRow(
                            englishText: "I am studying Chinese.",
                            kurdishText: "زمانی چینی دەخوێنم.",
                            onPressedBritish: () => speakbes19("en-GB"),
                            onPressedAmerican: () => speakbes19("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "I'll be seeing him soon.",
                            kurdishText: "بەم‌زوانە دەیبینم.",
                            onPressedBritish: () => speakbes20("en-GB"),
                            onPressedAmerican: () => speakbes20("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٧. (کاری یاریدەدەر) بەکاردێت بۆ درووستکردنی کلکە پرسیار"""),
                          SentencesRow(
                            englishText: "You're not hungry, are you?",
                            kurdishText: "برسیت نییە، وایە؟",
                            onPressedBritish: () => speakbes21("en-GB"),
                            onPressedAmerican: () => speakbes21("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "Ben's coming, isn't he?",
                            kurdishText: "بێن دێت، وایە؟",
                            onPressedBritish: () => speakbes22("en-GB"),
                            onPressedAmerican: () => speakbes22("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٨. (کاری یاریدەدەر) لەگەڵ کاری ڕابردووی تەواو بەکاردێت بۆ درووستکردنی ڕستەی نادیار"""),
                          SentencesRow(
                            englishText: "He was killed in the war.",
                            kurdishText: "لە جەنگەکە کوژرا.",
                            onPressedBritish: () => speakbes35("en-GB"),
                            onPressedAmerican: () => speakbes35("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "Where were they made?",
                            kurdishText: "لەکوێ درووستکران؟",
                            onPressedBritish: () => speakbes23("en-GB"),
                            onPressedAmerican: () => speakbes23("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٩. (کاری یاریدەدەر) بۆ دووربوون لە دووبارە بەکارھێنانەوەی تەواوی کردارێک لە دەمی نادیار یان بەردەوامی"""),
                          SentencesRow(
                            englishText:
                                "Karen wasn't beaten in any of her games, but all the others were.",
                            kurdishText:
                                "کارن لە ھیچ کام لە یارییەکانی شکستی پێ‌نەھێندرا، بەڵام توانرا بۆ تەواوی ئەوانی تر.",
                            onPressedBritish: () => speakbes24("en-GB"),
                            onPressedAmerican: () => speakbes24("en-US"),
                          ),
                          // // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٠. (کاری یاریدەدەر) بۆ پیشاندانی ئەوەی چی دەبێت یان پێویستە بکرێت"""),
                          SentencesRow(
                            englishText:
                                "I am to call them once I reach the airport.",
                            kurdishText:
                                "دەبێت پەیوەندییان پێوە بکەم کە دەگەمە فڕۆکەخانەکە.",
                            onPressedBritish: () => speakbes25("en-GB"),
                            onPressedAmerican: () => speakbes25("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "You are to report this to the police.",
                            kurdishText: "دەبێت ئەمە بە پۆلیس بگەیەنی.",
                            onPressedBritish: () => speakbes26("en-GB"),
                            onPressedAmerican: () => speakbes26("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢١. (کاری یاریدەدەر) بۆ ئەوەی چی ڕێکخراوە بۆ ڕوودان"""),
                          SentencesRow(
                            englishText: "They are to be married in June.",
                            kurdishText:
                                "پلان وایە لە حوزەیران ھاوسەرگیری بکەن.",
                            onPressedBritish: () => speakbes36("en-GB"),
                            onPressedAmerican: () => speakbes36("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٢. (کاری یاریدەدەر) بۆ وتنی ئەوەی چی دواتر ڕوویدا"""),
                          SentencesRow(
                            englishText:
                                "He was to regret that decision for the rest of his life (= he did regret it).",
                            kurdishText:
                                "بۆ تەواوی ژیانی ماوەی خەفەتی لەو بڕیارە خوارد.",
                            onPressedBritish: () => speakbes27("en-GB"),
                            onPressedAmerican: () => speakbes27("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٣. (کاری یاریدەدەر) بۆ وتنی ئەوەی شتێک ڕووینەدا"""),
                          SentencesRow(
                            englishText:
                                "Anna was nowhere to be found (= we could not find her anywhere).",
                            kurdishText: "ئانا لە ھیچ کوێیەک نەبوو.",
                            onPressedBritish: () => speakbes28("en-GB"),
                            onPressedAmerican: () => speakbes28("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "He was never to see his wife again (= although he did not know it would be so at the time, he did not see her again).",
                            kurdishText: "ھەرگیز ژنەکەی نەدییەوە.",
                            onPressedBritish: () => speakbes29("en-GB"),
                            onPressedAmerican: () => speakbes29("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٤. (کاری یاریدەدەر) بۆ دەربڕینی مەرج"""),
                          SentencesRow(
                            englishText:
                                "If we were to offer you more money, would you stay?",
                            kurdishText:
                                "ئەگەر پارەی زیاترت پێ بدەین، دەمێنیتەوە؟",
                            onPressedBritish: () => speakbes30("en-GB"),
                            onPressedAmerican: () => speakbes30("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "Were we to offer you more money, would you stay?",
                            kurdishText:
                                "ئەگەر پارەی زیاترت پێ بدەین، دەمێنیتەوە؟",
                            onPressedBritish: () => speakbes31("en-GB"),
                            onPressedAmerican: () => speakbes31("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
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
                        YoutubeEmbeddedthirteen(),
                        YoutubeEmbeddeddfourteen(),
                        YoutubeEmbeddedfifteen(),
                        YoutubeEmbeddeddsixteen(),
                        YoutubeEmbeddeddseventeen(),
                        YoutubeEmbeddeddeighteen(),
                        YoutubeEmbeddeddnineteen(),
                        YoutubeEmbeddedtwenty(),
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
- Verb: be (derived forms: am)
1. Have the quality of being; (copula, used with an adjective or a predicate noun)
"John is rich"; "This is not a good answer"
 
2. Be identical to; be someone or something
"The president of the company is John Smith"; "This is my house"
 
2. Occupy a certain position or area; be somewhere
"Where is my umbrella?"; "The toolshed is in the back"; "What is behind this behavior?"
 
4. Have reality; have an existence, be extant (= exist)
"Is there a God?";
 
5. Happen, occur, take place
"I lost my wallet; this was during the visit to my parents' house"; "There was a lot of noise in the kitchen"
 
6. Be identical or equivalent to (= equal)
"One dollar is 1,000 rubles these days!";
 
7. Form or compose (= constitute, represent, make up, comprise)
"This money is my only income"; "The stone wall was the backdrop for the performance";
 
8. Work in a specific place, with a specific subject, or in a specific function (= follow)
"He is a herpetologist"; "She is our resident philosopher";
 
9. Represent, as of a character on stage (= embody, personify)
"Derek Jacobi was Hamlet";

10. Spend or use time
"I may be an hour"
 
11. Have life, be alive (= live)
"Our great leader is no more";
 
12. To remain unmolested, undisturbed, or uninterrupted -- used only in infinitive form
"let her be"
 
13. Be priced at (= cost)

- Noun: Be (derived forms: Bes)
1. A light strong brittle grey toxic bivalent metallic element (= beryllium, glucinium, atomic number 4)
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '1ypyksuijLs';
  final double _startSeconds = 33;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'lVoGZiL-kns';
  final double _startSeconds = 19;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'AC_15fULavo';
  final double _startSeconds = 14;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'wrr9J7BJ6vE';
  final double _startSeconds = 45;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'hUBsxCcJeUc';
  final double _startSeconds = 9;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'Y2T_rIZ4Pho';
  final double _startSeconds = 19;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'Oq61TxejZ5g';
  final double _startSeconds = 27;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 155;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 272;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'DTvS9lvRxZ8';
  final double _startSeconds = 23;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'w98l2EFR6dE';
  final double _startSeconds = 35;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 99;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthirteen extends StatelessWidget {
  const YoutubeEmbeddedthirteen({super.key});

  final String _videoId = 'zAGVQLHvwOY';
  final double _startSeconds = 25;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  const YoutubeEmbeddeddfourteen({super.key});

  final String _videoId = '3MOFv_8A3S0';
  final double _startSeconds = 191;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfifteen extends StatelessWidget {
  const YoutubeEmbeddedfifteen({super.key});

  final String _videoId = 'FHJ3CMWnVxY';
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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  const YoutubeEmbeddeddsixteen({super.key});

  final String _videoId = 'R_fZjGm2OrM';
  final double _startSeconds = 336;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  const YoutubeEmbeddeddseventeen({super.key});

  final String _videoId = 'iEKLFS-aKcw';
  final double _startSeconds = 15;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddeddeighteen extends StatelessWidget {
  const YoutubeEmbeddeddeighteen({super.key});

  final String _videoId = 'CleUrqPLCzU';
  final double _startSeconds = 80;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddeddnineteen extends StatelessWidget {
  const YoutubeEmbeddeddnineteen({super.key});

  final String _videoId = 'ZQy89tZ-mRU';
  final double _startSeconds = 260;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwenty extends StatelessWidget {
  const YoutubeEmbeddedtwenty({super.key});

  final String _videoId = '66aG5P0kQpU';
  final double _startSeconds = 31;

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

// end be// TODO Implement this library.
