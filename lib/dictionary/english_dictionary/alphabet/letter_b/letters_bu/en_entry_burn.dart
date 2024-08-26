import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryburn extends StatelessWidget {
// blank divider
  EnglishEntryburn({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakburn(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("burn");
  }

  Future<void> speakburns1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Fires were burning all over the city.");
  }

  Future<void> speakburns2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A small candle burned brightly.");
  }

  Future<void> speakburns3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The fire was still burning fiercely.");
  }

  Future<void> speakburns4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She burned his old love letters.");
  }

  Future<void> speakburns5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("By nightfall the whole city was burning.");
  }

  Future<void> speakburns6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The girl ran from the burning building.");
  }

  Future<void> speakburns7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They called us to tell us that my aunt's house was burning.");
  }

  Future<void> speakburns8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The house burned to the ground.");
  }

  Future<void> speakburns9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Ten people burned to death in the hotel fire.");
  }

  Future<void> speakburns10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("All his belongings were burnt in the fire.");
  }

  Future<void> speakburns11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Several protesters burned American flags.");
  }

  Future<void> speakburns12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Which fuel burns most efficiently?");
  }

  Future<void> speakburns13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Some people burn calories faster than others.");
  }

  Future<void> speakburns14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I can smell something burning in the kitchen.");
  }

  Future<void> speakburns15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Sorry—I burnt the cake.");
  }

  Future<void> speakburns16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My skin burns easily.");
  }

  Future<void> speakburns17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I burnt my tongue trying to eat a hot soup.");
  }

  Future<void> speakburns18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The soup's hot. Don't burn your mouth.");
  }

  Future<void> speakburns19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His face had been horrifically burnt by acid.");
  }

  Future<void> speakburns20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Your forehead's burning. Have you got a fever?");
  }

  Future<void> speakburns21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Our eyes were burning from the chemicals in the air.");
  }

  Future<void> speakburns22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Their torches burned brightly in the dark.");
  }

  Future<void> speakburns23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She could sense the anger burning slowly inside him.");
  }

  Future<void> speakburns24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The car was burning down the road.");
  }

  Future<void> speakburns25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("So you did it just to burn me?");
  }

  Future<void> speakburns26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The state has already burned through its cash reserves.");
  }

  Future<void> speakburns27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She suffered serious burns but is expected to survive.");
  }

  Future<void> speakburns28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He is recovering from burns to his face and hands.");
  }

  Future<void> speakburns29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakburns2929");
  }

  Future<void> speakburns30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakburns3030");
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
                            EntryTitle(word: "burn"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɜːn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakburn("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɜːrn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakburn("en-US"),
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
کوردی: سووتان، چزان، برژانەوە، سووتانەوە، کووزیان، سفت‌وسۆ، سفت‌وسوێ، کزانەوە، چووزانەوە، تۆزانەوە
"""),
                          const DefinitionKurdish(
                              text: "١. (کردار) درووستکردنی بڵێسە و گەرمی"),
                          SentencesRow(
                            englishText:
                                "Fires were burning all over the city.",
                            kurdishText: "ئاگر تاوی سەندبوو لە تەواوی شارەکە.",
                            onPressedBritish: () => speakburns1("en-GB"),
                            onPressedAmerican: () => speakburns1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "A small candle burned brightly.",
                            kurdishText: "مۆمێکی بچووک بە درەوشاوەیی دەسووتا.",
                            onPressedBritish: () => speakburns2("en-GB"),
                            onPressedAmerican: () => speakburns2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The fire was still burning fiercely.",
                                    kurdishText:
                                        "ئاگرەکە ھێشتا بە تاوەوە دەگڕیا.",
                                    onPressedBritish: () =>
                                        speakburns3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakburns3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She burned his old love letters.",
                                    kurdishText:
                                        "نامە ئەویندارییە کۆنەکانی سوتاند.",
                                    onPressedBritish: () =>
                                        speakburns4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakburns4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) بوون لە ناو ئاگردا"),
                          SentencesRow(
                            englishText:
                                "By nightfall the whole city was burning.",
                            kurdishText: "تا شەو تەواوی شارەکە لە ئاگردابوو.",
                            onPressedBritish: () => speakburns5("en-GB"),
                            onPressedAmerican: () => speakburns5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The girl ran from the burning building.",
                            kurdishText: "کچەکە ڕایکرد لە ماڵە گڕگرتووەکە.",
                            onPressedBritish: () => speakburns6("en-GB"),
                            onPressedAmerican: () => speakburns6("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "They called us to tell us that my aunt's house was burning.",
                                    kurdishText:
                                        "پەیوەندییان پێوە کردین تا بڵێن ماڵی پوورم ئاگری گرتووە.",
                                    onPressedBritish: () =>
                                        speakburns7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakburns7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) لەناوبردن، زیان گەیاندن، بریندارکردن، یان کوشتن بە ئاگر"),
                          SentencesRow(
                            englishText: "The house burned to the ground.",
                            kurdishText: "خانووەکە بە تەواوی سووتا.",
                            onPressedBritish: () => speakburns8("en-GB"),
                            onPressedAmerican: () => speakburns8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Ten people burned to death in the hotel fire.",
                            kurdishText: "دە کەس مردن لە ئاگری ھوتێلەکەدا.",
                            onPressedBritish: () => speakburns9("en-GB"),
                            onPressedAmerican: () => speakburns9("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "All his belongings were burnt in the fire.",
                                    kurdishText:
                                        "تەواوی کەلوپەلەکانی لە ئاگرەکەدا سووتان.",
                                    onPressedBritish: () =>
                                        speakburns10("en-GB"),
                                    onPressedAmerican: () =>
                                        speakburns10("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Several protesters burned American flags.",
                                    kurdishText:
                                        "ژمارەیەک خۆپیشاندەر ئاڵای ئەمریکایان سووتاند.",
                                    onPressedBritish: () =>
                                        speakburns11("en-GB"),
                                    onPressedAmerican: () =>
                                        speakburns11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) سووتاندنی سووتەمەنی بە مەبەستی درووستکردنی گەرمی، ڕۆشنایی، یان وزە"),
                          SentencesRow(
                            englishText: "Which fuel burns most efficiently?",
                            kurdishText:
                                "چی سووتەمەنییەک بە کاریگەری دەسووتێت؟",
                            onPressedBritish: () => speakburns12("en-GB"),
                            onPressedAmerican: () => speakburns12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Some people burn calories (= use food to produce energy) faster than others.",
                            kurdishText:
                                "(بەکارھێنانی خوازراوی) ھەندێک کەس کالۆری زیاتر لە کەسانی دیکە دەسووتێنن.",
                            onPressedBritish: () => speakburns13("en-GB"),
                            onPressedAmerican: () => speakburns13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) سووتاندنی خۆراک بەھۆی زۆر گەرمکردن"),
                          SentencesRow(
                            englishText:
                                "I can smell something burning in the kitchen.",
                            kurdishText:
                                "بۆنی شتێک دەکەم لە چێشتخانەکە دەسووتێت.",
                            onPressedBritish: () => speakburns14("en-GB"),
                            onPressedAmerican: () => speakburns14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Sorry—I burnt the cake.",
                            kurdishText: "ببوورە، کێکەکەم سووتاند.",
                            onPressedBritish: () => speakburns15("en-GB"),
                            onPressedAmerican: () => speakburns15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) بریندار بوون یان زیان پێگەشتن بە خۆر، گەرمی، ئەسید، ھتد"),
                          SentencesRow(
                            englishText:
                                "My skin burns easily (= in the sun)..",
                            kurdishText: "پێستم بە ئاسانی دەسووتێتەوە.",
                            onPressedBritish: () => speakburns16("en-GB"),
                            onPressedAmerican: () => speakburns16("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I burnt my tongue trying to eat a hot soup.",
                            kurdishText:
                                "زمانمم سووتاند بە خواردنی شۆربایەکی گەرم.",
                            onPressedBritish: () => speakburns17("en-GB"),
                            onPressedAmerican: () => speakburns17("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The soup's hot. Don't burn your mouth.",
                                    kurdishText:
                                        "شۆرباکە گەرمە. دەمت مەسووتێنە.",
                                    onPressedBritish: () =>
                                        speakburns18("en-GB"),
                                    onPressedAmerican: () =>
                                        speakburns18("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "His face had been horrifically burnt by acid.",
                                    kurdishText:
                                        "ڕووخساری بە خراپی سوتێندرابوو بە ئەسید.",
                                    onPressedBritish: () =>
                                        speakburns19("en-GB"),
                                    onPressedAmerican: () =>
                                        speakburns19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) گەرمبوون یان بەئازاربوونی بەشێکی جەستە"),
                          SentencesRow(
                            englishText:
                                "Your forehead's burning. Have you got a fever?",
                            kurdishText: "ناوچاوانت گڕی گرتووە. تات ھەیە؟",
                            onPressedBritish: () => speakburns20("en-GB"),
                            onPressedAmerican: () => speakburns20("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Our eyes were burning from the chemicals in the air.",
                            kurdishText:
                                "چاوەکانمان بە ئازار بوون بەھۆی مادە کیمیاییەکانی ناو ھەوا.",
                            onPressedBritish: () => speakburns21("en-GB"),
                            onPressedAmerican: () => speakburns21("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) درووستکردنی ڕۆشنایی"),
                          SentencesRow(
                            englishText:
                                "Their torches burned brightly in the dark.",
                            kurdishText:
                                "لایتەکان بە درەوشاوەیی ھەڵکردبوو لە تاریکییەکەدا.",
                            onPressedBritish: () => speakburns22("en-GB"),
                            onPressedAmerican: () => speakburns22("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) ھەستکردن بە ھەست و ئارەزوویەکی بەھێز"),
                          SentencesRow(
                            englishText:
                                "She could sense the anger burning slowly inside him.",
                            kurdishText:
                                "ھەستی بە تووڕەییەکەی دەکرد کە تاوی سەندبوو لە ناخیدا.",
                            onPressedBritish: () => speakburns23("en-GB"),
                            onPressedAmerican: () => speakburns23("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٠. (کردار) ڕۆشتن زۆر بە خێرایی"),
                          SentencesRow(
                            englishText: "The car was burning down the road.",
                            kurdishText: "ئۆتۆمبێلەکەی گڤەی دەھات بە ڕێگاکەدا.",
                            onPressedBritish: () => speakburns24("en-GB"),
                            onPressedAmerican: () => speakburns24("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١١. (کردار) تووڕەکردن"),
                          SentencesRow(
                            englishText: "So you did it just to burn me?",
                            kurdishText: "ئەوەت کرد بەس بۆ ئەوەی تووڕەم بکەیت؟",
                            onPressedBritish: () => speakburns25("en-GB"),
                            onPressedAmerican: () => speakburns25("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (کردار) پارە خەرجکردن"),
                          SentencesRow(
                            englishText:
                                "The state has already burned through its cash reserves.",
                            kurdishText:
                                "ویلایەتەکە دەمێک دەبێت ھەموو پارەی کاشی یەدەگی بەکارھێناوە.",
                            onPressedBritish: () => speakburns26("en-GB"),
                            onPressedAmerican: () => speakburns26("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (ناو) برین یان نیشانە بە ئاگر، ئەسید، یان گەرمی"),
                          SentencesRow(
                            englishText:
                                "She suffered serious burns but is expected to survive.",
                            kurdishText:
                                "تووشی سووتانی خراپ بووە بەڵام چاوەڕێ دەکرێت ڕزگاری ببێت.",
                            onPressedBritish: () => speakburns27("en-GB"),
                            onPressedAmerican: () => speakburns27("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He is recovering from burns to his face and hands.",
                            kurdishText:
                                "خەریکە چاکدەبێتەوە لە سووتاوی لە ڕووخسار و دەستیدا.",
                            onPressedBritish: () => speakburns28("en-GB"),
                            onPressedAmerican: () => speakburns28("en-US"),
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
- Verb: burn (derived forms: burned, burns, burning)
1. Undergo combustion (= combust)
"Maple wood burns well";
 
2. Destroy by fire (= fire, burn down)
"They burned the house and his diaries";
 
3. Shine intensely, as if with heat (= glow)
"The candles were burning";
 
4. Cause to burn or combust (= combust)
"The sun burned off the fog";
 
5. Feel strong emotion, especially anger or passion
"She was burning with anger"; "He was burning to try out his new skis"
 
6. Cause to undergo combustion (= incinerate)
"The car burns only Diesel oil"; "burn garbage";
 
7. Execute by tying to a stake and setting alight
"Witches were burned in Salem"
 
8. Spend (significant amounts of money)
"He has money to burn"
 
9. Feel hot or painful
"My eyes are burning"
 
10. Burn, sear, or freeze (tissue) using a hot iron or electric current or a caustic agent (= cauterize, cauterise [Brit])
"The surgeon burned the wart";
 
11. Get a sunburn by overexposure to the sun (= sunburn)
 
12. Create by duplicating data (= cut)
"burn a CD";

13. Use up (energy) (= burn off, burn up)
"burn off calories through vigorous exercise"; "burn up calories through vigorous exercise";
 
14. Damage by burning with heat, fire, or radiation
 
15. [informal] Strongly criticize (= slate [Brit, informal], tear to shreds [informal], slam [informal], roast [informal])
 
16. Cause a sharp or stinging pain or discomfort (= bite, sting)
"The sun burned his face";

- Noun: burn (derived forms: burns)
1. An injury caused by exposure to heat, chemicals or radiation
 
2. Pain that feels hot as if it were on fire (= burning)
 
3. A place or area that has been burned (especially on a person's body) (= burn mark)
 
4. [informal] A remark capable of wounding mentally (= stinger, cut)
 
5. Damage inflicted by fire
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
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '6MIGnee5PPU';
  final double _startSeconds = 71;

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

  final String _videoId = 'sbUqZYbk_7Y';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'TNjOaAIz_ZY';
  final double _startSeconds = 16;

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

  final String _videoId = '_1wlqupaifM';
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

  final String _videoId = 'rN9NzgryhMY';
  final double _startSeconds = 1044;

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

  final String _videoId = 'qyn3Sy8m1QA';
  final double _startSeconds = 112;

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

  final String _videoId = 'b5FNTCWPwps';
  final double _startSeconds = 126;

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

  final String _videoId = 'hW69OIdAey0';
  final double _startSeconds = 172;

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

  final String _videoId = 'DLzA9kcjuGg';
  final double _startSeconds = 119;

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

  final String _videoId = 'g1eE-wNDJrE';
  final double _startSeconds = 141;

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
