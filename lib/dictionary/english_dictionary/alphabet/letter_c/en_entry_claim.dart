import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclaim extends StatelessWidget {
  // blank divider
  EnglishEntryclaim({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclaim(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("claim");
  }

  Future<void> speakclaims1(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I don't claim to be an expert.");
  }

  Future<void> speakclaims2(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She's not the saint that many have claimed her to be.");
  }

  Future<void> speakclaims3(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Scientists are claiming a major breakthrough in the fight against cancer.");
  }

  Future<void> speakclaims4(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was claimed that some doctors were working 80 hours a week.");
  }

  Future<void> speakclaims5(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Some critics claimed that the play was too complicated.");
  }

  Future<void> speakclaims6(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He claimed victory in the presidential elections before all the results were in.");
  }

  Future<void> speakclaims7(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Nobody has claimed responsibility for the bombing.");
  }

  Future<void> speakclaims8(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You might be entitled to claim compensation if you are injured at work.");
  }

  Future<void> speakclaims9(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You could have claimed the cost of the hotel room from your insurance.");
  }

  Future<void> speakclaims10(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She claimed damages from the company for the injury she had suffered.");
  }

  Future<void> speakclaims11(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She is entitled to claim a deduction for travel costs.");
  }

  Future<void> speakclaims12(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The family arrived in the UK in the 1990s and claimed political asylum.");
  }

  Future<void> speakclaims13(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When King Richard III died, Henry VII claimed the English throne.");
  }

  Future<void> speakclaims14(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The police said that if no one claims the watch, you can keep it.");
  }

  Future<void> speakclaims15(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A most unwelcome event claimed his attention.");
  }

  Future<void> speakclaims16(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She has finally claimed a place on the team.");
  }

  Future<void> speakclaims17(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The car crash claimed three lives.");
  }

  Future<void> speakclaims18(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The company had made false claims about its products.");
  }

  Future<void> speakclaims19(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The singer has denied the magazine's claim that she is leaving the band.");
  }

  Future<void> speakclaims20(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Claims of corruption within the police force were denied.");
  }

  Future<void> speakclaims21(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There are conflicting claims about the cause of the fire.");
  }

  Future<void> speakclaims22(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We have heard claims like this many times before.");
  }

  Future<void> speakclaims23(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Make sure your claims for expenses are submitted by the end of the month.");
  }

  Future<void> speakclaims24(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She brought a claim for damages against the company.");
  }

  Future<void> speakclaims25(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The court denied their claim for compensation.");
  }

  Future<void> speakclaims26(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They had no claim on the land.");
  }

  Future<void> speakclaims27(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She has more claim to the campaign's success than anybody.");
  }

  Future<void> speakclaims28(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She renounced her claim to the property.");
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
                            EntryTitle(word: "claim"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kleɪm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclaim("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kleɪm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclaim("en-US"),
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
کوردی: داواکاری، ئیدعا، داخوازی، وابێژی، داوا، ویستن،	ماف،	ھۆ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) وتنی ئەوەی شتێک ڕاستە ئەگەرچی نەسەلمێندراوە و خەڵکی دیکە ڕەنگە باوەڕ نەکەن"),
                          SentencesRow(
                            englishText: "I don't claim to be an expert.",
                            kurdishText:
                                "بانگەشەی ئەوە ناکەم پسپۆڕێک بم.", // claim",
                            onPressedBritish: () => speakclaims1("en-GB"),
                            onPressedAmerican: () => speakclaims1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She's not the saint that many have claimed her to be.",
                            kurdishText:
                                "ئەو فریشتەیەش نییە کە زۆر کەس بانگەشەی ئەوەی بۆ دەکەن.",
                            onPressedBritish: () => speakclaims2("en-GB"),
                            onPressedAmerican: () => speakclaims2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Scientists are claiming a major breakthrough in the fight against cancer.",
                                    kurdishText:
                                        "زاناکان بانگەشەی پەرەسەندنێکی گەورە دەکەن لە جەنگی دژ بە شێرپەنجە.",
                                    onPressedBritish: () =>
                                        speakclaims3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclaims3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "It was claimed that some doctors were working 80 hours a week.",
                                    kurdishText:
                                        "بانگەشەی ئەوە دەکرا ھەندێک پزیشک ٨٠ کاتژمێر لە ھەفتەیەکدا کاردەکەن.",
                                    onPressedBritish: () =>
                                        speakclaims4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclaims4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Some critics claimed that the play was too complicated.",
                                    kurdishText:
                                        "ھەندێک ڕەخنەگر بانگەشەی ئەوەیان کرد کە شانۆکە زۆر ئاڵۆز بوو.",
                                    onPressedBritish: () =>
                                        speakclaims5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclaims5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) بانگەشەکردنی ئەوەی کردووە یان بەدەستھێناوە"),
                          SentencesRow(
                            englishText:
                                "He claimed victory in the presidential elections before all the results were in.",
                            kurdishText:
                                "سەرکەوتنی لە ھەڵبژاردنی سەرۆکایەتی ڕاگەیاند پێش ئەوەی ھەموو ئەنجامەکان دەربکەون.",
                            onPressedBritish: () => speakclaims6("en-GB"),
                            onPressedAmerican: () => speakclaims6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Nobody has claimed responsibility for the bombing.",
                            kurdishText:
                                "کەس بەرپرسیاریەتی بۆ تەقینەوەکان ڕانەگەیاندووە.",
                            onPressedBritish: () => speakclaims7("en-GB"),
                            onPressedAmerican: () => speakclaims7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) داواکردنی پارە لە حکومەت یان کۆمپانیایەک بەھۆی ئەوەی مافی ئەوەت ھەیە"),
                          SentencesRow(
                            englishText:
                                "You might be entitled to claim compensation if you are injured at work.",
                            kurdishText:
                                "ئەگەری بوونی مافی قەرەبووت ھەیە ئەگەر لەسەر کار بریندار بیت.",
                            onPressedBritish: () => speakclaims8("en-GB"),
                            onPressedAmerican: () => speakclaims8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You could have claimed the cost of the hotel room from your insurance.",
                            kurdishText:
                                "دەتتوانی لە بیمەکەت داوای کرێی ژووری ھوتێلەکەت بکردایە.",
                            onPressedBritish: () => speakclaims9("en-GB"),
                            onPressedAmerican: () => speakclaims9("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "She claimed damages from the company for the injury she had suffered.",
                                    kurdishText:
                                        "داوای پارەی قەرەبووی لە کۆمپانیاکە کرد بۆ ئەو برینەی تووشی بووبوو.",
                                    onPressedBritish: () =>
                                        speakclaims10("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclaims10("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She is entitled to claim a deduction for travel costs.",
                                    kurdishText:
                                        "مافی ئەوەی ھەیە داوای داشکان بۆ تێچووی ھاتووچۆ بکات.",
                                    onPressedBritish: () =>
                                        speakclaims11("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclaims11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) داواکردنی شتێک چونکە پێتوایە مافی یاساییتە"),
                          SentencesRow(
                            englishText:
                                "The family arrived in the UK in the 1990s and claimed political asylum.",
                            kurdishText:
                                "خێزانەکە لە ١٩٩٠ـەکان ھاتنە بەریتانیا و داوای مافی پەنابەرێتی سیاسییان کرد.",
                            onPressedBritish: () => speakclaims12("en-GB"),
                            onPressedAmerican: () => speakclaims12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "When King Richard III died, Henry VII claimed the English throne.",
                            kurdishText:
                                "کە ڕیچاردی سێیەم مرد، ھێنریی حەوتەم داوای تەختی شاھانەی ئینگلیزی کرد.",
                            onPressedBritish: () => speakclaims13("en-GB"),
                            onPressedAmerican: () => speakclaims13("en-US"),
                          ),
                          SentencesRow(
                            englishText:
                                "The police said that if no one claims the watch, you can keep it.",
                            kurdishText:
                                "پۆلیس گوتی ئەگەر کەس وەک خاوەنی کاتژمێرەکە دەرنەکەوت، دەتوانی بیبەیت.",
                            onPressedBritish: () => speakclaims14("en-GB"),
                            onPressedAmerican: () => speakclaims14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) ڕاکێشانی سەرنجی کەسێک"),
                          SentencesRow(
                            englishText:
                                "A most unwelcome event claimed his attention.",
                            kurdishText: "ڕووداوێکی بێزراو سەرنجی ڕاکێشا.",
                            onPressedBritish: () => speakclaims15("en-GB"),
                            onPressedAmerican: () => speakclaims15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) کردن یان بەدەستھێنانی شتێک"),
                          SentencesRow(
                            englishText:
                                "She has finally claimed a place on the team.",
                            kurdishText:
                                "لە کۆتاییدا شوێنێکی لە تیمەکە بەدەستھێناوە.",
                            onPressedBritish: () => speakclaims16("en-GB"),
                            onPressedAmerican: () => speakclaims16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) بوون بە ھۆکاری مردنی کەسێک"),
                          SentencesRow(
                            englishText: "The car crash claimed three lives.",
                            kurdishText:
                                "پێکدادانی ئۆتۆمبێلەکە سێ کەسی کردە قوربانی.",
                            onPressedBritish: () => speakclaims17("en-GB"),
                            onPressedAmerican: () => speakclaims17("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) وتەیەک کە بانگەشەی ئەوە دەکات شتێک ڕاستە ئەگەرچی بەڵگە نییە و خەڵکی دیکە ڕەنگە باوەڕ نەکەن یان ھاودەنگ نەبن"),
                          SentencesRow(
                            englishText:
                                "The company had made false claims about its products.",
                            kurdishText:
                                "کۆمپانیاکە بانگەشەی ناڕاستی کردووە دەربارەی بەرھەمەکانی.",
                            onPressedBritish: () => speakclaims18("en-GB"),
                            onPressedAmerican: () => speakclaims18("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The singer has denied the magazine's claim that she is leaving the band.",
                            kurdishText:
                                "گۆرانیبێژەکە بانگەشەی گۆڤارەکەی بەدرۆخستووەتەوە لەسەر ئەوەی کە باندەکە جێدێڵێت.",
                            onPressedBritish: () => speakclaims19("en-GB"),
                            onPressedAmerican: () => speakclaims19("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Claims of corruption within the police force were denied.",
                                    kurdishText:
                                        "بانگەشەی گەندەڵی لەناو ھێزی پۆلیس نکۆڵی لێکرا.",
                                    onPressedBritish: () =>
                                        speakclaims20("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclaims20("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "There are conflicting claims about the cause of the fire.",
                                    kurdishText:
                                        "لێدوانی دژبەیەک ھەیە لەسەر ھۆکاری ئاگرەکە.",
                                    onPressedBritish: () =>
                                        speakclaims21("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclaims21("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We have heard claims like this many times before.",
                                    kurdishText:
                                        "لێدوانی وەک ئەمەمان زۆر جارانی دیکە بیستووە.",
                                    onPressedBritish: () =>
                                        speakclaims22("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclaims22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ناو) داخوازی بۆ بڕێک پارە کە پێتوایە مافت ھەیە بۆی، بەتایبەتی لە حکومەت، کۆمپانیایەک، ھتد"),
                          SentencesRow(
                            englishText:
                                "Make sure your claims for expenses are submitted by the end of the month.",
                            kurdishText:
                                "دڵنیابە داخوازییەکانتان بۆ خەرجییەکان تا کۆتایی مانگ پێشکەش دەکرێن.",
                            onPressedBritish: () => speakclaims23("en-GB"),
                            onPressedAmerican: () => speakclaims23("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She brought a claim for damages against the company.",
                            kurdishText:
                                "داخوازی قەرەبووی دژ بە کۆمپانیایەکە ھێنایە پێشەوە.",
                            onPressedBritish: () => speakclaims24("en-GB"),
                            onPressedAmerican: () => speakclaims24("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The court denied their claim for compensation.",
                                    kurdishText:
                                        "دادگا داخوازییەکەیان بۆ قەرەبوو ڕەتکردەوە.",
                                    onPressedBritish: () =>
                                        speakclaims25("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclaims25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) مافێک کە کەسێک باوەڕی وایە لە ڕووی یاساییەوە ھەیەتی بەسەر شتێکەوە"),
                          SentencesRow(
                            englishText: "They had no claim on the land.",
                            kurdishText: "ھیچ مافێکیان بەسەر خاکەکەوە نەبوو.",
                            onPressedBritish: () => speakclaims26("en-GB"),
                            onPressedAmerican: () => speakclaims26("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She has more claim to the campaign's success than anybody (= she is responsible for it).",
                            kurdishText:
                                "زیاتر لە ھەر کەسێک مافی ھەیە بەسەر سەرکەوتنی کۆمپانیاکەوە.",
                            onPressedBritish: () => speakclaims27("en-GB"),
                            onPressedAmerican: () => speakclaims27("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She renounced her claim to the property.",
                            kurdishText:
                                "وازی لە مافی بەسەر زەوی‌وزارەکەوە ھێنا.",
                            onPressedBritish: () => speakclaims28("en-GB"),
                            onPressedAmerican: () => speakclaims28("en-US"),
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
- Verb: claim (derived forms: claims, claimed, claiming)
1. Assert or affirm strongly; state to be true or existing
"He claimed that he killed the burglar"
 
2. Demand as being one's due or property; assert one's right or title to (= lay claim, arrogate)
"He claimed his suitcases at the airline counter"; "Mr. Smith claims special tax exemptions because he is a foreign resident";
 
3. Ask for legally or make a legal claim to, as of debts, for example
"They claimed on the maximum allowable amount"
 
4. Lay claim to; as of an idea (= take)
"She claimed credit for the whole idea";
 
5. Take as an undesirable consequence of some event or state of affairs (= take, exact)
"the accident claimed three lives";

- Noun: claim (derived forms: claims)
1. An assertion of a right (as to money or property)
"his claim asked for damages"
 
2. An assertion that something is true or factual
"his claim that he was innocent"; "evidence contradicted the government's claims"
 
3. Demand for something as rightful or due
"they struck in support of their claim for a shorter work day"
 
4. An informal right to something (= title)
"his claim on her attentions";
 
5. An established or recognized right (= title)
"a strong legal claim to the property"; "he staked his claim";
 
6. A moral duty or demand (= call)
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

  final String _videoId = 'wpTpc8H0XHw';
  final double _startSeconds = 208;

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

  final String _videoId = 'JuUzU2OA9R8';
  final double _startSeconds = 7;

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

  final String _videoId = '2Zax1rDO_w8';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'Ok2RgRHycG8';
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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 1541;

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
  final double _startSeconds = 1040;

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

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 69;

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

  final String _videoId = 'aAByKcPJ5NQ';
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