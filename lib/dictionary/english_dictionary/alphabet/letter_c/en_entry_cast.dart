import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycast extends StatelessWidget {
  // blank divider
  EnglishEntrycast({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcast(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cast");
  }

  Future<void> speakcasts1(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I cast an angry look at him.");
  }

  Future<void> speakcasts2(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She cast a quick look in the rear mirror.");
  }

  Future<void> speakcasts3(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The moon had cast a silvery light on the huts.");
  }

  Future<void> speakcasts4(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The setting sun cast an orange glow over the mountains.");
  }

  Future<void> speakcasts5(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This latest evidence casts serious doubt on his version of events.");
  }

  Future<void> speakcasts6(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The entire economic future of the islands was cast into doubt.");
  }

  Future<void> speakcasts7(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He refused to cast a vote for either candidate.");
  }

  Future<void> speakcasts8(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The play is being cast in both the US and Britain.");
  }

  Future<void> speakcasts9(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He has cast her as an ambitious lawyer in his latest movie.");
  }

  Future<void> speakcasts10(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He cast himself as the innocent victim of a hate campaign.");
  }

  Future<void> speakcasts11(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He cast the line to the middle of the river.");
  }

  Future<void> speakcasts12(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The priceless treasures had been cast into the Nile.");
  }

  Future<void> speakcasts13(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The whole cast performs/perform brilliantly.");
  }

  Future<void> speakcasts14(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The film has a great cast.");
  }

  Future<void> speakcasts15(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The colours he wore emphasized the olive cast of his skin.");
  }

  Future<void> speakcasts16(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her leg's in a cast.");
  }

  Future<void> speakcasts17(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts1717");
  }

  Future<void> speakcasts18(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts1818");
  }

  Future<void> speakcasts19(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts1919");
  }

  Future<void> speakcasts20(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2020");
  }

  Future<void> speakcasts21(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2121");
  }

  Future<void> speakcasts22(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2222");
  }

  Future<void> speakcasts23(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2323");
  }

  Future<void> speakcasts24(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2424");
  }

  Future<void> speakcasts25(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2525");
  }

  Future<void> speakcasts26(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2626");
  }

  Future<void> speakcasts27(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2727");
  }

  Future<void> speakcasts28(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2828");
  }

  Future<void> speakcasts29(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2929");
  }

  Future<void> speakcasts30(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3030");
  }

  Future<void> speakcasts31(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3131");
  }

  Future<void> speakcasts32(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3232");
  }

  Future<void> speakcasts33(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3333");
  }

  Future<void> speakcasts34(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3434");
  }

  Future<void> speakcasts35(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3535");
  }

  Future<void> speakcasts36(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3636");
  }

  Future<void> speakcasts37(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3737");
  }

  Future<void> speakcasts38(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3838");
  }

  Future<void> speakcasts39(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3939");
  }

  Future<void> speakcasts40(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4040");
  }

  Future<void> speakcasts41(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4141");
  }

  Future<void> speakcasts42(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4242");
  }

  Future<void> speakcasts43(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4343");
  }

  Future<void> speakcasts44(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4444");
  }

  Future<void> speakcasts45(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4545");
  }

  Future<void> speakcasts46(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4646");
  }

  Future<void> speakcasts47(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4747");
  }

  Future<void> speakcasts48(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4848");
  }

  Future<void> speakcasts49(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4949");
  }

  Future<void> speakcasts50(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts5050");
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
                            EntryTitle(word: "cast"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kɑːst/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcast("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kæst/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcast("en-US"),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: خستن، ھاویشتن، حەوادان، تووڕدان، دەستەی ھونەرمەند و ئەکتەران، گەچ (شکستەبەندی)، شتی ڕژاو یان داڕێژراو، داڕژاوە، داڕشتە، داڕێژگە، قاڵب، شێوە، بیچم، ڕووکەش، تەرح، تیراوێژ، بەرتیر، ماوەبڕ، لێکدانەوە، مەزندە، مۆرەھەڵخستن، مۆرەھاویشتن، کەراژ، کەراژەمار، جۆر، چەشن، ئاوا، خێلی (کەمێ)، بنەڕەنگ، سووکەڕەنگ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) سەیرکردن، پێکەنین، ھتد بە ئاراستەیەکی دیاریکراودا"),
                          SentencesRow(
                            englishText: "I cast an angry look at him.",
                            kurdishText: "نیگایەکی ڕقاویم لێ‌کرد.", // cast",
                            onPressedBritish: () => speakcasts1("en-GB"),
                            onPressedAmerican: () => speakcasts1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She cast a quick look in the rear mirror.",
                            kurdishText: "سەیرێکی خێرای ئاوێنەی پشتەوەی کرد.",
                            onPressedBritish: () => speakcasts2("en-GB"),
                            onPressedAmerican: () => speakcasts2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) دەرخستنی ڕۆشنایی، سێبەر، ھتد لەسەر شوێنێکی دیاریکراو"),
                          SentencesRow(
                            englishText:
                                "The moon had cast a silvery light on the huts.",
                            kurdishText:
                                "مانگ شەوقێکی زیوینی خستبووە سەر کوخەکان.",
                            onPressedBritish: () => speakcasts3("en-GB"),
                            onPressedAmerican: () => speakcasts3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The setting sun cast an orange glow over the mountains.",
                            kurdishText:
                                "خۆرەئاوابووەکە ڕوناکییەکی پرتەقاڵی خستبووە سەر شاخەکان.",
                            onPressedBritish: () => speakcasts4("en-GB"),
                            onPressedAmerican: () => speakcasts4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) وتن، پێشنیازکردن، یان کردنی شتێک کە گومان دەخاتە سەر شتێک"),
                          SentencesRow(
                            englishText:
                                "This latest evidence casts serious doubt on his version of events.",
                            kurdishText:
                                "ئەم بەڵگەیەی دوایی گومانی توند دەخاتە سەر گێڕانەوەی ئەو بۆ ڕووداوەکان.",
                            onPressedBritish: () => speakcasts5("en-GB"),
                            onPressedAmerican: () => speakcasts5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The entire economic future of the islands was cast into doubt.",
                            kurdishText:
                                "تەواوی داھاتووی ئابووریی دوورگەکە خرایە ژێر گومانەوە.",
                            onPressedBritish: () => speakcasts6("en-GB"),
                            onPressedAmerican: () => speakcasts6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) دەنگدان بە کەسێک یان شتێک"),
                          SentencesRow(
                            englishText:
                                "He refused to cast a vote for either candidate.",
                            kurdishText:
                                "ڕەتیکردەوە دەنگ بە ھیچ یەک لە دوو کاندیدەکە بدات.",
                            onPressedBritish: () => speakcasts7("en-GB"),
                            onPressedAmerican: () => speakcasts7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ھەڵبژرادنی ئەکتەرێک بۆ بینینی ڕۆڵێک"),
                          SentencesRow(
                            englishText:
                                "The play is being cast in both the US and Britain.",
                            kurdishText:
                                "ئەکتەرانی شانۆکە لە ئەمریکا و بەریتانیاوە دەستنیشان دەکرێن.",
                            onPressedBritish: () => speakcasts8("en-GB"),
                            onPressedAmerican: () => speakcasts8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He has cast her as an ambitious lawyer in his latest movie.",
                            kurdishText:
                                "ڕۆڵی پارێزەرێکی تەماحبازی پێدابوو لە دواترین فیلمیدا.",
                            onPressedBritish: () => speakcasts9("en-GB"),
                            onPressedAmerican: () => speakcasts9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) ناساندنی کەسێک، شتێک، ھتد بەشێوەیەکی دیاریکراو"),
                          SentencesRow(
                            englishText:
                                "He cast himself as the innocent victim of a hate campaign.",
                            kurdishText:
                                "خۆی وەک قوربانیی بێ‌تاوانی کەمپینە ڕقاوییەکە پیشاندا.",
                            onPressedBritish: () => speakcasts10("en-GB"),
                            onPressedAmerican: () => speakcasts10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) فڕێدانی سەرێکی قولابی ماسی بۆ ناو ئاو"),
                          SentencesRow(
                            englishText:
                                "He cast the line to the middle of the river.",
                            kurdishText:
                                "قولابەکەی فڕێدایە ناوەڕاستی ڕووبارەکە.",
                            onPressedBritish: () => speakcasts11("en-GB"),
                            onPressedAmerican: () => speakcasts11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) فڕێدانی شتێک"),
                          SentencesRow(
                            englishText:
                                "The priceless treasures had been cast into the Nile.",
                            kurdishText:
                                "گەنجینە بەھادارەکان فڕێدرابوونە ناو ڕووباری نیلەوە.",
                            onPressedBritish: () => speakcasts12("en-GB"),
                            onPressedAmerican: () => speakcasts12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ناو) ھەموو ئەو کەسانەی کە بەژداری لە فیلمێک، شانۆیەک، ھتد دەکەن"),
                          SentencesRow(
                            englishText:
                                "The whole cast performs/perform brilliantly.",
                            kurdishText: "تەواوی دەستەکە بلیمەتانە ڕۆڵ دەبینن.",
                            onPressedBritish: () => speakcasts13("en-GB"),
                            onPressedAmerican: () => speakcasts13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The film has a great cast.",
                            kurdishText:
                                "فیلمەکە ژمارەیەک ئەکتەری ناوازەی ھەیە.",
                            onPressedBritish: () => speakcasts14("en-GB"),
                            onPressedAmerican: () => speakcasts14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) شێوازی دەرکەوتنی کەسێک یان شتێک"),
                          SentencesRow(
                            englishText:
                                "The colours he wore emphasized the olive cast of his skin.",
                            kurdishText:
                                "ئەو ڕەنگانەی لەبەری دەکردن زەیتوونی دەرکەوتنی پێستی دەردەخست.",
                            onPressedBritish: () => speakcasts15("en-GB"),
                            onPressedAmerican: () => speakcasts15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (ناو) پلاستەرێک کە لە ئێسکی شکاو دەبەسترێت و دەیپارێزێت"),
                          SentencesRow(
                            englishText: "Her leg's in a cast.",
                            kurdishText: "لاقی لە پلاستەردایە.",
                            onPressedBritish: () => speakcasts16("en-GB"),
                            onPressedAmerican: () => speakcasts16("en-US"),
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
                        YoutubeEmbeddedeight(), //
                        // YoutubeEmbeddednine(),
                        // YoutubeEmbeddedten(),
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
                        YoutubeEmbeddedend(),
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
- Verb: cast (derived forms: casts, cast, casting)
1. Put or send forth (= project, contrive, throw)
"cast a spell"; "cast a warm light";
 
2. Deposit
"cast a vote"; "cast a ballot"
 
3. (performing arts) select to play, sing, or dance a part in a play, movie, musical, opera, or ballet
"He cast a young woman in the role of Desdemona"
 
4. Throw forcefully (= hurl, hurtle)
 
5. Assign the roles of (a movie or a play) to actors
"Who cast this beautiful movie?"
 
6. Move about aimlessly or without any fixed destination (= roll, wander, swan [informal], stray, tramp, roam, ramble, rove, range, drift, vagabond [archaic])
"They cast from town to town";
 
7. Form by pouring (e.g., wax or hot metal) into a cast or mould (= mold [N. Amer], mould [Brit, Cdn])
"cast a bronze sculpture";

8. To remove (= shed, cast off, shake off, throw, throw off, throw away, drop, lose)
"he cast his image as a pushy boss";
 
9. Choose at random (= draw)
"cast lots";
 
10. Formulate in a particular style or language (= frame, redact, put, couch)
"She cast her request in very polite language";

- Noun: cast (derived forms: casts) 
1. The actors in a play (= cast of characters, dramatis personae)
 
2. Container into which liquid is poured to create a given shape when it hardens (= mold [N. Amer], mould [Brit, Cdn])
 
3. The distinctive form in which a thing is made (= mold [N. Amer], mould [Brit, Cdn], stamp)
"pottery of this cast was found throughout the region";
 
4. The visual appearance of something or someone (= form, shape)
"the delicate cast of his features";
 
5. Bandage consisting of a firm covering (often made of plaster of Paris) that immobilizes broken bones while they heal (= plaster cast, plaster bandage)
 
6. Object formed by a mould (= casting)
 
7. The act of throwing dice (= roll)
 
8. The act of throwing a fishing line out over the water by means of a rod and reel (= casting)
 
9. A violent throw (= hurl)
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'hwFJyldqaIs';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '2HH9tBqY4XY';
  final double _startSeconds = 99;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 215;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'pNCOA8AUxdw';
  final double _startSeconds = 241;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 1424;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 1256;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'Rzd0mLf366I';
  final double _startSeconds = 69;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = '_45zjnjrFOA';
  final double _startSeconds = 30;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'anbBwpoI9TI';
  final double _startSeconds = 526;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

// end WORD_WEB
