import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycare extends StatelessWidget {
  // blank divider
  EnglishEntrycare({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcare(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("care");
  }

  Future<void> speakcares1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Some people were badly injured and needed medical care.");
  }

  Future<void> speakcares2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We aim to continually improve the quality of patient care.");
  }

  Future<void> speakcares3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("With proper care, the plants may last for fifty years.");
  }

  Future<void> speakcares4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The children were left in the care of a neighbour.");
  }

  Future<void> speakcares5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The two girls were taken into care after their parents were killed.");
  }

  Future<void> speakcares6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He had been in foster care since he was five.");
  }

  Future<void> speakcares7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Great care is needed when buying a used car.");
  }

  Future<void> speakcares8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She chose her words with care.");
  }

  Future<void> speakcares9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Transporting an atomic bomb requires great care.");
  }

  Future<void> speakcares10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I felt free from the cares of the day as soon as I left the building.");
  }

  Future<void> speakcares11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Sam looked as if he didn't have a care in the world.");
  }

  Future<void> speakcares12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I don't care if I never see him again!");
  }

  Future<void> speakcares13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He threatened to fire me, as if I cared!");
  }

  Future<void> speakcares14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She cares deeply about environmental issues.");
  }

  Future<void> speakcares15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I don't really care about how much it costs.");
  }

  Future<void> speakcares16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He genuinely cares about his employees.");
  }

  Future<void> speakcares17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They care an awful lot about each other.");
  }

  Future<void> speakcares18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I've done this job more times than I care to remember.");
  }

  Future<void> speakcares19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares1919");
  }

  Future<void> speakcares20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2020");
  }

  Future<void> speakcares21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2121");
  }

  Future<void> speakcares22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2222");
  }

  Future<void> speakcares23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2323");
  }

  Future<void> speakcares24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2424");
  }

  Future<void> speakcares25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2525");
  }

  Future<void> speakcares26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2626");
  }

  Future<void> speakcares27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2727");
  }

  Future<void> speakcares28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2828");
  }

  Future<void> speakcares29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares2929");
  }

  Future<void> speakcares30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3030");
  }

  Future<void> speakcares31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3131");
  }

  Future<void> speakcares32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3232");
  }

  Future<void> speakcares33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3333");
  }

  Future<void> speakcares34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3434");
  }

  Future<void> speakcares35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3535");
  }

  Future<void> speakcares36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3636");
  }

  Future<void> speakcares37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3737");
  }

  Future<void> speakcares38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3838");
  }

  Future<void> speakcares39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares3939");
  }

  Future<void> speakcares40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4040");
  }

  Future<void> speakcares41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4141");
  }

  Future<void> speakcares42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4242");
  }

  Future<void> speakcares43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4343");
  }

  Future<void> speakcares44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4444");
  }

  Future<void> speakcares45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4545");
  }

  Future<void> speakcares46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4646");
  }

  Future<void> speakcares47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4747");
  }

  Future<void> speakcares48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4848");
  }

  Future<void> speakcares49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares4949");
  }

  Future<void> speakcares50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcares5050");
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
                            EntryTitle(word: "care"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /keə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcare("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ker/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcare("en-US"),
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
کوردی: ئاگاداری، وریایی، ھۆشیاری، ئاگالێ‌بوون، بەدیارەوەبوون، چاوبەسەرەوەبوون، لەبەرچاوگرتن، بەتەنگەوەبوون، بیر(لابوون)، دڵ(لابوون)، لالێ‌دانەوە، سەرنج، وردبوونەوە، لێ‌خوردبوونەوە، چاودێری، دڵەڕاوکە، دڵەکورکە، نگەرانی، دڵ‌لەدوایی، بەرپرسایەتی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) چاودێریکردنی کەسێک یان شتێک و پێدانی ئەوەی پێویستیانە"),
                          SentencesRow(
                            englishText:
                                "Some people were badly injured and needed medical care.",
                            kurdishText:
                                "ھەندێک کەس بە خراپی برینداربوون و پێویستیان بە چاودێریی تەندرووستی.", // care",
                            onPressedBritish: () => speakcares1("en-GB"),
                            onPressedAmerican: () => speakcares1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We aim to continually improve the quality of patient care.",
                            kurdishText:
                                "ئامانجمانە بە بەردەوامی کوالێتیی چاودێریی نەخۆشان باشتر بکەین.",
                            onPressedBritish: () => speakcares2("en-GB"),
                            onPressedAmerican: () => speakcares2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "With proper care, the plants may last for fifty years.",
                                    kurdishText:
                                        "بە چاودێریی باشەوە، ڕووەکەکان ڕەنگە بۆ پەنجا ساڵ بژین.",
                                    onPressedBritish: () =>
                                        speakcares3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcares3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The children were left in the care of a neighbour.",
                            kurdishText:
                                "منداڵەکان لەژێر چاودێریی دراوسێیەک جێھێڵدران.",
                            onPressedBritish: () => speakcares4("en-GB"),
                            onPressedAmerican: () => speakcares4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) دابینکردنی ماڵ بۆ ئەو منداڵانەی کە ناتوانن لەگەڵ دایک و باوکیان بژین لە کۆمەڵگەیەکی نیشتەجێبوون یان ماڵێکی دیکە"),
                          SentencesRow(
                            englishText:
                                "The two girls were taken into care after their parents were killed.",
                            kurdishText:
                                "دوو کچەکە بردرانە کۆمەڵگەی نیشتەجێبوون لە دوای دایک و باوکیان کوژران.",
                            onPressedBritish: () => speakcares5("en-GB"),
                            onPressedAmerican: () => speakcares5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He had been in foster care since he was five.",
                            kurdishText:
                                "لە خانەی بێ‌نەوایان بووە لە تەمەنی پێنج ساڵییەوە.",
                            onPressedBritish: () => speakcares6("en-GB"),
                            onPressedAmerican: () => speakcares6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ئەو سەرنجەی کە بە شتێکی دەدەیت بۆ ئەوەی بە باشی و بێ ھەڵە بیکەیت"),
                          SentencesRow(
                            englishText:
                                "Great care is needed when buying a used car.",
                            kurdishText:
                                "وریایی زۆر پێویستە کە ئۆتۆمبێلێکی دەستی دوو دەکڕیت.",
                            onPressedBritish: () => speakcares7("en-GB"),
                            onPressedAmerican: () => speakcares7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She chose her words with care.",
                            kurdishText: "بە وریاییەوە وشەکانی ھەڵبژارد.",
                            onPressedBritish: () => speakcares8("en-GB"),
                            onPressedAmerican: () => speakcares8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Transporting an atomic bomb requires great care.",
                            kurdishText:
                                "گواستنەوەی چەکێکی ئەتۆمی پێویستی بە چاودێری زۆر ھەیە.",
                            onPressedBritish: () => speakcares9("en-GB"),
                            onPressedAmerican: () => speakcares9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) ھەستی نیگەرانی"),
                          SentencesRow(
                            englishText:
                                "I felt free from the cares of the day as soon as I left the building.",
                            kurdishText:
                                "ھەرکە بیانکەم جێھێشت ھەموو نیگەرانی ڕۆژەکەم بیرچوو.",
                            onPressedBritish: () => speakcares10("en-GB"),
                            onPressedAmerican: () => speakcares10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Sam looked as if he didn't have a care in the world.",
                            kurdishText:
                                "سام وادیاربوو کە ھیچ خەمێکی لە دونیادا نەبێت.",
                            onPressedBritish: () => speakcares11("en-GB"),
                            onPressedAmerican: () => speakcares11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ھەستکردن بەوەی شتێک گرنگە و ھی ئەوەیە نیگەران بیت بۆی"),
                          SentencesRow(
                            englishText:
                                "I don't care (= I will not be upset) if I never see him again!",
                            kurdishText:
                                "گرنگ نییە لام ئەگەر ھەرگیز نەیبینمەوە!",
                            onPressedBritish: () => speakcares12("en-GB"),
                            onPressedAmerican: () => speakcares12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He threatened to fire me, as if I cared!",
                            kurdishText:
                                "ھەڕەشەی دەرکردنمی کرد وەک ئەوەی گرنگ بێت لام!",
                            onPressedBritish: () => speakcares13("en-GB"),
                            onPressedAmerican: () => speakcares13("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "She cares deeply about environmental issues.",
                                    kurdishText:
                                        "تەواو گرنگی دەدات بە کێشە ژینگەییەکان.",
                                    onPressedBritish: () =>
                                        speakcares14("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcares14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I don't really care about how much it costs.",
                            kurdishText: "گرنگ نییە لام چەندە تێچووی ھەیە.",
                            onPressedBritish: () => speakcares15("en-GB"),
                            onPressedAmerican: () => speakcares15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) حەزکردن و خۆشویستنی کەسێک و گرنگیدان بەوەی چیان بەسەر دێت"),
                          SentencesRow(
                            englishText:
                                "He genuinely cares about his employees.",
                            kurdishText: "بەڕاستی گرنگی دەدات بە کارمەندەکانی.",
                            onPressedBritish: () => speakcares16("en-GB"),
                            onPressedAmerican: () => speakcares16("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They care an awful lot about each other.",
                            kurdishText: "لە ڕادەبەر گرنگی بە یەکدی دەدەن.",
                            onPressedBritish: () => speakcares17("en-GB"),
                            onPressedAmerican: () => speakcares17("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) ھەوڵدان بۆ کردنی شتێک"),
                          SentencesRow(
                            englishText:
                                "I've done this job more times than I care to remember.",
                            kurdishText:
                                "ئەم کارەم زیاد لەوە کردووە کە حەوسەڵەم ھەبێت بیر خۆمی بێنمەوە.",
                            onPressedBritish: () => speakcares18("en-GB"),
                            onPressedAmerican: () => speakcares18("en-US"),
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
- Verb: care (derived forms: cares, caring, cared)
1. Feel concern or interest
"I really care about my work"; "I don't care"
 
2. Look after; give medial or emotional help (= give care)
"The nurse was caring for the wounded";
 
3. To hope, to desire or to prefer to have something, or to do something (= wish, like)
"Do you care to try this dish?";

4. Be in charge of, act on, or dispose of (= manage, deal, handle)
 
5. Be concerned with (something considered important) (= worry)
"I care about my grades";

- Noun: care (derived forms: cares)
1. The work of providing treatment for or attending to someone or something (= attention, aid, tending)
"no medical care was required";

2. Judiciousness in avoiding harm or danger (= caution, precaution, forethought)
"he handled the vase with care";

3. An anxious feeling (= concern, fear)
"care had aged him";
 
4. A cause for feeling concern
"his major care was the illness of his wife"
 
5. Attention and management implying responsibility for safety (= charge, tutelage, guardianship)
"he is in the care of a bodyguard";

6. Activity involved in maintaining something in good working order (= maintenance, upkeep)
"he wrote the manual on car care";
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

  final String _videoId = '9R_hPxyRQUA';
  final double _startSeconds = 154;

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

  final String _videoId = 'j94QOMf10BI';
  final double _startSeconds = 93;

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

  final String _videoId = 'y-2mcJeK1kY';
  final double _startSeconds = 61;

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

  final String _videoId = 'Vtos9gw1HJI';
  final double _startSeconds = 26;

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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 986;

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

  final String _videoId = 'khOUvmOQExc';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 343;

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

  final String _videoId = '47MNn4bsmSw';
  final double _startSeconds = 2722;

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
