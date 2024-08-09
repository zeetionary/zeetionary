import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycondition extends StatelessWidget {
// blank divider
  EnglishEntrycondition({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcondition(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("condition");
  }

  Future<void> speakconditions1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Many of the paintings are in poor condition.");
  }

  Future<void> speakconditions2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The condition of the roads is poor.");
  }

  Future<void> speakconditions3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The car is still in excellent condition.");
  }

  Future<void> speakconditions4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He is overweight and out of condition.");
  }

  Future<void> speakconditions5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The motorcyclist was in a critical condition in hospital last night.");
  }

  Future<void> speakconditions6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You are in no condition to go anywhere.");
  }

  Future<void> speakconditions7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her condition has deteriorated.");
  }

  Future<void> speakconditions8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Does your child have any kind of medical condition that we should know about?");
  }

  Future<void> speakconditions9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She has a serious health condition.");
  }

  Future<void> speakconditions10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He suffers from a serious heart condition.");
  }

  Future<void> speakconditions11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They were working under appalling conditions.");
  }

  Future<void> speakconditions12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He grew up in conditions of poverty.");
  }

  Future<void> speakconditions13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The plants grow best in cool, damp conditions.");
  }

  Future<void> speakconditions14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The boat sank in adverse weather conditions.");
  }

  Future<void> speakconditions15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Conditions are ideal for sailing today.");
  }

  Future<void> speakconditions16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Animals adapt to changing environmental conditions.");
  }

  Future<void> speakconditions17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The offer is subject to certain conditions.");
  }

  Future<void> speakconditions18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The officials spoke on condition of anonymity.");
  }

  Future<void> speakconditions19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Congress can impose strict conditions on the bank.");
  }

  Future<void> speakconditions20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They have agreed to a ceasefire provided their conditions are met.");
  }

  Future<void> speakconditions21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He denied being in breach of bail conditions.");
  }

  Future<void> speakconditions22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The UN has imposed strict conditions on the ceasefire.");
  }

  Future<void> speakconditions23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Stable political leadership is a necessary condition for economic growth.");
  }

  Future<void> speakconditions24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We are working to create the conditions for peace.");
  }

  Future<void> speakconditions25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Applicants must agree to teach for three years as a condition of admission to the program.");
  }

  Future<void> speakconditions26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He spoke angrily about the condition of the urban poor.");
  }

  Future<void> speakconditions27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Patients can become conditioned to particular forms of treatment.");
  }

  Future<void> speakconditions28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The rats had been conditioned to ring a bell when they wanted food.");
  }

  Future<void> speakconditions29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Gender roles are often conditioned by cultural factors.");
  }

  Future<void> speakconditions30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He conditions his beard with oil to keep it soft.");
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
                            EntryTitle(word: "condition"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈdɪʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcondition("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈdɪʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcondition("en-US"),
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
کوردی: مەرج، شەرت،	ڕەوش، لۆر، بار، دۆخ، کاودان، بارودۆخ، ھەل‌ومەرج، مەرەد، چۆنیەتی، لەشوولار،	لەش‌ساغی، سڵامەتی، ساغی،	نەخۆشی، ناسازی،	(کۆمەڵایەتی) پلەوپایە، پێگە، ھەل‌ومەرج، بارودۆخ، کاودان، دەست‌ودار
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) ئەو دۆخەی شتێکی تێدایە"),
                          SentencesRow(
                            englishText:
                                "Many of the paintings are in poor condition.",
                            kurdishText:
                                "زۆرێک لە تابلۆکان لە دۆخی خراپدان.", // condition",
                            onPressedBritish: () => speakconditions1("en-GB"),
                            onPressedAmerican: () => speakconditions1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The condition of the roads is poor.",
                            kurdishText: "دۆخی ڕێگاوبانەکان خراپە.",
                            onPressedBritish: () => speakconditions2("en-GB"),
                            onPressedAmerican: () => speakconditions2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The car is still in excellent condition.",
                            kurdishText:
                                "ئۆتۆمبێلەکە ھێشتا لە دۆخێکی یەکجارباشە.",
                            onPressedBritish: () => speakconditions3("en-GB"),
                            onPressedAmerican: () => speakconditions3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) دۆخی تەندرووستی کەسێک؛ ئەوەی تا چەند تەندرووستە"),
                          SentencesRow(
                            englishText:
                                "He is overweight and out of condition (= not physically fit).",
                            kurdishText: "کێشی زۆرە و لەشوولاری ناتەندرووستە.",
                            onPressedBritish: () => speakconditions4("en-GB"),
                            onPressedAmerican: () => speakconditions4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The motorcyclist was in a critical condition (= at risk of dying) in hospital last night.",
                            kurdishText:
                                "ماتۆڕسوارەکە دوێنێ شەو لە دۆخی ناجێگیردا بوو لە نەخۆشخانە.",
                            onPressedBritish: () => speakconditions5("en-GB"),
                            onPressedAmerican: () => speakconditions5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You are in no condition (= too ill/sick, etc.) to go anywhere.",
                            kurdishText:
                                "لە دۆخێکی وەھادا نیت بچیتە ھیچ شوێنێک.",
                            onPressedBritish: () => speakconditions6("en-GB"),
                            onPressedAmerican: () => speakconditions6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Her condition has deteriorated.",
                            kurdishText: "تەندرووستی خراپتر بووە.",
                            onPressedBritish: () => speakconditions7("en-GB"),
                            onPressedAmerican: () => speakconditions7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) نەخۆشییەک کە ماوەیەکی زۆرە ھەتە بەھۆی ئەوەی چارەسەر ناکرێت"),
                          SentencesRow(
                            englishText:
                                "Does your child have any kind of medical condition that we should know about?",
                            kurdishText:
                                "منداڵەکەت ھیچ نەخۆشییەکی تەندرووستی ھەیە کە پێویست بکات بیزانین؟",
                            onPressedBritish: () => speakconditions8("en-GB"),
                            onPressedAmerican: () => speakconditions8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She has a serious health condition.",
                            kurdishText: "نەخۆشییەکی تەندرووستی سەختی ھەیە.",
                            onPressedBritish: () => speakconditions9("en-GB"),
                            onPressedAmerican: () => speakconditions9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He suffers from a serious heart condition.",
                            kurdishText:
                                "بە دەست نەخۆشییەکی سەختی دڵەوە دەناڵێنێت.",
                            onPressedBritish: () => speakconditions10("en-GB"),
                            onPressedAmerican: () => speakconditions10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ھەلومەرج؛ ئەو دۆخەی تێیدا خەڵکی دەژین، کاردەکەن، یان ئیشەکانیان دەکەن"),
                          SentencesRow(
                            englishText:
                                "They were working under appalling conditions.",
                            kurdishText:
                                "لە ھەلومەرجی زۆر خراپدا کاریان دەکرد.",
                            onPressedBritish: () => speakconditions11("en-GB"),
                            onPressedAmerican: () => speakconditions11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He grew up in conditions of poverty.",
                            kurdishText: "لە ھەلومەرجی نەداریدا گەورە بوو.",
                            onPressedBritish: () => speakconditions12("en-GB"),
                            onPressedAmerican: () => speakconditions12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) دۆخێک کە کاریگەری لەسەر چۆنیەتی ڕوودانی شتێک دەکات"),
                          SentencesRow(
                            englishText:
                                "The plants grow best in cool, damp conditions.",
                            kurdishText:
                                "ڕووەکەکان گەشە بە باشترین دەکەن لە دۆخی سارد و شێداردا.",
                            onPressedBritish: () => speakconditions13("en-GB"),
                            onPressedAmerican: () => speakconditions13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The boat sank in adverse weather conditions.",
                            kurdishText:
                                "بەلەمە نغرۆبوو لە دۆخی کەشووھەوای نەلەباردا.",
                            onPressedBritish: () => speakconditions14("en-GB"),
                            onPressedAmerican: () => speakconditions14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Conditions are ideal for sailing today.",
                            kurdishText: "ئەمڕۆ دۆخەکە نایابە بۆ فرۆشتن.",
                            onPressedBritish: () => speakconditions15("en-GB"),
                            onPressedAmerican: () => speakconditions15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Animals adapt to changing environmental conditions.",
                            kurdishText: "ئاژەڵ ڕادێت بە دۆخی گۆڕاوی ژینگەیی.",
                            onPressedBritish: () => speakconditions16("en-GB"),
                            onPressedAmerican: () => speakconditions16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) مەرج؛ یاسایەک یان بڕیارێک کە دەبێت پێی ڕازی بیت"),
                          SentencesRow(
                            englishText:
                                "The offer is subject to certain conditions.",
                            kurdishText: "ئۆفەرەکە کۆمەڵێک مەرجی لەگەڵە.",
                            onPressedBritish: () => speakconditions17("en-GB"),
                            onPressedAmerican: () => speakconditions17("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The officials spoke on condition of anonymity.",
                            kurdishText:
                                "بەرپرسەکان بە مەرجی نھێنیبوون قسەیان کردووە.",
                            onPressedBritish: () => speakconditions18("en-GB"),
                            onPressedAmerican: () => speakconditions18("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Congress can impose strict conditions on the bank.",
                                    kurdishText:
                                        "کۆنگرێس دەتوانێت مەرجی سەخت بەسەر بانکەکەدا بسەپێنێت.",
                                    onPressedBritish: () =>
                                        speakconditions19("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconditions19("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "They have agreed to a ceasefire provided their conditions are met.",
                                    kurdishText:
                                        "بە ئاگربەست ڕازیبوونە ئەگەر مەرجەکانیان بەدیبھێندرێت.",
                                    onPressedBritish: () =>
                                        speakconditions20("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconditions20("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He denied being in breach of bail conditions.",
                                    kurdishText:
                                        "ڕەتیکردەوە مەرجەکانی کەفالەتەکەی شکاندبێت.",
                                    onPressedBritish: () =>
                                        speakconditions21("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconditions21("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The UN has imposed strict conditions on the ceasefire.",
                                    kurdishText:
                                        "نەتەوە یەکگرتووەکان مەرجی توندی سەپاند بەسەر ئاگربەستەکەدا.",
                                    onPressedBritish: () =>
                                        speakconditions22("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconditions22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) دۆخێک کە مەرجە بوونی ھەبێت بۆ ئەوەی دۆخێکی تر درووست ببێت"),
                          SentencesRow(
                            englishText:
                                "Stable political leadership is a necessary condition for economic growth.",
                            kurdishText:
                                "سەرکردایەتی سیاسی سەقامگیر مەرجێکی پێویستە بۆ گەشەی ئابووری.",
                            onPressedBritish: () => speakconditions23("en-GB"),
                            onPressedAmerican: () => speakconditions23("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We are working to create the conditions for peace.",
                            kurdishText:
                                "کار دەکەین بۆ خولقاندنی ھەلومەرجی ئاشتی.",
                            onPressedBritish: () => speakconditions24("en-GB"),
                            onPressedAmerican: () => speakconditions24("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Applicants must agree to teach for three years as a condition of admission to the program.",
                            kurdishText:
                                "خوازیاران دەبێت ڕازی بن بۆ سێ ساڵ وانە بڵێنەوە وەک مەرجی بەژدارییان لە پڕۆگرامەکە.",
                            onPressedBritish: () => speakconditions25("en-GB"),
                            onPressedAmerican: () => speakconditions25("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) دۆخی کۆمەڵە کەسێک بەھۆی دۆخیان لە ژیاندا، کێشەکانیان، ھتد"),
                          SentencesRow(
                            englishText:
                                "He spoke angrily about the condition of the urban poor.",
                            kurdishText:
                                "بە تووڕەییەوە قسەیکرد دژ بە دۆخی ھەژارانی گوندنشین.",
                            onPressedBritish: () => speakconditions26("en-GB"),
                            onPressedAmerican: () => speakconditions26("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) ڕاھێنانی کەسێک کە بە شێوەیەکی دیاریکراو ڕەفتار بکات یان بە دۆخێکی دیاریکراو ڕابێت"),
                          SentencesRow(
                            englishText:
                                "Patients can become conditioned to particular forms of treatment.",
                            kurdishText:
                                "نەخۆش دەکرێت ڕابێت بە جۆرە جیاوازەکانی چارەسەر.",
                            onPressedBritish: () => speakconditions27("en-GB"),
                            onPressedAmerican: () => speakconditions27("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The rats had been conditioned to ring a bell when they wanted food.",
                            kurdishText:
                                "مشکەکان ڕاھێنرابوون کە زەنگێک لێ بدەن کە خواردنیان بوێت.",
                            onPressedBritish: () => speakconditions28("en-GB"),
                            onPressedAmerican: () => speakconditions28("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) ھەبوونی کاریگەرییەکی گرنگ لەسەر کەسێک/شتێک"),
                          SentencesRow(
                            englishText:
                                "Gender roles are often conditioned by cultural factors.",
                            kurdishText:
                                "ئەرکە ڕەگەزییەکان زۆرجار بە کاریگەری فاکتەرە کەلتوورییەکانن.",
                            onPressedBritish: () => speakconditions29("en-GB"),
                            onPressedAmerican: () => speakconditions29("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) پاراستنی شتێک بە تەندرووست، بۆ نموونە قژت یان پێست؛ بەکارھێنانی شتێک، بۆ نموونە کرێم، کە بە تەندرووست دەیھێڵێت"),
                          SentencesRow(
                            englishText:
                                "He conditions his beard with oil to keep it soft.",
                            kurdishText:
                                "ڕیشی بە زەیت بە چەور دەکات بۆ ھێشتنەوەی بە نەرمی.",
                            onPressedBritish: () => speakconditions30("en-GB"),
                            onPressedAmerican: () => speakconditions30("en-US"),
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
                        // YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(),
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
- Noun: condition (derived forms: conditions)
1. A state at a particular time (= status)
"a condition of disrepair";
 
2. An assumption on which rests the validity or effect of something else (= precondition, stipulation)
 
3. A mode of being or form of existence of a person or thing
"the human condition"
 
4. Information that should be kept in mind when making a decision (= circumstance, consideration)
"another condition is the time it would take";
 
5. The state of (good) health (especially in the phrases 'in condition' or 'in shape' or 'out of condition' or 'out of shape') (= shape)
 
6. An illness, disease, or other medical problem
"a heart condition"; "a skin condition"
 
7. (usually plural) a statement of what is required as part of an agreement (= strings, term)
"the contract set out the conditions of the lease";
 
8. The procedure that is varied in order to estimate a variable's effect by comparison with a control condition (= experimental condition)

- Verb: condition (derived forms: conditions, conditioned, conditioning)
1. Establish a conditioned response
 
2. Develop (a child's or animal's) behaviour by instruction and practice; especially to teach self-control (= discipline, train, check)
 
3. Make a condition or requirement in a contract or agreement; make an express demand or provision in an agreement (= stipulate, qualify, specify)
"The will conditions that she can live in the house for the rest of her life";
 
4. Put into a better state
"he conditions old cars"
 
5. Apply conditioner to in order to make smooth and shiny
"I condition my hair after washing it"
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'kqzRXtXSuF8';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '3pbTmXsfiYk';
  final double _startSeconds = 131;

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

  final String _videoId = 'QrWzFYsBCb8';
  final double _startSeconds = 413;

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

  final String _videoId = 'dwEKqAwoz0Y';
  final double _startSeconds = 259;

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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 120;

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

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 269;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1701;

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