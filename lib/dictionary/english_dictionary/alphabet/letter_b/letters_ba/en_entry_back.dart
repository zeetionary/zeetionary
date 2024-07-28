import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "back" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace back - replace EnglishEntryback

// replace speakBack - /bæk/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryback extends StatelessWidget {
  // blank divider
  EnglishEntryback({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speaka3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("back");
  }

  Future<void> speaka3s1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was lying on his back on the sofa.");
  }

  Future<void> speaka3s2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She broke her back in a riding accident.");
  }

  Future<void> speaka3s3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The man was refusing to go to the back of the queue.");
  }

  Future<void> speaka3s4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Take a card and write your name on the back.");
  }

  Future<void> speaka3s5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The arts page is usually towards the back of the newspaper.");
  }

  Future<void> speaka3s6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He put his jacket on the back of his chair (= the part of the chair that you put your back against when you sit on it).");
  }

  Future<void> speaka3s7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He plays at left back.");
  }

  Future<void> speaka3s8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We were sitting in the back row.");
  }

  Future<void> speaka3s9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was mentioned in a a back issue of the magazine.");
  }

  Future<void> speaka3s10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They owe the staff several thousand in back pay.");
  }

  Future<void> speaka3s11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He'll be back on Monday.");
  }

  Future<void> speaka3s12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I moved back to let them pass.");
  }

  Future<void> speaka3s13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We should have turned left five kilometres back.");
  }

  Future<void> speaka3s14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("If he hits me, I'll hit him back.");
  }

  Future<void> speaka3s15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The barriers kept the crowd back.");
  }

  Future<void> speaka3s16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The cathedral dates back to 1123.");
  }

  Future<void> speaka3s17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He could no longer hold back his tears.");
  }

  Future<void> speaka3s18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Beards are back.");
  }

  Future<void> speaka3s19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her parents backed her in her choice of career.");
  }

  Future<void> speaka3s20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Doctors have backed plans to raise the tax on cigarettes.");
  }

  Future<void> speaka3s21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("All complaints must be backed by evidence.");
  }

  Future<void> speaka3s22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I backed the winner and won fifty pounds.");
  }

  Future<void> speaka3s23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She backed into the garage.");
  }

  Future<void> speaka3s24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Each piece is backed with vinyl.");
  }

  Future<void> speaka3s25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The house is backed by fields.");
  }

  Future<void> speaka3s26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakA3s2626");
  }

  Future<void> speaka3s27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakA3s2727");
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
                            EntryTitle(
                                word: "back"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bæk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speaka3("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bæk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speaka3("en-US"),
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
کوردی: پشت، پاڵپشت، جێگای پاڵ(دانەوە)، گاز، میانە، پشتەوە، دواوە، پاش، ئاخر، دواوە، بەرگری (تۆپێن)، بن، ئاخر، کۆتایی، پێشوو، پێشتر، پێشین، ڕابردوو، دواوە، دواتر، پاشتر، پشتەوە، دواوە، پێش، دواکەوتوو، پاش‌کەوتوو، (دەنگ‌ناسی) دواوە، پشتەوە، لە دواوە، لە پشتەوە، پێش، پێشتر، لەوەپێش، دووبارە، دیسان
"""),
                          const DefinitionKurdish(
                              text: """١. (ناو) پشتی مرۆڤ"""),
                          SentencesRow(
                            englishText:
                                "He was lying on his back on the sofa.",
                            kurdishText:
                                "لەسەر پشتی لەسەر قەنەفەکە پاڵکەوتبوو.",
                            onPressedBritish: () => speaka3s1("en-GB"),
                            onPressedAmerican: () => speaka3s1("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) ناوەڕاستی ئێسکەکان لە ناوەڕاستی پشت"""),
                          SentencesRow(
                            englishText:
                                "She broke her back in a riding accident.",
                            kurdishText: "پشتی شکا لە ڕووداوێکی سوارچاکیدا.",
                            onPressedBritish: () => speaka3s2("en-GB"),
                            onPressedAmerican: () => speaka3s2("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) بەشی دواوەی شوێنێک، ئەو بەشەی کە دوورترینە لە پێشەوە"""),
                          SentencesRow(
                            englishText:
                                "The man was refusing to go to the back of the queue.",
                            kurdishText:
                                "پیاوەکە ڕەتیدەکردەوە بچێتە دواوەی ڕیزەکە.",
                            onPressedBritish: () => speaka3s3("en-GB"),
                            onPressedAmerican: () => speaka3s3("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ئەو بەشەی پەڕەیەک کە دەکەوێتە پێچەوانەی ئەو بەشەی کە گرنگترین زانیاری لەسەرە"""),
                          SentencesRow(
                            englishText:
                                "Take a card and write your name on the back.",
                            kurdishText:
                                "کاردێک دەربکە و ناوت لە پشتەوەت بنووسە.",
                            onPressedBritish: () => speaka3s4("en-GB"),
                            onPressedAmerican: () => speaka3s4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) پەڕەکانی کۆتایی کتێبێک، ڕۆژنامەیەک، ھتد"""),
                          SentencesRow(
                            englishText:
                                "The arts page is usually towards the back of the newspaper.",
                            kurdishText:
                                "پەڕەی ھونەر زۆرجار دەکەوێتە کۆتایی ڕۆژنامەکە.",
                            onPressedBritish: () => speaka3s5("en-GB"),
                            onPressedAmerican: () => speaka3s5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) ئەو بەشەی کوورسییەک کە پشتی پێوە دەدەیت"""),
                          SentencesRow(
                            englishText:
                                "He put his jacket on the back of his chair (= the part of the chair that you put your back against when you sit on it).",
                            kurdishText: "چاکەتەکەی خستە سەر پشتی کوورسیەکە.",
                            onPressedBritish: () => speaka3s6("en-GB"),
                            onPressedAmerican: () => speaka3s6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) یاریزانی بەرگریکار"""),
                          SentencesRow(
                            englishText: "He plays at left back.",
                            kurdishText: "لە بەشی چەپی بەرگری یاری دەکات.",
                            onPressedBritish: () => speaka3s7("en-GB"),
                            onPressedAmerican: () => speaka3s7("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ھاوەڵناو) کەوتنە بەشی پشتەوە"""),
                          SentencesRow(
                            englishText: "We were sitting in the back row.",
                            kurdishText: "لە ڕیزی دواوە دانیشتبووین.",
                            onPressedBritish: () => speaka3s8("en-GB"),
                            onPressedAmerican: () => speaka3s8("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ھاوەڵناو) لە ڕابردوودا"""),
                          SentencesRow(
                            englishText:
                                "It was mentioned in a a back issue of the magazine.",
                            kurdishText:
                                "لە ژمارەیەکی پێشووتری گۆڤارەکەدا باسکرا.",
                            onPressedBritish: () => speaka3s9("en-GB"),
                            onPressedAmerican: () => speaka3s9("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ھاوەڵناو) بڕە پارەیەک کە درەنگتر لە کاتی خۆی دەدرێت"""),
                          SentencesRow(
                            englishText:
                                "They owe the staff several thousand in back pay.",
                            kurdishText:
                                "چەند ھەزارێکی مووچەی نەدراوی ستافەکە قەرزارن.",
                            onPressedBritish: () => speaka3s10("en-GB"),
                            onPressedAmerican: () => speaka3s10("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ھاوەڵناو) دەنگێک کە درووست‌دەکرێت بەوەی پشتەوەی زمان بەرزتر دەبێت لە پێشەوەی زمان، بۆ نموونە دەنگی /ɑː/ لە ئینگلیزیدا"""),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ھاوەڵکار) گەڕانەوە بۆ قۆناغ، شوێن، چالاکی، یان دۆخی پێشوو"""),
                          SentencesRow(
                            englishText: "He'll be back on Monday.",
                            kurdishText: "ڕۆژی دووشەممە دەگەڕێتەوە.",
                            onPressedBritish: () => speaka3s11("en-GB"),
                            onPressedAmerican: () => speaka3s11("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (ھاوەڵکار) لە دواوە"""),
                          SentencesRow(
                            englishText: "I moved back to let them pass.",
                            kurdishText: "ھاتمە دواوە و ڕێگەمدا تێپەڕن.",
                            onPressedBritish: () => speaka3s12("en-GB"),
                            onPressedAmerican: () => speaka3s12("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ھاوەڵکار) لە شوێنێکی پێشووتر"""),
                          SentencesRow(
                            englishText:
                                "We should have turned left five kilometres back.",
                            kurdishText:
                                "پێش پێنج کیلۆمەتر دەبوو بە چەپدا لامان دابا.",
                            onPressedBritish: () => speaka3s13("en-GB"),
                            onPressedAmerican: () => speaka3s13("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٥. (ھاوەڵکار) لە وەڵامدا"""),
                          SentencesRow(
                            englishText: "If he hits me, I'll hit him back.",
                            kurdishText: "ئەگەر لێمدا، لێیئەدەمەوە.",
                            onPressedBritish: () => speaka3s14("en-GB"),
                            onPressedAmerican: () => speaka3s14("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٦. (ھاوەڵکار) دوور لە شتێک"""),
                          SentencesRow(
                            englishText: "The barriers kept the crowd back.",
                            kurdishText:
                                "بەربەستەکان جەماوەرەکەیان دوور ھێشتبوویەوە.",
                            onPressedBritish: () => speaka3s15("en-GB"),
                            onPressedAmerican: () => speaka3s15("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٧. (ھاوەڵکار) پێش ئێستا"""),
                          SentencesRow(
                            englishText: "The cathedral dates back to 1123.",
                            kurdishText: "کڵێساکە بۆ ساڵی ١١٢٣ دەگەڕێتەوە.",
                            onPressedBritish: () => speaka3s16("en-GB"),
                            onPressedAmerican: () => speaka3s16("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٨. (ھاوەڵکار) لەژێر کۆنترۆڵ"""),
                          SentencesRow(
                            englishText:
                                "He could no longer hold back his tears.",
                            kurdishText:
                                "چیتر نەیدەتوانی فرمێسکەکانی کۆنترۆڵ بکات.",
                            onPressedBritish: () => speaka3s17("en-GB"),
                            onPressedAmerican: () => speaka3s17("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٩. (ھاوەڵکار) شتێک کە دووبارە بووە بە مۆدە"""),
                          SentencesRow(
                            englishText: "Beards are back.",
                            kurdishText: "ڕیش دووبارە بووە بە باو.",
                            onPressedBritish: () => speaka3s18("en-GB"),
                            onPressedAmerican: () => speaka3s18("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٠. (کردار) ھاندان یان یارمەتیدان"""),
                          SentencesRow(
                            englishText:
                                "Her parents backed her in her choice of career.",
                            kurdishText:
                                "دایک و باوکی پاڵپشتیان کرد لە ھەڵبژاردنی کارەکەی.",
                            onPressedBritish: () => speaka3s19("en-GB"),
                            onPressedAmerican: () => speaka3s19("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢١. (کردار) پاڵپشتی‌کردن و ڕازیبوون لەگەڵ کەسێک """),
                          SentencesRow(
                            englishText:
                                "Doctors have backed plans to raise the tax on cigarettes.",
                            kurdishText:
                                "پزیشکان پاڵپشتی پلانی بەرزکردنەوەی باجن لەسەر جگەرە.",
                            onPressedBritish: () => speaka3s20("en-GB"),
                            onPressedAmerican: () => speaka3s20("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٢. (کردار) یارمەتیدان لە سەلماندنی ڕاستییەتی شتێک """),
                          SentencesRow(
                            englishText:
                                "All complaints must be backed by evidence.",
                            kurdishText:
                                "ھەموو ناڕەزاییەک دەبێت بەڵگەی پشتیوانی ھەبێت.",
                            onPressedBritish: () => speaka3s21("en-GB"),
                            onPressedAmerican: () => speaka3s21("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٣. (کردار) خستنە گرەوی پارە لە بەرژەوەندی ئەسپێک لە پێشبڕکێیەکدا یان تیمێک لە پاڵەوانێتییەکدا"""),
                          SentencesRow(
                            englishText:
                                "I backed the winner and won fifty pounds.",
                            kurdishText:
                                "گرەوم لەسەر براوەکە کرد و پەنجا پاوەندم بردەوە.",
                            onPressedBritish: () => speaka3s22("en-GB"),
                            onPressedAmerican: () => speaka3s22("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٤. (کردار) وا لە شتێک بکەیت بۆ دواوە بجووڵێت"""),
                          SentencesRow(
                            englishText: "She backed into the garage.",
                            kurdishText: "بەکی کردە گەراجەکە.",
                            onPressedBritish: () => speaka3s23("en-GB"),
                            onPressedAmerican: () => speaka3s23("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٥. (کردار) داپۆشینی پشتەوەی شتێک بۆ پاراستنی"""),
                          SentencesRow(
                            englishText: "Each piece is backed with vinyl.",
                            kurdishText: "ھەر پارچەیەک بە ڤینیل داپۆشراوە.",
                            onPressedBritish: () => speaka3s24("en-GB"),
                            onPressedAmerican: () => speaka3s24("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٦. (کردار) بوون لە پشتەوەی شتێک"""),
                          SentencesRow(
                            englishText: "The house is backed by fields.",
                            kurdishText: "خانووەکە کێڵگەی لە پشتەوەیە.",
                            onPressedBritish: () => speaka3s25("en-GB"),
                            onPressedAmerican: () => speaka3s25("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
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
- Noun: back
1. The posterior part of a human (or animal) body from the neck to the end of the spine (= dorsum)
"his back was nicely tanned";
 
2. The side that goes last or is not normally seen (= rear)
"he wrote the date on the back of the photograph";
 
3. The part of something that is furthest from the normal viewer (= rear)
"he stood at the back of the stage";
 
4. (football) a person who plays in the backfield
 
5. The series of vertebrae forming the axis of the skeleton and protecting the spinal cord (= spinal column, vertebral column, spine, backbone, rachis [technical])
"the fall broke his back";
 
6. The protective covering on the front, back, and spine of a book (= binding, book binding, cover)
 
7. The part of a garment that covers the back of your body
"they pinned a 'kick me' sign on his back"
 
8. A support that you can lean against while sitting (= backrest)
"the back of the dental chair was adjustable";
 
9. (American football) the position of a player on a football team who is stationed behind the line of scrimmage

- Adverb: back
1. In, to or toward a former location
"she went back to her parents' house"
 
2. At or to or toward the back or rear (= backward, backwards, rearward, rearwards)
"he moved back";
 
3. In, to or toward an original condition
"he went back to sleep"
 
4. In, to or toward a past time (= backward)
"set the clocks back an hour"; "never look back";
 
5. In reply
"he wrote back three days later"
 
6. In repayment or retaliation
"we paid back everything we had borrowed"; "he hit me and I hit him back"; "I was kept in after school for talking back to the teacher"

- Verb: back (derived forms: backing, backs, backed)
1. Pick one person to give support and approval to in a particular role (= endorse, indorse, plump for, plunk for, support)
"I backed Kennedy in 1960";
 
2. Travel backward
"back into the driveway"; "The car backed up and hit the tree"
 
3. Give support or one's approval to (= second, endorse, indorse)
"I can't back this plan";
 
4. Cause to travel backward
"back the car into the parking spot"
 
5. Support financial backing for
"back this enterprise"
 
6. Be in back of
"My garage backs their yard"
 
7. Gamble on something (= bet on, gage [archaic], stake, game, punt)
"Which horse are you backing?";
 
8. Shift to a counterclockwise direction
"the wind backed"
 
9. Establish as valid or genuine (= back up)
"Can you back up your claims?";
 
10. Strengthen by providing with a back or backing

- Adjective: back
1. Related to or located at the back
"the back yard"; "the back entrance"
 
2. Located at or near the back of an animal (= hind, hinder)
"back legs";
 
3. Of an earlier date
"back issues of the magazine"
 
4. Far from the main area or way
"she knows a back route"
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

  final String _videoId = '21Z4RIOFhMA';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'idWpZ63isMo';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'RNg3Z21BQo0';
  final double _startSeconds = 13;

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

  final String _videoId = 'LrWv8-NEwV8';
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

  final String _videoId = '7jD5Gkh4K34';
  final double _startSeconds = 258;

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

  final String _videoId = 'IqDbCsldMx0';
  final double _startSeconds = 253;

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

  final String _videoId = 'uhIdijSrnVc';
  final double _startSeconds = 287;

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

  final String _videoId = 'X3-gKPNyrTA';
  final double _startSeconds = 17;

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

  final String _videoId = 'PlBaIvxsqys';
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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'ZVJ5oLS74mc';
  final double _startSeconds = 96;

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

  final String _videoId = 'bMLbnsKGRfo';
  final double _startSeconds = 156;

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

  final String _videoId = 'A7afwIxo5lE';
  final double _startSeconds = 41;

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

// end back // TODO Implement this library.
