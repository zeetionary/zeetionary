import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycharge extends StatelessWidget {
  EnglishEntrycharge({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcharge(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("charge");
  }

  Future<void> speakcharges1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Delivery is free of charge.");
  }

  Future<void> speakcharges2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The hotel operates a bus service to the beach for a small charge.");
  }

  Future<void> speakcharges3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This service is available at a nominal charge.");
  }

  Future<void> speakcharges4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The museum has introduced a £3 admission charge.");
  }

  Future<void> speakcharges5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Would you like to put that on your charge?");
  }

  Future<void> speakcharges6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("‘Are you paying cash?’ ‘No, it'll be a charge.’");
  }

  Future<void> speakcharges7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He took charge of the farm after his father's death.");
  }

  Future<void> speakcharges8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They left the au pair in charge of the children for a week.");
  }

  Future<void> speakcharges9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm leaving the school in your charge.");
  }

  Future<void> speakcharges10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We need somebody to take charge of the financial side.");
  }

  Future<void> speakcharges11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Both men deny the charges.");
  }

  Future<void> speakcharges12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They decided to drop the charges against the newspaper.");
  }

  Future<void> speakcharges13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "After being questioned by the police, she was released without charge.");
  }

  Future<void> speakcharges14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He has admitted the murder charge.");
  }

  Future<void> speakcharges15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She is almost certain to face criminal charges.");
  }

  Future<void> speakcharges16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The court dismissed the charge against him.");
  }

  Future<void> speakcharges17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She rejected the charge that the story was untrue.");
  }

  Future<void> speakcharges18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The charges will be difficult to prove.");
  }

  Future<void> speakcharges19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My phone had run out of charge.");
  }

  Future<void> speakcharges20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The electron has a negative charge.");
  }

  Future<void> speakcharges21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He put his phone on charge.");
  }

  Future<void> speakcharges22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They were driven back by a police baton charge.");
  }

  Future<void> speakcharges23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The bull lowered its horns and charged.");
  }

  Future<void> speakcharges24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His charge was to obtain specific information.");
  }

  Future<void> speakcharges25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The fees charged by some companies are excessive.");
  }

  Future<void> speakcharges26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What did they charge for the repairs?");
  }

  Future<void> speakcharges27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They are charging a reasonable price for the album.");
  }

  Future<void> speakcharges28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We won't charge you for delivery.");
  }

  Future<void> speakcharges29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Don't worry. I'll charge it.");
  }

  Future<void> speakcharges30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They charge the calls to their credit-card account.");
  }

  Future<void> speakcharges31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I need to charge my phone.");
  }

  Future<void> speakcharges32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Before use, the battery must be charged.");
  }

  Future<void> speakcharges33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Several people were arrested but nobody was charged.");
  }

  Future<void> speakcharges34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was charged with murder.");
  }

  Future<void> speakcharges35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They were charged with organizing an illegal demonstration.");
  }

  Future<void> speakcharges36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A man has been charged in connection with the attack.");
  }

  Future<void> speakcharges37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She has not yet been formally charged with the crime.");
  }

  Future<void> speakcharges38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Opposition MPs charged the minister with neglecting her duty.");
  }

  Future<void> speakcharges39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Opponents charged that cutting costs would reduce safety.");
  }

  Future<void> speakcharges40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The bull put its head down and charged.");
  }

  Future<void> speakcharges41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We charged at the enemy.");
  }

  Future<void> speakcharges42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The children charged down the stairs.");
  }

  Future<void> speakcharges43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He came charging into my room and demanded to know what was going on.");
  }

  Future<void> speakcharges44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The committee has been charged with the development of sport in the region.");
  }

  Future<void> speakcharges45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The governing body is charged with managing the school within its budget.");
  }

  Future<void> speakcharges46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The room was charged with hatred.");
  }

  Future<void> speakcharges47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Please charge your glasses and drink a toast to the bride and groom!");
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
                            EntryTitle(word: "charge"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃɑːdʒ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcharge("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃɑːrdʒ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcharge("en-US"),
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
کوردی: گوناھبارکردن، تاوانباری، گومانبارکردن، تۆمەت، شەڵتاخ، بوختان، چەفتە، نرخ، بایی، قیمەت، حەق، حەق‌دەس، مز، کرێ، مەزاخ، خەرج، تێچوون،	سەرپەرشتی، سەرپەرستی، چاودێری، سەخبیری، چاوبەسەری، سەرنج، بەرپرسایەتی،	کۆنتڕۆڵ، مەھار، دەست‌بەسەراگرتن،	قەرز،	ئەرک، پەیور،	ھێرش، گوژمە، پەلامار،	دەستوور، فەرمان،	(چەک) تەقەک، پێتەق، خەرج،	(ئێلیکتریسیتی) بارگ، بارگە، بار
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) ئەو بڕەی کە کەسێک داوای دەکات بۆ شتێک یان خزمەتگوزارییەک"),
                          SentencesRow(
                            englishText: "Delivery is free of charge.",
                            kurdishText: "گەیاندن بێ‌بەرامبەرە.",
                            onPressedBritish: () => speakcharges1("en-GB"),
                            onPressedAmerican: () => speakcharges1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The hotel operates a bus service to the beach for a small charge.",
                            kurdishText:
                                "ھوتێلەکە خزمەتگوزارییەکی گەیاندنی پاسی ھەیە بۆ کەنار دەریاکە بە نرخێکی کەم.",
                            onPressedBritish: () => speakcharges2("en-GB"),
                            onPressedAmerican: () => speakcharges2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "This service is available at a nominal charge.",
                                    kurdishText:
                                        "خزمەتگوزارییەکە بە نرخێکی زۆر کەم بەردەستە.",
                                    onPressedBritish: () =>
                                        speakcharges3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The museum has introduced a £3 admission charge.",
                                    kurdishText:
                                        "مۆزەخانەکە نرخی چوونەژوورەوەی ٣ پاوەندی دەستپێکردووە.",
                                    onPressedBritish: () =>
                                        speakcharges4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ھەژماری حیسابات کە بڕی ئەو شتانە کە لە فرؤشگایەک دەیکڕیت بە قەرز و لە کاتێکی دیاریکراودا دەیدەیتەوە"),
                          SentencesRow(
                            englishText:
                                "Would you like to put that on your charge?",
                            kurdishText:
                                "حەزدەکەیت ئەوە بخەیتە سەر حیساباتەکەت؟",
                            onPressedBritish: () => speakcharges5("en-GB"),
                            onPressedAmerican: () => speakcharges5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "‘Are you paying cash?’ ‘No, it'll be a charge.’",
                            kurdishText:
                                "'پارە دەدەیت؟' 'نەخێر، با لەسەر حیسابەکە بێت'.",
                            onPressedBritish: () => speakcharges6("en-GB"),
                            onPressedAmerican: () => speakcharges6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) پێگەی ھەبوونی دەسەڵات بەسەر شتێک/کەسێکدا"),
                          SentencesRow(
                            englishText:
                                "He took charge of the farm after his father's death.",
                            kurdishText:
                                "بەرپرسیاریەتی کێڵگەکەی گرتە دەست لە دوای مەرگی باوکی.",
                            onPressedBritish: () => speakcharges7("en-GB"),
                            onPressedAmerican: () => speakcharges7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They left the au pair in charge of the children for a week.",
                            kurdishText:
                                "ئۆپێرەکەی وەک چاودێری منداڵەکان جێھێشت.",
                            onPressedBritish: () => speakcharges8("en-GB"),
                            onPressedAmerican: () => speakcharges8("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "I'm leaving the school in your charge.",
                                    kurdishText:
                                        "قوتابخانەکە لەژێر سەرپەرشتی تۆدا جێدێڵم.",
                                    onPressedBritish: () =>
                                        speakcharges9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges9("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We need somebody to take charge of the financial side.",
                                    kurdishText:
                                        "پێویستیمان بە کەسێکە لایەنی ئابووری لەئەستۆ بگرێت.",
                                    onPressedBritish: () =>
                                        speakcharges10("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) تۆمەتی پۆلیس کە کەسێک تاوانێکی ئەنجام داوە"),
                          SentencesRow(
                            englishText: "Both men deny the charges.",
                            kurdishText:
                                "ھەردوو پیاوەکە نکۆڵی لە تاوانەکان دەکەن.",
                            onPressedBritish: () => speakcharges11("en-GB"),
                            onPressedAmerican: () => speakcharges11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They decided to drop the charges against the newspaper.",
                            kurdishText:
                                "بڕیاریاندا واز لە تۆمەتەکان بێنن دژ بە ڕۆژنامەکە.",
                            onPressedBritish: () => speakcharges12("en-GB"),
                            onPressedAmerican: () => speakcharges12("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "After being questioned by the police, she was released without charge.",
                                    kurdishText:
                                        "لەدوای ئەوەی لەلایەن پۆلیسەوە لێکۆڵینەوەی لێکرا، بەبێ تۆمەتبارکردن ئازادکرا.",
                                    onPressedBritish: () =>
                                        speakcharges13("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges13("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He has admitted the murder charge.",
                                    kurdishText:
                                        "دانی بە تۆمەتی کوشتنەکەدا ناوە.",
                                    onPressedBritish: () =>
                                        speakcharges14("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges14("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She is almost certain to face criminal charges.",
                                    kurdishText:
                                        "ئەوە مسۆگەرە کە ڕووبەڕووی تۆمەتی تاوانکاری دەبێتەوە.",
                                    onPressedBritish: () =>
                                        speakcharges15("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges15("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The court dismissed the charge against him.",
                                    kurdishText:
                                        "دادگا تۆمەتەکانی لە دژی ڕەتکردەوە.",
                                    onPressedBritish: () =>
                                        speakcharges16("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) قسەیەک کە کەسێک بە کردنی کارێکی ھەڵە یان خراپ تۆمەتبار دەکات"),
                          SentencesRow(
                            englishText:
                                "She rejected the charge that the story was untrue.",
                            kurdishText:
                                "ئەو تۆمەتەی ڕەتکردەوە کە چیرۆکەکە ڕاست نییە.",
                            onPressedBritish: () => speakcharges17("en-GB"),
                            onPressedAmerican: () => speakcharges17("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The charges will be difficult to prove.",
                            kurdishText: "تۆمەتەکان زەحمەت دەبێت بسەلمێندرێن.",
                            onPressedBritish: () => speakcharges18("en-GB"),
                            onPressedAmerican: () => speakcharges18("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ئەو ڕێژە کارەباییەی کە دەخرێتە باترییەکەوە، یان دەگوازرێتەوە، یان بارگاوی کردنی باترییەک"),
                          SentencesRow(
                            englishText: "My phone had run out of charge.",
                            kurdishText: "موبایلەکەم شەحنی نەماوە.",
                            onPressedBritish: () => speakcharges19("en-GB"),
                            onPressedAmerican: () => speakcharges19("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The electron has a negative charge.",
                            kurdishText:
                                "ئەلیکترۆنەکە بارگەیەکی نێگەتیڤی ھەیە.",
                            onPressedBritish: () => speakcharges20("en-GB"),
                            onPressedAmerican: () => speakcharges20("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText: "He put his phone on charge.",
                                    kurdishText: "موبایلەکەی کرد بە شەحنەوە.",
                                    onPressedBritish: () =>
                                        speakcharges21("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges21("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) پەلامارێکی توندوتیژانە یان خێرا"),
                          SentencesRow(
                            englishText:
                                "They were driven back by a police baton charge.",
                            kurdishText:
                                "گەڕێندراوە دواوە بە پەلاماری کوتەکی پۆلیس.",
                            onPressedBritish: () => speakcharges22("en-GB"),
                            onPressedAmerican: () => speakcharges22("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The bull lowered its horns and charged.",
                            kurdishText:
                                "جوانەگاکە شاخەکانی نزمکردەوە و ھێرشی کرد.",
                            onPressedBritish: () => speakcharges23("en-GB"),
                            onPressedAmerican: () => speakcharges23("en-US"),
                          ),
                          // skipped_meaning
                          // skipped_meaning
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ناو) ئەرکێک یان کارێک"),
                          SentencesRow(
                            englishText:
                                "His charge was to obtain specific information.",
                            kurdishText:
                                "ئەرکەکەی ئەوە بوو زانیاری تایبەت بەدەست بخات.",
                            onPressedBritish: () => speakcharges24("en-GB"),
                            onPressedAmerican: () => speakcharges24("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) داواکردنی بڕێک پارە بۆ شتومەک و خزمەتگوزاری"),
                          SentencesRow(
                            englishText:
                                "The fees charged by some companies are excessive.",
                            kurdishText:
                                "ئەو کرێیانەی لەلایەن ھەندێک کۆمپانیاوە وەردەگیرێت لە ڕادەبەدەرن.",
                            onPressedBritish: () => speakcharges25("en-GB"),
                            onPressedAmerican: () => speakcharges25("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "What did they charge for the repairs?",
                            kurdishText: "چەندیان وەرگرت بۆ چاککردنەوەکە؟",
                            onPressedBritish: () => speakcharges26("en-GB"),
                            onPressedAmerican: () => speakcharges26("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "They are charging a reasonable price for the album.",
                                    kurdishText:
                                        "بڕێکی گونجاو بۆ ئەلبوومەکە وەردەگرن.",
                                    onPressedBritish: () =>
                                        speakcharges27("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges27("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We won't charge you for delivery.",
                                    kurdishText: "بۆ گواستنەوە پارە وەرناگرین.",
                                    onPressedBritish: () =>
                                        speakcharges28("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges28("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) تۆمارکردنی تێچووی شتێک وەک ئەو بڕەی کە کەسێک دەبێت بیدات"),
                          SentencesRow(
                            englishText:
                                "Don't worry. I'll charge it (= pay by credit card).",
                            kurdishText:
                                "نیگەران مەبە، دەیخەمە سەر کرێدیت کاردەکە.",
                            kurdishNote: "واتە بە کرێدیت کاردەکە پارەکەی دەدەم",
                            onPressedBritish: () => speakcharges29("en-GB"),
                            onPressedAmerican: () => speakcharges29("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "They charge the calls to their credit-card account.",
                                    kurdishText:
                                        "نرخی پەیوەندییەکان دەخەنە سەر ھەژماری کرێدیت کاردەکە.",
                                    onPressedBritish: () =>
                                        speakcharges30("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges30("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١١. (کردار) بارگاوی کردن بە کارەبا"),
                          SentencesRow(
                            englishText: "I need to charge my phone.",
                            kurdishText:
                                "پێویستە موبایلەکەم بارگاوی/شەحن بکەم.",
                            onPressedBritish: () => speakcharges31("en-GB"),
                            onPressedAmerican: () => speakcharges31("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Before use, the battery must be charged.",
                            kurdishText:
                                "پێش بەکارھێنان، باترییەکە دەبێت بارگاوی بکرێت.",
                            onPressedBritish: () => speakcharges32("en-GB"),
                            onPressedAmerican: () => speakcharges32("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (کردار) تۆمەتبارکردنی کەسێک بە تاوانێک بۆ ئەوەی ببرێتە دادگا"),
                          SentencesRow(
                            englishText:
                                "Several people were arrested but nobody was charged.",
                            kurdishText:
                                "ژمارەیەک کەس دەستگیرکران بەڵام ھیچیان تۆمەتبار نەکران.",
                            onPressedBritish: () => speakcharges33("en-GB"),
                            onPressedAmerican: () => speakcharges33("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He was charged with murder.",
                            kurdishText: "بە تاوانی کوشتن تۆمەتبارکرا.",
                            onPressedBritish: () => speakcharges34("en-GB"),
                            onPressedAmerican: () => speakcharges34("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "They were charged with organizing an illegal demonstration.",
                                    kurdishText:
                                        "تاوەنبارکران بە ڕێکخستنی خۆپیشاندانی نایاسایی.",
                                    onPressedBritish: () =>
                                        speakcharges35("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges35("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "A man has been charged in connection with the attack.",
                                    kurdishText:
                                        "کەسێک تۆمەتبارکراوە بە پەیوەندی بە ھێرشەکەوە.",
                                    onPressedBritish: () =>
                                        speakcharges36("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges36("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She has not yet been formally charged with the crime.",
                                    kurdishText:
                                        "ھێشتا بە فەرمی بە تاوانەکە تۆمەتبار نەکراوە.",
                                    onPressedBritish: () =>
                                        speakcharges37("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharges37("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (کردار) تۆمەتبارکردنی کەسێک بە ئەنجامدانی کارێکی ھەڵە یان خراپ"),
                          SentencesRow(
                            englishText:
                                "Opposition MPs charged the minister with neglecting her duty.",
                            kurdishText:
                                "ئەندام پەرلەمانە ئۆپۆزسیۆنەکان وەزیرەکەیان بە پشتگوێخستنی ئەرکەکانی تۆمەتبارکرد.",
                            onPressedBritish: () => speakcharges38("en-GB"),
                            onPressedAmerican: () => speakcharges38("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٤. (کردار) بانگەشەکردن یان وتنی ئەوەی کە شتێک ڕوودەدات"),
                          SentencesRow(
                            englishText:
                                "Opponents charged that cutting costs would reduce safety.",
                            kurdishText:
                                "دژبەرەکان بانگەشەی ئەوەیان کرد کە کەمکردنەوەی خەرجی ئارامی کەمدەکاتەوە.",
                            onPressedBritish: () => speakcharges39("en-GB"),
                            onPressedAmerican: () => speakcharges39("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٥. (کردار) بۆ پێشەوەچوون و ھێرشکردن"),
                          SentencesRow(
                            englishText:
                                "The bull put its head down and charged.",
                            kurdishText: "جوانەگاکە سەری داخست و ھێرشی کرد.",
                            onPressedBritish: () => speakcharges40("en-GB"),
                            onPressedAmerican: () => speakcharges40("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "We charged at the enemy.",
                            kurdishText: "ھێرشمان کردە سەر دوژمن.",
                            onPressedBritish: () => speakcharges41("en-GB"),
                            onPressedAmerican: () => speakcharges41("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٦. (کردار) بەخێرایی ڕۆشتن بە ئاراستەیەکدا"),
                          SentencesRow(
                            englishText:
                                "The children charged down the stairs.",
                            kurdishText:
                                "منداڵەکان بە پلەکانەکاندا بە فڕکەفڕک ڕۆشتنە خوارەوە.",
                            onPressedBritish: () => speakcharges42("en-GB"),
                            onPressedAmerican: () => speakcharges42("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He came charging into my room and demanded to know what was going on.",
                            kurdishText:
                                "خۆی کرد بە ژوورەکەمدا و داوای کرد بزانێت چی ڕوویداوە.",
                            onPressedBritish: () => speakcharges43("en-GB"),
                            onPressedAmerican: () => speakcharges43("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٧. (کردار) پێدانی ئەرک و بەرپرسیاریەتی بە کەسێک"),
                          SentencesRow(
                            englishText:
                                "The committee has been charged with the development of sport in the region.",
                            kurdishText:
                                "لیژنەکە ڕاسپێردراوە بۆ گەشەپێدانی وەرزش لە ھەرێمەکە.",
                            onPressedBritish: () => speakcharges44("en-GB"),
                            onPressedAmerican: () => speakcharges44("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The governing body is charged with managing the school within its budget.",
                            kurdishText:
                                "دەستەی بەڕێوابەرایەتی ڕاسپێردراوە بۆ بەڕێوەبردنی خوێندنگەکە بەو بودجەیەی ھەیەتی.",
                            onPressedBritish: () => speakcharges45("en-GB"),
                            onPressedAmerican: () => speakcharges45("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٨. (کردار) پێدانی ھەستێکی زۆر بە کەسێک"),
                          SentencesRow(
                            englishText: "The room was charged with hatred.",
                            kurdishText: "ژوورەکە پڕبوو لە ھەست.",
                            onPressedBritish: () => speakcharges46("en-GB"),
                            onPressedAmerican: () => speakcharges46("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٩. (کردار) پڕکردنی گڵاسێک"),
                          SentencesRow(
                            englishText:
                                "Please charge your glasses and drink a toast to the bride and groom!",
                            kurdishText:
                                "تکایە گڵاسەکانتان پڕبکەن و پێکێک بخۆنەوە بەخۆشی بووک و زاوا.",
                            onPressedBritish: () => speakcharges47("en-GB"),
                            onPressedAmerican: () => speakcharges47("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: charge (derived forms: charges, charged, charging)
1. To make a rush at or sudden attack upon, as in battle (= bear down)
"he saw Jess charging at him with a pitchfork";
 
2. Blame for, make a claim of wrongdoing or misbehaviour against (= accuse)
"he charged the director with indifference";
 
3. Demand payment (= bill)
"Will I get charged for this service?";
 
4. Move quickly and violently (= tear [informal], shoot, shoot down, buck, bomb [Brit, informal], scream [informal])
"He came charging into my office";
 
5. Assign a duty, responsibility or obligation to (= appoint)
"She was charged with supervising the creation of a concordance";
 
6. Place a formal charge against (= lodge, file)
"The suspect was charged with murdering his wife";
 
7. Make an accusatory claim
"The defence attorney charged that the jurors were biased"
 
8. Fill or load to capacity
"charge the wagon with hay"
 
9. Enter a certain amount as a charge
"he charged me £15"
 
10. Cause to be admitted; of persons to an institution (= commit, institutionalize, institutionalise [Brit], send)
"After the second episode, she had to be charged";
 
11. Give over to another for care or safekeeping (= consign)
"charge your baggage";
 
12. Pay with a credit card; pay with plastic money; postpone payment by recording a purchase as a debt
"Will you pay cash or charge the purchase?"
 
13. Lie down on command, of hunting dogs
 
14. Cause to be agitated, excited, or roused (= agitate, rouse, turn on, commove, excite, charge up)
"The speaker charged up the crowd with his inflammatory remarks";
 
15. (art) place a heraldic bearing on
"charge all weapons, shields, and banners"
 
16. Provide (a device) with something necessary (= load)
"He charged his gun carefully";
 
17. Direct into a position for use (= level, point)
"He charged his weapon at me";
 
18. Impose a task upon, assign a responsibility to (= saddle, burden, lumber [Brit, informal])
"He charged her with cleaning up all the files over the weekend";
 
19. (law) instruct (a jury) about the law, its application, and the weighing of evidence
 
20. Instruct or command with authority
"The teacher charged the children to memorize the poem"
 
21. Attribute responsibility to (= blame)
"The tragedy was charged to her inexperience";
 
22. Set or ask for a certain price
"How much do you charge for lunch?"; "This fellow charges £100 for a massage"
 
23. Cause formation of a net electrical charge in or on
"charge a conductor"
 
24. Energize a battery by passing a current through it in the direction opposite to discharge
"I need to charge my car battery"
 
25. Saturate
"The room was charged with tension and anxiety"

- Noun: charge (derived forms: charges)
1. An impetuous rush toward someone or something
"the wrestler's charge carried him past his adversary"; "the battle began with a cavalry charge"
 
2. (criminal law) a pleading describing some wrong or offence (= complaint)
"he was arrested on a charge of larceny";
 
3. The price charged for some article or service
"the admission charge"
 
4. The quantity of unbalanced electricity in a body (either positive or negative) and construed as an excess or deficiency of electrons (= electric charge)
"the battery needed a fresh charge";

5. Attention and management implying responsibility for safety (= care, tutelage, guardianship)
"he is in the charge of a bodyguard";

6. A special assignment that is given to a person or group (= mission, commission)
"his charge was to deliver a message";
 
7. A person committed to your care
"the teacher led her charges across the street"
 
8. (tax) financial liabilities (such as a tax)
"the charges against the estate"
 
9. (psychoanalysis) the libidinal energy invested in some idea, person or object (= cathexis)
"Freud thought of cathexis as a psychic analog of an electrical charge";
 
10. A sudden pleasurable excitement (= bang, rush, flush, thrill, kick, buzz [informal])
"they got a great charge out of it";
 
11. Request for payment of a debt (= billing)
"they submitted their charges at the end of each month";
 
12. A formal statement of a command or injunction to do something (= commission, direction)
"the judge's charge to the jury";

13. An assertion that someone is guilty of a fault or offence (= accusation)
"the newspaper published charges that Jones was guilty of drunken driving";
 
14. Heraldry consisting of a design or image depicted on a shield (= bearing, heraldic bearing, armorial bearing)
 
15. A quantity of explosive to be set off at one time (= burster, bursting charge, explosive charge)
"this cartridge has a powder charge of 50 grains";
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

  final String _videoId = 'NCLZi2Rn_ug';
  final double _startSeconds = 125;

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

  final String _videoId = 's1SaD-gSZO4';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 907;

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

  final String _videoId = 'ewLpXw6uN28';
  final double _startSeconds = 931;

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

  final String _videoId = 'bHIhgxav9LY';
  final double _startSeconds = 75;

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

  final String _videoId = 'XI9kKiyIMf0';
  final double _startSeconds = 100;

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

  final String _videoId = '95YYqXFLfI8';
  final double _startSeconds = 10;

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

  final String _videoId = 'esayi49OAk4';
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

// end WORD_WEB
