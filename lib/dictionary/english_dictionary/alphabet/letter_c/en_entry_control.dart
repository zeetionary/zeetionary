import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycontrol extends StatelessWidget {
// blank divider
  EnglishEntrycontrol({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontrol(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("control");
  }

  Future<void> speakcontrols1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The party expects to gain control of the council in the next election.");
  }

  Future<void> speakcontrols2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Militants have taken control of the town.");
  }

  Future<void> speakcontrols3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The Democrats have lost control of Congress.");
  }

  Future<void> speakcontrols4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A military junta seized control of the country.");
  }

  Future<void> speakcontrols5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The founders eventually regained control of the company.");
  }

  Future<void> speakcontrols6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The city is in the control of enemy forces.");
  }

  Future<void> speakcontrols7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The area remains under international control.");
  }

  Future<void> speakcontrols8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The teacher had no control over the children.");
  }

  Future<void> speakcontrols9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She struggled to keep control of her voice.");
  }

  Future<void> speakcontrols10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She lost control of her car on the ice.");
  }

  Future<void> speakcontrols11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He got so angry he lost control.");
  }

  Future<void> speakcontrols12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The situation is under control.");
  }

  Future<void> speakcontrols13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The aim is to give people more control over their own lives.");
  }

  Future<void> speakcontrols14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The event has been cancelled due to circumstances beyond our control.");
  }

  Future<void> speakcontrols15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Price controls on food were ended.");
  }

  Future<void> speakcontrols16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Many teenagers have poor impulse control.");
  }

  Future<void> speakcontrols17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The government has imposed strict controls on new building.");
  }

  Future<void> speakcontrols18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The country has tightened its border controls.");
  }

  Future<void> speakcontrols19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("New crime control measures have failed.");
  }

  Future<void> speakcontrols20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A new advance has been made in the control of malaria.");
  }

  Future<void> speakcontrols21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Sedley was at the controls of the Boeing 707.");
  }

  Future<void> speakcontrols22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Once we were in the air, I was allowed to take the controls.");
  }

  Future<void> speakcontrols23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("By the age of 21 he controlled the company.");
  }

  Future<void> speakcontrols24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The whole territory is now controlled by the army.");
  }

  Future<void> speakcontrols25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Can't you control your children?");
  }

  Future<void> speakcontrols26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We want to control our own destiny.");
  }

  Future<void> speakcontrols27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Government forces have proved incapable of controlling the rebels.");
  }

  Future<void> speakcontrols28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The National Bank is directly controlled by the government.");
  }

  Future<void> speakcontrols29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It is essential for businesses to control costs.");
  }

  Future<void> speakcontrols30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Local industries were tightly controlled.");
  }

  Future<void> speakcontrols31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Many biological processes are controlled by hormones.");
  }

  Future<void> speakcontrols32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Try to control your breathing.");
  }

  Future<void> speakcontrols33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They built a reservoir to control the flow of water.");
  }

  Future<void> speakcontrols34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Parents should control what their kids watch on television.");
  }

  Future<void> speakcontrols35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Firefighters are still trying to control the blaze.");
  }

  Future<void> speakcontrols36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was given drugs to control the pain.");
  }

  Future<void> speakcontrols37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Most of the symptoms can be controlled with medication.");
  }

  Future<void> speakcontrols38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Symptoms can be controlled in most patients.");
  }

  Future<void> speakcontrols39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The traffic lights are controlled by a central computer.");
  }

  Future<void> speakcontrols40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The entrance gates are electronically controlled.");
  }

  Future<void> speakcontrols41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The thermostat can be controlled via an app.");
  }

  Future<void> speakcontrols42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You can easily control the speed of the fan.");
  }

  Future<void> speakcontrols43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I was so angry I couldn't control myself.");
  }

  Future<void> speakcontrols44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He was finding it difficult to control his feelings.");
  }

  Future<void> speakcontrols45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You can learn to control your emotions.");
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
                            EntryTitle(word: "control"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈtrəʊl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontrol("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈtrəʊl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontrol("en-US"),
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
کوردی: کۆنتڕۆڵ، مەھار(کاری)، ڕاگیری، ڕاگیرکاری، دەست‌بەسەرداگرتن، بەرگیری، پێش‌گیری، بەرگرتن، جڵەوگرتن،	چاودێری، چاوبەسەری، پێڕاگەیشتن، پشکنین،	دەسەڵات، ڕکێف، ئیختیار، دەس‌ڕۆیشتوویی، ھێز،	سنوورداری، دیاری‌کراوی،	بەڕێ‌دابردن، ھەڵسووڕاندن، بەڕێوەبردن،	(کۆمپیوتەر) کلیلی کۆنتڕۆڵ،	کلیل، دوگمە، قرتە، جەڕ، پێچ (تەلەفیزیۆن و ڕادیۆ)،	(لە ئۆتۆمبێل‌دا) فەرمان
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) دەسەڵاتی بڕیاردان سەبارەت بە بەڕێوەبردنی وڵاتێک، ناوچەیەک، دامەزراوەیەک، ھتد"),
                          SentencesRow(
                            englishText:
                                "The party expects to gain control of the council in the next election.",
                            kurdishText:
                                "پارتەکە پێشبینی ئەوە دەکات لە ھەڵبژاردنی داھاتوودا کۆنترۆڵی ئەنجوومەنەکە بکات.",
                            onPressedBritish: () => speakcontrols1("en-GB"),
                            onPressedAmerican: () => speakcontrols1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Militants have taken control of the town.",
                            kurdishText:
                                "شەڕکەران کۆنترۆڵی شاەۆچکەکەیان گرتبووە دەست.",
                            onPressedBritish: () => speakcontrols2("en-GB"),
                            onPressedAmerican: () => speakcontrols2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The Democrats have lost control of Congress.",
                            kurdishText:
                                "دیموکراتەکان کۆنترۆڵی کۆنگرێسیان لەدەستداوە.",
                            onPressedBritish: () => speakcontrols3("en-GB"),
                            onPressedAmerican: () => speakcontrols3("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "A military junta seized control of the country.",
                                    kurdishText:
                                        "حکومەتە سەربازییەکە کۆنترۆڵی وڵاتەکەی کرد.",
                                    onPressedBritish: () =>
                                        speakcontrols4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The founders eventually regained control of the company.",
                                    kurdishText:
                                        "دامەزرێنەرەکان لەکۆتاییدا کۆنترۆڵی کۆمپانیاکەیان بەدەستھێنایەوە.",
                                    onPressedBritish: () =>
                                        speakcontrols5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The city is in the control of enemy forces.",
                                    kurdishText:
                                        "شارەکە لە کۆنترۆڵی ھێزەکانی دوژمندایە.",
                                    onPressedBritish: () =>
                                        speakcontrols6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The area remains under international control.",
                                    kurdishText:
                                        "ناوچەکە لەژێر کۆنترۆڵی نێودەوڵەتیدایە.",
                                    onPressedBritish: () =>
                                        speakcontrols7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) توانای ئەوە وا لە کەسێک بکەیت ئەوە بکات کە دەتەوێت"),
                          SentencesRow(
                            englishText:
                                "The teacher had no control over the children.",
                            kurdishText:
                                "مامۆستاکە ھیچ کۆنترۆڵی بەسەر منداڵەکاندا نەبوو.",
                            onPressedBritish: () => speakcontrols8("en-GB"),
                            onPressedAmerican: () => speakcontrols8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She struggled to keep control of her voice.",
                            kurdishText: "نەیدەتوانی کۆنترۆڵی دەنگی بکات.",
                            onPressedBritish: () => speakcontrols9("en-GB"),
                            onPressedAmerican: () => speakcontrols9("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The event has been cancelled due to circumstances beyond our control.",
                                    kurdishText:
                                        "بۆنەکە ھەڵوەشێندراوەتەوە بەھۆی دۆخێکی بەدەر لە کۆنترۆڵ.",
                                    onPressedBritish: () =>
                                        speakcontrols14("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols14("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She lost control of her car on the ice.",
                                    kurdishText:
                                        "کۆنترۆڵی ئۆتۆمبێلەکەی لەسەر شەختەکەدا لەدەستدا.",
                                    onPressedBritish: () =>
                                        speakcontrols10("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols10("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He got so angry he lost control (= shouted and said or did things he would not normally do).",
                                    kurdishText:
                                        "ھێندە تووڕە بوو کۆنترۆڵی لەدەستدا.",
                                    onPressedBritish: () =>
                                        speakcontrols11("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols11("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The situation is under control.",
                                    kurdishText: "دۆخەکە لەژێر کۆنترۆڵە.",
                                    onPressedBritish: () =>
                                        speakcontrols12("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols12("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The aim is to give people more control over their own lives.",
                                    kurdishText:
                                        "ئامانجەکە ئەوەیە کۆنترۆڵی زیاتر بەسەر ژیانی خۆیاندا بدەین بە خەڵکی.",
                                    onPressedBritish: () =>
                                        speakcontrols13("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) سنووردارکردن یان بەڕێوەبردنی شتێک"),
                          SentencesRow(
                            englishText: "Price controls on food were ended.",
                            kurdishText:
                                "سنووردارکردنی نرخی خۆراک کۆتایی پێھێندرا.",
                            onPressedBritish: () => speakcontrols15("en-GB"),
                            onPressedAmerican: () => speakcontrols15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Many teenagers have poor impulse control.",
                            kurdishText:
                                "زۆر گەنج کۆنترۆڵی ماسوولکەی لاوازیان ھەیە.",
                            onPressedBritish: () => speakcontrols16("en-GB"),
                            onPressedAmerican: () => speakcontrols16("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The government has imposed strict controls on new building.",
                                    kurdishText:
                                        "حکومەت کۆنترۆڵی توندی بەسەر بیناسازی تازەدا سەپاندووە.",
                                    onPressedBritish: () =>
                                        speakcontrols17("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols17("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The country has tightened its border controls.",
                                    kurdishText:
                                        "وڵاتەکە کۆنترۆڵی سنوورەکانی توندکردووەتەوە.",
                                    onPressedBritish: () =>
                                        speakcontrols18("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols18("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "New crime control measures have failed.",
                                    kurdishText:
                                        "ھەنگاوە تازەکانی کۆنترۆڵی تاوان شکستیان ھێناوە.",
                                    onPressedBritish: () =>
                                        speakcontrols19("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols19("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "A new advance has been made in the control of malaria.",
                                    kurdishText:
                                        "بەرەوپێشچوونێکی تازە ئەنجامدراوە لە کۆنترۆڵکردنی مەلاریادا.",
                                    onPressedBritish: () =>
                                        speakcontrols20("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ئەو دووگمە و سویچانەی کە بەکاریدێنیت بۆ کۆنترۆڵکردنی ئامێرێک"),
                          SentencesRow(
                            englishText:
                                "Sedley was at the controls of the Boeing 707.",
                            kurdishText:
                                "سێدلی لە کۆنترؤلی بۆونگ ٧٠٧ ـەکەدا بوو.",
                            onPressedBritish: () => speakcontrols21("en-GB"),
                            onPressedAmerican: () => speakcontrols21("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Once we were in the air, I was allowed to take the controls.",
                            kurdishText:
                                "کە چووینە ئاسمان ڕێگام پێدرا کۆنترۆڵ وەربگرم.",
                            onPressedBritish: () => speakcontrols22("en-GB"),
                            onPressedAmerican: () => speakcontrols22("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ھەبوونی دەسەڵات بەسەر کەسێک، کۆمپانیایەک، وڵاتێک، ھتد بەشێوەیەک کە توانات ھەبێت بڕیار بدەیت چی بکەن یان چۆن کار بکەن"),
                          SentencesRow(
                            englishText:
                                "By the age of 21 he controlled the company.",
                            kurdishText:
                                "تاوەکو تەمەنی ٢١ ساڵی کۆنترۆڵی کۆمپانیاکەی کرد.",
                            onPressedBritish: () => speakcontrols23("en-GB"),
                            onPressedAmerican: () => speakcontrols23("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The whole territory is now controlled by the army.",
                            kurdishText:
                                "تەواوی ناوچەکە لە ئێستادا لەلایەن سوپاوە کۆنترۆڵکراوە.",
                            onPressedBritish: () => speakcontrols24("en-GB"),
                            onPressedAmerican: () => speakcontrols24("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Can't you control your children?",
                                    kurdishText:
                                        "ناتوانیت منداڵەکان کۆنترۆڵ بکەیت؟",
                                    onPressedBritish: () =>
                                        speakcontrols25("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols25("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We want to control our own destiny (= decide what happens to us).",
                                    kurdishText:
                                        "دەمانەوێت چارەنووسی خۆمان کۆنترۆڵ بکەین.",
                                    onPressedBritish: () =>
                                        speakcontrols26("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols26("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Government forces have proved incapable of controlling the rebels.",
                                    kurdishText:
                                        "ھیزەکانی حکومەت بێتوانا بوونە لە کۆنترۆڵکردنی یاخیبووەکان.",
                                    onPressedBritish: () =>
                                        speakcontrols27("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols27("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The National Bank is directly controlled by the government.",
                                    kurdishText:
                                        "بانکە نیشتیمانییەکە ڕاستەوخۆ لەلایەن حکومەتەوە کۆنترۆڵ دەکرێت.",
                                    onPressedBritish: () =>
                                        speakcontrols28("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols28("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) سنووردارکردنی شتێک یان دیاریکردنی شێوازی ڕوودانی"),
                          SentencesRow(
                            englishText:
                                "It is essential for businesses to control costs.",
                            kurdishText:
                                "گرنگە بۆ بازرگانییەکان کۆنترۆڵی خەرجییان بکەن.",
                            onPressedBritish: () => speakcontrols29("en-GB"),
                            onPressedAmerican: () => speakcontrols29("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Local industries were tightly controlled.",
                            kurdishText:
                                "بازرگانییە خۆجێییەکان بە توندی کۆنترۆڵ کرابوون.",
                            onPressedBritish: () => speakcontrols30("en-GB"),
                            onPressedAmerican: () => speakcontrols30("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Many biological processes are controlled by hormones.",
                            kurdishText:
                                "زۆر پڕۆسەی زیندەوەران بە ھۆرمۆن کۆنترۆڵ دەکرێن.",
                            onPressedBritish: () => speakcontrols31("en-GB"),
                            onPressedAmerican: () => speakcontrols31("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Try to control your breathing.",
                                    kurdishText:
                                        "ھەوڵ بدە ھەناسەدانت کۆنترۆڵ بکەیت.",
                                    onPressedBritish: () =>
                                        speakcontrols32("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols32("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "They built a reservoir to control the flow of water.",
                                    kurdishText:
                                        "عەماراوێکیان درووستکرد بۆ کۆنترۆڵی چۆڕانی ئاوەکە.",
                                    onPressedBritish: () =>
                                        speakcontrols33("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols33("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Parents should control what their kids watch on television.",
                                    kurdishText:
                                        "دایکان و باوکان دەبێت کۆنترۆڵی ئەوە بکەن منداڵەکانیان سەیری چی دەکەن لەسەر تەلەفیزیۆن.",
                                    onPressedBritish: () =>
                                        speakcontrols34("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontrols34("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) وەستاندنی ڕوودان یان خراپتربوونی شتێک"),
                          SentencesRow(
                            englishText:
                                "Firefighters are still trying to control the blaze.",
                            kurdishText:
                                "ئاگر کوژێنەرەوەکان ھێشتا ھەوڵ دەدەن ئاگرەکە کۆنترۆڵ بکەن.",
                            onPressedBritish: () => speakcontrols35("en-GB"),
                            onPressedAmerican: () => speakcontrols35("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She was given drugs to control the pain.",
                            kurdishText:
                                "دەرمانی پێدرا بۆ سووککردنی لە ئازارەکە.",
                            onPressedBritish: () => speakcontrols36("en-GB"),
                            onPressedAmerican: () => speakcontrols36("en-US"),
                          ),
                          SentencesRow(
                            englishText:
                                "Most of the symptoms can be controlled with medication.",
                            kurdishText:
                                "زۆرێک لە نیشانەکان بە دەرمان کۆنترۆڵ دەکرێن.",
                            onPressedBritish: () => speakcontrols37("en-GB"),
                            onPressedAmerican: () => speakcontrols37("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Symptoms can be controlled in most patients.",
                            kurdishText:
                                "نیشانەکان لە زۆر نەخۆشدا کۆنترۆڵ دەکرێن.",
                            onPressedBritish: () => speakcontrols38("en-GB"),
                            onPressedAmerican: () => speakcontrols38("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) دیاریکردنی شێوازی کارکردنی ئامێرێک بەو شێوەیەی کە دەتەوێت"),
                          SentencesRow(
                            englishText:
                                "The traffic lights are controlled by a central computer.",
                            kurdishText:
                                "ترافیک لایتەکان لەلایەن کۆمپیوتەرێکی ناوەندییەوە کۆنترۆڵ دەکرێن.",
                            onPressedBritish: () => speakcontrols39("en-GB"),
                            onPressedAmerican: () => speakcontrols39("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The entrance gates are electronically controlled.",
                            kurdishText:
                                "دەرگاکانی دەروازەکە بەشێوەی ئۆتۆماتیکی کۆنترۆڵ دەکرێن.",
                            onPressedBritish: () => speakcontrols40("en-GB"),
                            onPressedAmerican: () => speakcontrols40("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The thermostat can be controlled via an app.",
                            kurdishText:
                                "گەرمی پێوەکە دەکرێت بە ئەپێک کۆنترۆڵ بکرێت.",
                            onPressedBritish: () => speakcontrols41("en-GB"),
                            onPressedAmerican: () => speakcontrols41("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You can easily control the speed of the fan.",
                            kurdishText:
                                "دەتوانیت بە ئاسانی خێرایی پانکەکە کۆنترۆڵ بکەیت.",
                            onPressedBritish: () => speakcontrols42("en-GB"),
                            onPressedAmerican: () => speakcontrols42("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) مانەوە بە ئارامی ئەگەرچی تووڕە بیت"),
                          SentencesRow(
                            englishText:
                                "I was so angry I couldn't control myself.",
                            kurdishText:
                                "ھێندە تووڕە بووم نەمدەتوانی خۆم کۆنترۆڵ بکەم.",
                            onPressedBritish: () => speakcontrols43("en-GB"),
                            onPressedAmerican: () => speakcontrols43("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He was finding it difficult to control his feelings.",
                            kurdishText:
                                "بە ئاستەنگی دەبینی ھەستەکانی کۆنترۆڵ بکات.",
                            onPressedBritish: () => speakcontrols44("en-GB"),
                            onPressedAmerican: () => speakcontrols44("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You can learn to control your emotions.",
                            kurdishText:
                                "دەتوانیت فێربیت ھەستەکانت کۆنترۆڵ بکەیت.",
                            onPressedBritish: () => speakcontrols45("en-GB"),
                            onPressedAmerican: () => speakcontrols45("en-US"),
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
- Noun: control (derived forms: controls)
1. Power to direct or determine
"under control"
 
2. A relation of constraint of one entity (thing, person or group) by another
"measures for the control of disease"; "they instituted controls over drinking on campus"
 
3. (physiology) regulation or maintenance of a function or action or reflex etc
"the timing and control of his movements were unimpaired"; "he had lost control of his sphincters"
 
4. A standard against which other conditions can be compared in a scientific experiment (= control condition)
"the control condition was inappropriate for the conclusions he wished to draw";
 
5. The activity of managing or exerting control over something
"the control of the mob by the police was admirable"
 
6. he state that exists when one person or group has power over another (= dominance, ascendance, ascendence, ascendancy, ascendency)
"her apparent control of her husband was really her attempt to make him pay attention to her";
 
7. Discipline in personal and social activities (= restraint)
"she never lost control of herself";
 
8. Great skilfulness and knowledge of some subject or activity (= command, mastery)
"a good control of French";
 
9. A mechanism that controls the operation of a machine (= controller)
"I turned the controls over to her";
 
10. A spiritual agency that is assumed to assist the medium during a seance
 
11. The economic policy of controlling or limiting or curbing prices or wages etc.
"they wanted to repeal all the legislation that imposed economic controls"

- Verb: control (derived forms: controlled, controlling, controls)
1. Exercise authoritative control or power over (= command)
"control the budget";
 
2. Lessen the intensity of; temper; hold in restraint; hold or keep within limits (= hold in, hold, contain, check, curb, moderate, mod [informal])
"control your anger";
 
3. Handle and cause to function (= operate)
"control the lever";
 
4. Maintain influence over (others or oneself) skilfully, usually to one's advantage (= manipulate, keep in line)
"She is a very controlling mother and doesn't let her children grow up";
 
5. (science) check or regulate (a scientific experiment) by conducting a parallel experiment or comparing with another standard (= verify)
"Are you controlling for the temperature?";
 
6. Place under restrictions; limit access to by law (= restrict)
"this substance is controlled";
 
7. Be careful or certain to do something; make certain of something (= see, check, insure, see to it, ensure, ascertain, assure)
"control the quality of the product"; 
 
8. Have a firm understanding or knowledge of; be on top of (= master)
"Do you control these data?";
 
9. Determine; be able to change (= govern)
"rooms are equipped with air conditioning system to control the temperature";
 
10. [archaic] Verify by using a duplicate register for comparison
"control an account"
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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 973;

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

  final String _videoId = 'aWzlQ2N6qqg';
  final double _startSeconds = 28;

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

  final String _videoId = 'j1BfO7VlIw4';
  final double _startSeconds = 1174;

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

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 465;

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

  final String _videoId = '2ihOXaU0I8o';
  final double _startSeconds = 323;

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

  final String _videoId = 'MnExgQ81fhU';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 66;

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