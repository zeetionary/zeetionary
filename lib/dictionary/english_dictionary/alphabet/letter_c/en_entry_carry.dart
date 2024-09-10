import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycarry extends StatelessWidget {
  EnglishEntrycarry({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcarry(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("carry");
  }

  Future<void> speakcarrys1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was carrying a large bag.");
  }

  Future<void> speakcarrys2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The plane was carrying 122 passengers and five crew.");
  }

  Future<void> speakcarrys3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She carried her baby in her arms.");
  }

  Future<void> speakcarrys4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("These books are too heavy for me to carry.");
  }

  Future<void> speakcarrys5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Police in many countries carry guns.");
  }

  Future<void> speakcarrys6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I never carry much money on me.");
  }

  Future<void> speakcarrys7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The veins carry blood to the heart.");
  }

  Future<void> speakcarrys8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Canals were built to carry water from the Snake River to Milner Dam in 1905.");
  }

  Future<void> speakcarrys9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Ticks can carry a nasty disease which affects humans.");
  }

  Future<void> speakcarrys10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He will carry the memory of the accident with him for ever.");
  }

  Future<void> speakcarrys11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A road bridge has to carry a lot of traffic.");
  }

  Future<void> speakcarrys12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He is carrying the department.");
  }

  Future<void> speakcarrys13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She carries a full load of classes while also serving as department head.");
  }

  Future<void> speakcarrys14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Each bike carries a ten-year guarantee.");
  }

  Future<void> speakcarrys15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Crimes of violence carry heavy penalties.");
  }

  Future<void> speakcarrys16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The charge carries a maximum sentence of ten years.");
  }

  Future<void> speakcarrys17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The ball carried 50 metres into the crowd.");
  }

  Future<void> speakcarrys18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The sound of the explosion carried for miles.");
  }

  Future<void> speakcarrys19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The war was carried into enemy territory.");
  }

  Future<void> speakcarrys20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Her abilities carried her to the top of her profession.");
  }

  Future<void> speakcarrys21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The resolution was carried by 340 votes to 210.");
  }

  Future<void> speakcarrys22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("His moving speech was enough to carry the audience.");
  }

  Future<void> speakcarrys23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She nodded in agreement, and he saw he had carried his point.");
  }

  Future<void> speakcarrys24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Cigarettes carry a health warning.");
  }

  Future<void> speakcarrys25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This morning's newspapers all carry the same story on their front page.");
  }

  Future<void> speakcarrys26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We do carry green tea, but we don't have any (in stock) right now.");
  }

  Future<void> speakcarrys27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was carrying twins.");
  }

  Future<void> speakcarrys28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She carries herself with the poise of a model.");
  }

  Future<void> speakcarrys29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We did a carry of equipment from the camp.");
  }

  Future<void> speakcarrys30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Each state makes its own laws concerning the carry of weapons.");
  }

  Future<void> speakcarrys31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys3131");
  }

  Future<void> speakcarrys32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys3232");
  }

  Future<void> speakcarrys33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys3333");
  }

  Future<void> speakcarrys34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys3434");
  }

  Future<void> speakcarrys35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys3535");
  }

  Future<void> speakcarrys36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys3636");
  }

  Future<void> speakcarrys37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys3737");
  }

  Future<void> speakcarrys38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys3838");
  }

  Future<void> speakcarrys39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys3939");
  }

  Future<void> speakcarrys40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys4040");
  }

  Future<void> speakcarrys41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys4141");
  }

  Future<void> speakcarrys42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys4242");
  }

  Future<void> speakcarrys43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys4343");
  }

  Future<void> speakcarrys44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys4444");
  }

  Future<void> speakcarrys45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys4545");
  }

  Future<void> speakcarrys46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys4646");
  }

  Future<void> speakcarrys47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys4747");
  }

  Future<void> speakcarrys48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys4848");
  }

  Future<void> speakcarrys49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys4949");
  }

  Future<void> speakcarrys50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcarrys5050");
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
                            EntryTitle(word: "carry"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkæri/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcarry("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkæri/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcarry("en-US"),
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
                          const DefinitionKurdish(text: """
١. (کردار) ھەڵگرتن"""),
                          SentencesRow(
                            englishText: "He was carrying a large bag.",
                            kurdishText: "تورەگەیەکی گەورەی ھەڵگرتبوو.",
                            onPressedBritish: () => speakcarrys1("en-GB"),
                            onPressedAmerican: () => speakcarrys1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The plane was carrying 122 passengers and five crew.",
                            kurdishText:
                                "فڕۆکەکە ١٢٢ گەشتیار و پێنج ئەندامی تاقمەکەی ھەڵگرتبوو.",
                            onPressedBritish: () => speakcarrys2("en-GB"),
                            onPressedAmerican: () => speakcarrys2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "She carried her baby in her arms.",
                                    kurdishText:
                                        "منداڵەکەیی لە باوەشیدا ھەڵگرتبوو.",
                                    onPressedBritish: () =>
                                        speakcarrys3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcarrys3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "These books are too heavy for me to carry.",
                            kurdishText:
                                "ئەم کتێبانە زۆر قوورسن بۆم کە ھەڵیان بگرم.",
                            onPressedBritish: () => speakcarrys4("en-GB"),
                            onPressedAmerican: () => speakcarrys4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) بردنی شتێک لەگەڵ خۆتدا بۆ ھەموو شوێنێک"),
                          SentencesRow(
                            englishText: "Police in many countries carry guns.",
                            kurdishText: "پۆلیس لە زۆر وڵاتدا چەک ھەڵدەگرن.",
                            onPressedBritish: () => speakcarrys5("en-GB"),
                            onPressedAmerican: () => speakcarrys5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "I never carry much money on me.",
                            kurdishText: "ھەرگیز پارەی زۆر لەگەڵ خۆم ھەڵناگرم.",
                            onPressedBritish: () => speakcarrys6("en-GB"),
                            onPressedAmerican: () => speakcarrys6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) ھەبوونی ئاو، کارەبا، ھتد تێیدا و گواستنەوەی"),
                          SentencesRow(
                            englishText: "The veins carry blood to the heart.",
                            kurdishText: "خوێنھێنەرەکان خوێن دەبەن بۆ دڵ.",
                            onPressedBritish: () => speakcarrys7("en-GB"),
                            onPressedAmerican: () => speakcarrys7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Canals were built to carry water from the Snake River to Milner Dam in 1905.",
                            kurdishText:
                                "لە ساڵی ١٩٠٥ نۆکەند درووستکرا بۆ گواستنەوەی ئاو لە ڕووباری سنەیکەوە بۆ بەنداوی میلنەر.",
                            onPressedBritish: () => speakcarrys8("en-GB"),
                            onPressedAmerican: () => speakcarrys8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) کەسێک کە نەخۆشییەکی گرتووە و توانای گواستنەوەی ھەیە"),
                          SentencesRow(
                            englishText:
                                "Ticks can carry a nasty disease which affects humans.",
                            kurdishText:
                                "گەنە دەکرێت نەخۆشی پیس ھەڵبگرن کە دەشێت مرۆڤ تووش بکات.",
                            onPressedBritish: () => speakcarrys9("en-GB"),
                            onPressedAmerican: () => speakcarrys9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ھەبوونی توانای بیرکەوتنەوەی شتێک"),
                          SentencesRow(
                            englishText:
                                "He will carry the memory of the accident with him (= will remember the accident) for ever.",
                            kurdishText:
                                "یادەوەری ڕووداوەکە بۆ ھەمیشە لە مێشکیدا ھەڵدەگرێت.",
                            onPressedBritish: () => speakcarrys10("en-GB"),
                            onPressedAmerican: () => speakcarrys10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) ھەڵگرتنی کێشی شتێک"),
                          SentencesRow(
                            englishText:
                                "A road bridge has to carry a lot of traffic.",
                            kurdishText:
                                "پردی ڕێگایەک دەبێت بەرگەی ھاتووچۆی زۆر بگرێت.",
                            onPressedBritish: () => speakcarrys11("en-GB"),
                            onPressedAmerican: () => speakcarrys11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) ھەڵگرتنی بەرپرسیاریەتی بۆ شتێک"),
                          SentencesRow(
                            englishText:
                                "He is carrying the department (= it is only working because of his efforts).",
                            kurdishText: "بەرپرسی بەشەکەیە.",
                            onPressedBritish: () => speakcarrys12("en-GB"),
                            onPressedAmerican: () => speakcarrys12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She carries a full load of classes while also serving as department head.",
                            kurdishText:
                                "یەک دونیا وانەی ھەیە لەکاتێکدا سەرۆک بەشیشە.",
                            onPressedBritish: () => speakcarrys13("en-GB"),
                            onPressedAmerican: () => speakcarrys13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) ھەبوونی خاسیەتێک یان تایبەتمەندییەک"),
                          SentencesRow(
                            englishText:
                                "Each bike carries a ten-year guarantee.",
                            kurdishText: "ھەر پاسکیلێک ١٠ ساڵ زەمانی لەگەڵە.",
                            onPressedBritish: () => speakcarrys14("en-GB"),
                            onPressedAmerican: () => speakcarrys14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (کردار) ھەبوونی شت لە ئەنجامدا"),
                          SentencesRow(
                            englishText:
                                "Crimes of violence carry heavy penalties.",
                            kurdishText: "تاوانی توندوتیژی سزای توندی لەسەرە.",
                            onPressedBritish: () => speakcarrys15("en-GB"),
                            onPressedAmerican: () => speakcarrys15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The charge carries a maximum sentence of ten years.",
                            kurdishText:
                                "تاوانەکە سزای زیندانی ئەوپەڕی بۆ ١٠ ساڵی لەسەرە.",
                            onPressedBritish: () => speakcarrys16("en-GB"),
                            onPressedAmerican: () => speakcarrys16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) بڕینی مەودایەک لە دوای فڕێدان"),
                          SentencesRow(
                            englishText:
                                "The ball carried 50 metres into the crowd.",
                            kurdishText: "تۆپەکە ٥٠ مەتر چووە ناو جەماوەرەکە.",
                            onPressedBritish: () => speakcarrys17("en-GB"),
                            onPressedAmerican: () => speakcarrys17("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١١. (کردار) چوونی دەنگێک بۆ مەودایەک"),
                          SentencesRow(
                            englishText:
                                "The sound of the explosion carried for miles.",
                            kurdishText: "دەنگی تەقینەوەکە بۆ چەندین میل چوو.",
                            onPressedBritish: () => speakcarrys18("en-GB"),
                            onPressedAmerican: () => speakcarrys18("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (کردار) بردنی کەسێک یان شتێک بۆ خاڵێکی دیاریکراو، یان بە ئاراستەیەکی دیاریکراودا"),
                          SentencesRow(
                            englishText:
                                "The war was carried into enemy territory.",
                            kurdishText: "جەنگەکە بردرایە ناوچەی دوژمن.",
                            onPressedBritish: () => speakcarrys19("en-GB"),
                            onPressedAmerican: () => speakcarrys19("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Her abilities carried her to the top of her profession.",
                            kurdishText: "تواناکانی گەیاندییە لوتکەی کارەکەی.",
                            onPressedBritish: () => speakcarrys20("en-GB"),
                            onPressedAmerican: () => speakcarrys20("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (کردار) پەسەندکردنی شتێک بە ھەبوونی خەڵکی زیاتر دەنگی پێبدەن وەک لەوەی دژی بن"),
                          SentencesRow(
                            englishText:
                                "The resolution was carried by 340 votes to 210.",
                            kurdishText:
                                "نەخشە ڕێگاکە بە دەنگی ٣٤٠ د بە ٢١٠ پەسەندکرا.",
                            onPressedBritish: () => speakcarrys21("en-GB"),
                            onPressedAmerican: () => speakcarrys21("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٤. (کردار) بردنەوەی پشتگیری یان ھاوسۆزی کەسێک"),
                          SentencesRow(
                            englishText:
                                "His moving speech was enough to carry the audience.",
                            kurdishText:
                                "وتارەکەی بەس بوو بۆ بردنەوەی گوێگران.",
                            onPressedBritish: () => speakcarrys22("en-GB"),
                            onPressedAmerican: () => speakcarrys22("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She nodded in agreement, and he saw he had carried his point.",
                            kurdishText:
                                "بە ڕازیبوونەوە سەری لەقاند، و کوڕەکە بینی کە پەیامەکەی گەیاند.",
                            onPressedBritish: () => speakcarrys23("en-GB"),
                            onPressedAmerican: () => speakcarrys23("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٥. (کردار) ھەبوونی پەیامێک یان زانیارییەک لکاو پێوە"),
                          SentencesRow(
                            englishText: "Cigarettes carry a health warning.",
                            kurdishText: "جگەرە ھۆژدارییەکی تەندرووستی پێوەیە.",
                            onPressedBritish: () => speakcarrys24("en-GB"),
                            onPressedAmerican: () => speakcarrys24("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٦. (کردار) بڵاوکردنەوەی ھەواڵێک"),
                          SentencesRow(
                            englishText:
                                "This morning's newspapers all carry the same story on their front page.",
                            kurdishText:
                                "ڕۆژنامەکانی ئەم بەیانییە ھەموو ھەمان ھەواڵیان بڵاوکردووە.",
                            onPressedBritish: () => speakcarrys25("en-GB"),
                            onPressedAmerican: () => speakcarrys25("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٧. (کردار) ھەبوونی شتێک بۆ فرۆشتن لە فرۆشگایەکدا"),
                          SentencesRow(
                            englishText:
                                "We do carry green tea, but we don't have any (in stock) right now.",
                            kurdishText:
                                "چای سەوز دەفرۆشین، بەڵام ھیچمان لەبەردەستدا نییە لە ئێستادا.",
                            onPressedBritish: () => speakcarrys26("en-GB"),
                            onPressedAmerican: () => speakcarrys26("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٨. (کردار) دووگیانبوون بە منداڵ"),
                          SentencesRow(
                            englishText: "She was carrying twins.",
                            kurdishText: "بە دووانە دووگیانە.",
                            onPressedBritish: () => speakcarrys27("en-GB"),
                            onPressedAmerican: () => speakcarrys27("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٩. (کردار) جوڵاندنی جەستەت بە شێوەیەکی دیاریکراو"),
                          SentencesRow(
                            englishText:
                                "She carries herself with the poise of a model.",
                            kurdishText:
                                "بە لەشولاری مۆدێلێکەوە خۆی دەجوڵێنێت.",
                            onPressedBritish: () => speakcarrys28("en-GB"),
                            onPressedAmerican: () => speakcarrys28("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٠. (ناو) ھەڵگرتنی شتێک"),
                          SentencesRow(
                            englishText:
                                "We did a carry of equipment from the camp.",
                            kurdishText: "کەرەستەکانمان لە کامپەکەوە ھەڵگرت.",
                            onPressedBritish: () => speakcarrys29("en-GB"),
                            onPressedAmerican: () => speakcarrys29("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢١. (ناو) ھەڵگرتنی چەک لە شوێنی گشتیدا"),
                          SentencesRow(
                            englishText:
                                "Each state makes its own laws concerning the carry of weapons.",
                            kurdishText:
                                "ھەر ویلایەتێک یاسای خۆی دەردەکات  سەبارەت بە ھەڵگرتنی چەک.",
                            onPressedBritish: () => speakcarrys30("en-GB"),
                            onPressedAmerican: () => speakcarrys30("en-US"),
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
- Verb: carry (derived forms: carried, carries, carrying)
1. Move while supporting, either in a vehicle or in one's hands or on one's body (= transport)
"carry the suitcases to the car"; "This train is carrying nuclear waste"; "These pipes carry waste water into the river"; "You must carry your camping gear";
 
2. Have with oneself; have on one's person (= pack, take)
"I always carry money";

3. Serve as the medium for transmission, allow movement of (= impart, conduct, transmit, convey, channel)
"Sound carries well over water"; "The airwaves carry the sound";
 
4. Serve as a means for expressing something (= convey, express)
"The painting of Mary carries motherly love"; "His voice carried a lot of anger";
 
5. Bear or be able to bear the weight, pressure,or responsibility of
"His efforts carried the entire project"; "How many credits is this student carrying?"; "We carry a very large mortgage"
 
6. Support or hold in a certain manner (= hold, bear)
"He carried himself upright";

7. Have within (= hold, bear, contain)
"The jar carries wine";
 
8. Extend to a certain degree
"carry too far"; "She carries her ideas to the extreme"
 
9. Continue in location (= extend)
"The civil war carried into the neighbouring province";
 
10. Be necessarily associated with or result in or involve
"This crime carries a penalty of five years in prison"
 
11. Win in an election
"The senator carried his home state"
 
12. Include, as on a list
"How many people are carried on the payroll?"
 
13. Behave in a certain manner (= behave, acquit, bear, deport, conduct, comport)
"She carried herself well";
 
14. Have on hand (= stock, stockpile)
"Do you carry kerosene heaters?";
 
15. Include as the content; broadcast or publicize (= run)
"This paper carries a restaurant review"; "All major networks carried the press conference";
 
16. (sport) run with the ball, in basketball bouncing the ball or in soccer or hockey making small kicks (= dribble)
"Carry the ball";

17. Pass on a communication
"The news was carried to every village in the province"
 
18. Have as an inherent or characteristic feature or have as a consequence
"This new washer carries a two year guarantee"; "The loan carries a high interest rate"; "this undertaking carries many dangers"; "She carries her mother's genes"; "These bonds carry warrants"; "The restaurant carries an unusual name"
 
19. Be conveyed over a certain distance
"Her voice carries very well in this big opera house"
 
20. Keep up with financial support
"The Federal Government carried the province for many years"
 
21. Have or possess something abstract
"I carry her image in my mind's eye"; "I will carry the secret to my grave"; "I carry these thoughts in the back of my head"; "I carry a lot of life insurance"
 
22. Be equipped with (a mast or sail)
"This boat can only carry a small sail"
 
23. Win approval or support for (= persuade, sway)
"Carry all before one";
 
24. Compensate for a weaker partner or member by one's own performance
"I resent having to carry her all the time"
 
25. Take further or advance
"carry a cause"
 
26. Have on the surface or on the skin
"carry scars"
 
27. Capture after a fight
"The troops carried the town after a brief fight"
 
28. Transfer (entries) from one account book to another (= post)
 
29. Transfer (a number, cipher, or remainder) to the next column or unit's place before or after, in addition or multiplication
"put down 5 and carry 2"
 
30. Pursue a line of scent or be a bearer
"the dog was taught to fetch and carry"
 
31. (farming) bear (a crop)
"this land does not carry olives"
 
32. Propel or give impetus to
 
33. Drink alcohol without showing ill effects (= hold)
"he had drunk more than he could carry";
 
34. Be able to feed
"This land will carry ten cows to the acre"
 
35. Have a certain range
"This rifle carries for 3,000 feet"
 
36. (golf) cover a certain distance or advance beyond
"The drive carried to the green"
 
37. Secure the passage or adoption (of bills and motions)
"The motion carried easily"
 
38. Be successful in
"She lost the game but carried the match"
 
39. Sing or play against other voices or parts
"He cannot carry a tune"
 
40. Be pregnant with (= have a bun in the oven, bear, gestate, expect)
"I am carrying his child";

- Noun: carry (derived forms: carries)
1. The act of carrying something
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

  final String _videoId = 'HTV-U059FGQ';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '6usVX6BJYEk';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'KPDCsBlOrMM';
  final double _startSeconds = 256;

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

  final String _videoId = 'ZBNELGfLekE';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'fitA1_rh8Z8';
  final double _startSeconds = 140;

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

  final String _videoId = 'p0T95uHCaI4';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'Vwq-k3ejpHM';
  final double _startSeconds = 11;

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

  final String _videoId = 'y4Kd8acAago';
  final double _startSeconds = 248;

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
