import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycase extends StatelessWidget {
  // blank divider
  EnglishEntrycase({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcase(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("case");
  }

  Future<void> speakcases1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "In some cases people have had to wait several weeks for an appointment.");
  }

  Future<void> speakcases2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("In most cases the increases have been marginal.");
  }

  Future<void> speakcases3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What should be done in such cases?");
  }

  Future<void> speakcases4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The company only dismisses its employees in cases of gross misconduct.");
  }

  Future<void> speakcases5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("In the case of banks, the law can limit activities.");
  }

  Future<void> speakcases6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("If that is the case, we need more staff.");
  }

  Future<void> speakcases7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "It is simply not the case that prison conditions are improving.");
  }

  Future<void> speakcases8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I cannot make an exception in your case.");
  }

  Future<void> speakcases9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("In your case, we are prepared to be lenient.");
  }

  Future<void> speakcases10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Don't underestimate the power of the pen, or in this case, the power of the keyboard.");
  }

  Future<void> speakcases11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They never solved the Jones murder case.");
  }

  Future<void> speakcases12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Four officers are investigating the case.");
  }

  Future<void> speakcases13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The case will be heard next week.");
  }

  Future<void> speakcases14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The Supreme Court heard the case yesterday.");
  }

  Future<void> speakcases15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Our lawyer didn't think we had a case.");
  }

  Future<void> speakcases16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The case against her was very weak.");
  }

  Future<void> speakcases17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He successfully argued the case for accepting the agreement.");
  }

  Future<void> speakcases18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They try to make the case that this war is necessary.");
  }

  Future<void> speakcases19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The museum was full of stuffed animals in glass cases.");
  }

  Future<void> speakcases20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He put the binoculars back in their carrying case.");
  }

  Future<void> speakcases21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Let me carry your case for you.");
  }

  Future<void> speakcases22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They put their cases in the boot and drove off.");
  }

  Future<void> speakcases23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Over 130 000 cases of cholera were reported in 2016.");
  }

  Future<void> speakcases24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The most serious cases were treated at the scene of the accident.");
  }

  Future<void> speakcases25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He's a hopeless case.");
  }

  Future<void> speakcases26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Latin nouns have case, number and gender.");
  }

  Future<void> speakcases27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases2727");
  }

  Future<void> speakcases28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases2828");
  }

  Future<void> speakcases29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases2929");
  }

  Future<void> speakcases30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases3030");
  }

  Future<void> speakcases31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases3131");
  }

  Future<void> speakcases32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases3232");
  }

  Future<void> speakcases33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases3333");
  }

  Future<void> speakcases34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases3434");
  }

  Future<void> speakcases35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases3535");
  }

  Future<void> speakcases36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases3636");
  }

  Future<void> speakcases37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases3737");
  }

  Future<void> speakcases38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases3838");
  }

  Future<void> speakcases39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases3939");
  }

  Future<void> speakcases40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases4040");
  }

  Future<void> speakcases41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases4141");
  }

  Future<void> speakcases42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases4242");
  }

  Future<void> speakcases43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases4343");
  }

  Future<void> speakcases44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases4444");
  }

  Future<void> speakcases45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases4545");
  }

  Future<void> speakcases46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases4646");
  }

  Future<void> speakcases47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases4747");
  }

  Future<void> speakcases48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases4848");
  }

  Future<void> speakcases49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases4949");
  }

  Future<void> speakcases50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcases5050");
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
                            EntryTitle(word: "case"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /keɪs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcase("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /keɪs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcase("en-US"),
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
                          const KurdishVocabulary(text: """
کوردی: بابەت، کەیس، نموونە، وێنە، میناک، کەیس یان بابەتی نەخۆشی، ئینستەنسی نەخۆشی، ئەنگاوتە، بەرکەوت، نەخۆش، ناساز، کردە، کار، چۆنیەتی، پرس، کێشە، دۆز، پرسگرێک، بابەت، مژار، دۆخ، بار، بارودۆخ، ڕەوش، کاودان، داواکاری، بەڵگەکان، بەڵگە، شایەت، بەڵگەھێنانەوە، ڕاستی، بوویەر، مەتەڵ، ڕاز، (ڕێزمان) دۆخ، کەس، پیاو، مرۆ، قوتو، سنووق، یەغدان، سیپ، مجری، جانتا، توورەکە، جزدان، جامەدان، بەرگ، کیف، ڕووپۆش، توێکڵ، توێخ، قاوغ، قاپووڕ، چوارچێوە (درگا و پەنجەرە)
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) دۆخێکی تایبەت"),
                          SentencesRow(
                            englishText:
                                "In some cases people have had to wait several weeks for an appointment.",
                            kurdishText:
                                "لە زۆر حاڵەتدا خەڵکی پێویست بووە ژمارەیەک ھەفتە چاوەڕێ بن بۆ چاوپێکەوتنێک.",
                            onPressedBritish: () => speakcases1("en-GB"),
                            onPressedAmerican: () => speakcases1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "In most cases the increases have been marginal.",
                            kurdishText:
                                "لە زۆر حاڵەتدا زیادبوونەکان کەمێک بوونە.",
                            onPressedBritish: () => speakcases2("en-GB"),
                            onPressedAmerican: () => speakcases2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "What should be done in such cases?",
                                    kurdishText:
                                        "چی دەبێت بکردرێت لە دۆخێکی وەھادا؟",
                                    onPressedBritish: () =>
                                        speakcases3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcases3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The company only dismisses its employees in cases of gross misconduct.",
                                    kurdishText:
                                        "کۆمپانیاکە کارمەندانی دەردەکات تەنھا لە دۆخی ھەڵەی زەقدا.",
                                    onPressedBritish: () =>
                                        speakcases4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcases4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "In the case of banks, the law can limit activities.",
                                    kurdishText:
                                        "لە حاڵەتی بانکەکاندا، یاسا دەکرێت چالاکییەکان سنووردار بکات.",
                                    onPressedBritish: () =>
                                        speakcases5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcases5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (ناو) دۆخی ڕاستی"),
                          SentencesRow(
                            englishText:
                                "If that is the case (= if the situation described is true), we need more staff.",
                            kurdishText:
                                "ئەگەر ئەوە ڕاستییەکەیە، دەبێت ستافی زیاتر بگرین.",
                            onPressedBritish: () => speakcases6("en-GB"),
                            onPressedAmerican: () => speakcases6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It is simply not the case that prison conditions are improving.",
                            kurdishText:
                                "بە سادەیی، ڕاستییەکە ئەوەیە دۆخی زانیدانەکان باشتر نابن.",
                            onPressedBritish: () => speakcases7("en-GB"),
                            onPressedAmerican: () => speakcases7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) دۆخێک کە تایبەتە بە کەسێک یان شتێک"),
                          SentencesRow(
                            englishText:
                                "I cannot make an exception in your case (= for you and not for others).",
                            kurdishText:
                                "ناتوانم جیاکاری بکەم بۆ دۆخەکەی تۆ (وەک ئەوانی تر سەیرت دەکەم).",
                            onPressedBritish: () => speakcases8("en-GB"),
                            onPressedAmerican: () => speakcases8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "In your case, we are prepared to be lenient.",
                            kurdishText: "بۆ دۆخەکەی تۆ ئامادەین لێبووردە بین.",
                            onPressedBritish: () => speakcases9("en-GB"),
                            onPressedAmerican: () => speakcases9("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Don't underestimate the power of the pen, or in this case, the power of the keyboard.",
                                    kurdishText:
                                        "ھێزی پێنووس بە کەم مەبینە، یان لەم دۆخەدا، ھێزی تەختەکلیل.",
                                    onPressedBritish: () =>
                                        speakcases10("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcases10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) بابەتێک کە لە ژێر لێکۆڵینەوەدایە"),
                          SentencesRow(
                            englishText:
                                "They never solved the Jones murder case.",
                            kurdishText:
                                "ھەرگیز کەیسی کوشتنی جۆنیان چارەسەرنەکرد.",
                            onPressedBritish: () => speakcases11("en-GB"),
                            onPressedAmerican: () => speakcases11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Four officers are investigating the case.",
                            kurdishText:
                                "چوار ئەفسەر لێکۆڵینەوە لە کەیسەکە دەکەن.",
                            onPressedBritish: () => speakcases12("en-GB"),
                            onPressedAmerican: () => speakcases12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) بابەتێک کە لە دادگایە و بڕیاری لەسەر دەدرێت"),
                          SentencesRow(
                            englishText: "The case will be heard next week.",
                            kurdishText:
                                "کەیسەکە ھەفتەی داھاتوو دانیشتنی بۆ دەکرێت.",
                            onPressedBritish: () => speakcases13("en-GB"),
                            onPressedAmerican: () => speakcases13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The Supreme Court heard the case yesterday.",
                            kurdishText:
                                "دادگای باڵا (ئەمریکا) دوێنێ گوێی لە کەیسەکە گرت.",
                            onPressedBritish: () => speakcases14("en-GB"),
                            onPressedAmerican: () => speakcases14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) کۆمەڵێک لە ڕاستی، بۆچوون، ھتد کە لایەنگیری لایەکن لە دادگاییەک، گفتوگۆیەک، ھتد"),
                          SentencesRow(
                            englishText:
                                "Our lawyer didn't think we had a case (= had enough good arguments to win in a court of law).",
                            kurdishText:
                                "پارێزەرەکەمان ھەستی نەکرد کەوا دۆزێکمان ھەبێت.",
                            onPressedBritish: () => speakcases15("en-GB"),
                            onPressedAmerican: () => speakcases15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The case against her was very weak.",
                            kurdishText: "ئەو دۆزەی دژی بوو زۆر لاواز بوو.",
                            onPressedBritish: () => speakcases16("en-GB"),
                            onPressedAmerican: () => speakcases16("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "He successfully argued the case for accepting the agreement.",
                                    kurdishText:
                                        "سەرکەوتووانە پشتگیری دۆزی پەسەندکردنی ڕێککەوتنەکەی کرد.",
                                    onPressedBritish: () =>
                                        speakcases17("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcases17("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "They try to make the case that this war is necessary.",
                                    kurdishText:
                                        "ھەوڵ دەدەن ئەو پرسە درووست بکەن کە جەنگەکە پێویستە.",
                                    onPressedBritish: () =>
                                        speakcases18("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcases18("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٧. (ناو) شتێک کە شتی تێدا ھەڵدەگریت بۆ پاراستنی یان ھەڵگرتنی"),
                                  SentencesRow(
                                    englishText:
                                        "The museum was full of stuffed animals in glass cases.",
                                    kurdishText:
                                        "مۆزەخانەکە پڕ بوو لە ئاژەڵی منداڵان لەناو پارێزەری شووشەدا.",
                                    onPressedBritish: () =>
                                        speakcases19("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcases19("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He put the binoculars back in their carrying case.",
                                    kurdishText:
                                        "دووربینەکەی خستە بەرگە ھەڵگرەکەی.",
                                    onPressedBritish: () =>
                                        speakcases20("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcases20("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text: "٨. (ناو) جانتای سەفەرکردن"),
                                  SentencesRow(
                                    englishText:
                                        "Let me carry your case for you.",
                                    kurdishText: "با جانتایەکەت بۆ ھەڵبگرم.",
                                    onPressedBritish: () =>
                                        speakcases21("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcases21("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "They put their cases in the boot and drove off.",
                                    kurdishText:
                                        "جانتاکانیان خستە سندووقی ئۆتۆمبێلەکە و ڕۆشتن.",
                                    onPressedBritish: () =>
                                        speakcases22("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcases22("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text: "٩. (ناو) حاڵەتی نەخۆشی"),
                                  SentencesRow(
                                    englishText:
                                        "Over 130 000 cases of cholera were reported in 2016.",
                                    kurdishText:
                                        "سەروو ١٣٠٠٠٠ حاڵەتی کۆلێرا لە ساڵی ٢٠١٦ تۆمارکران.",
                                    onPressedBritish: () =>
                                        speakcases23("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcases23("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The most serious cases were treated at the scene of the accident.",
                                    kurdishText:
                                        "خراپترین حاڵەتەکان لە شوێنی ڕووداوەکە چارەسەرکران.",
                                    onPressedBritish: () =>
                                        speakcases24("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcases24("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "١٠. (ناو) کەسێک کە باوەڕوایە چارەسەری تایبەتی بووێت"),
                                  SentencesRow(
                                    englishText: "He's a hopeless case.",
                                    kurdishText: "کەسێکی بێ‌ھیوایە.",
                                    onPressedBritish: () =>
                                        speakcases25("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcases25("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "١١. (ناو) شێوەی ناوێک، ھاوەڵناوێک، یان جێناوێک کە پەیوەندیی لەگەڵ وشەیەکی دیکە پیشان دەدات"),
                                  SentencesRow(
                                    englishText:
                                        "Latin nouns have case, number and gender.",
                                    kurdishText:
                                        "ناوە لاتینییەکان دۆخ و ژمارە و ڕەگەزیان ھەیە.",
                                    onPressedBritish: () =>
                                        speakcases26("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcases26("en-US"),
                                  ),
                                ],
                              ),
                            ],
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
                        // YoutubeEmbeddedeight(), //
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
- Noun: case (derived forms: cases)
1. An occurrence of something (= instance, example)
"it was a case of bad judgment";
 
2. A special set of circumstances (= event)
"it may rain in which case the picnic will be cancelled";
 
3. (law) a comprehensive term for any proceeding in a court of law whereby an individual seeks a legal remedy (= lawsuit, suit, cause, causa)
 
4. The actual state of things
"that was not the case"
 
5. A portable container for carrying several objects
"the musicians left their instrument cases backstage"
 
6. A person requiring professional services
"a typical case was the suburban housewife described by a marriage counsellor"
 
7. A person who is subjected to experimental or other observational procedures; someone who is an object of investigation (= subject, guinea pig)
"the cases that we studied were drawn from two different communities";
 
8. A problem requiring investigation
"Perry Mason solved the case of the missing heir"
 
9. A statement of facts and reasons used to support an argument
"he stated his case clearly"
 
10. The quantity contained in a case (= caseful)
 
11. Nouns, pronouns or adjectives (often marked by inflection) related in some way to other words in a sentence (= grammatical case)
 
12. A specific state of mind that is temporary
"a case of the jitters"
 
13. A person of a specified kind (usually with many eccentricities) (= character, eccentric, type)
"a mental case";
 
14. A specific size and style of type within a type family (= font, fount [Brit], typeface, face)
 
15. An enveloping structure or covering enclosing an animal or plant organ or part (= sheath)
 
16. The housing or outer covering of something (= shell, casing)
"the clock has a walnut case";

17. The enclosing frame around a door or window opening (= casing)
"the cases had rotted away and had to be replaced";

18. (printing) the receptacle in which a compositor has his type, which is divided into compartments for the different letters, spaces, or numbers (= compositor's case, typesetter's case)
"for English, a compositor will ordinarily have two such cases, the upper case containing the capitals and the lower case containing the small letters";
 
19. Bed linen consisting of a cover for a pillow (= pillowcase, slip, pillow slip)
"the burglar carried his loot in a case";

20. A glass container used to store and display items in a shop, museum or home (= display case, showcase, vitrine)

- Verb: case (derived forms: cases, casing, cased)
1. Look over, usually with the intention to rob
"The men cased the housed"
 
2. Enclose in, or as if in, a case (= encase, incase)
"my feet were cased in mud";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'fi2jQMTU9b4';
  final double _startSeconds = 3;

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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 703;

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

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 542;

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

  final String _videoId = 'nQ-Ua6NYago';
  final double _startSeconds = 55;

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

  final String _videoId = 'QtrRtGC3G_I';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = '7DKXMRMYDO4';
  final double _startSeconds = 5;

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

  final String _videoId = '5tEc122j7LE';
  final double _startSeconds = 196;

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

  final String _videoId = 'mmGFrIWU0Cs';
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

// end WORD_WEB
