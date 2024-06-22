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
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("control");
  }

  Future<void> speakcontrols1(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The party expects to gain control of the council in the next election.");
  }

  Future<void> speakcontrols2(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Militants have taken control of the town.");
  }

  Future<void> speakcontrols3(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The Democrats have lost control of Congress.");
  }

  Future<void> speakcontrols4(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A military junta seized control of the country.");
  }

  Future<void> speakcontrols5(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The founders eventually regained control of the company.");
  }

  Future<void> speakcontrols6(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The city is in the control of enemy forces.");
  }

  Future<void> speakcontrols7(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The area remains under international control.");
  }

  Future<void> speakcontrols8(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The teacher had no control over the children.");
  }

  Future<void> speakcontrols9(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She struggled to keep control of her voice.");
  }

  Future<void> speakcontrols10(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She lost control of her car on the ice.");
  }

  Future<void> speakcontrols11(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He got so angry he lost control.");
  }

  Future<void> speakcontrols12(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The situation is under control.");
  }

  Future<void> speakcontrols13(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The aim is to give people more control over their own lives.");
  }

  Future<void> speakcontrols14(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The event has been cancelled due to circumstances beyond our control.");
  }

  Future<void> speakcontrols15(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Price controls on food were ended.");
  }

  Future<void> speakcontrols16(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Many teenagers have poor impulse control.");
  }

  Future<void> speakcontrols17(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The government has imposed strict controls on new building.");
  }

  Future<void> speakcontrols18(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The country has tightened its border controls.");
  }

  Future<void> speakcontrols19(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("New crime control measures have failed.");
  }

  Future<void> speakcontrols20(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A new advance has been made in the control of malaria.");
  }

  Future<void> speakcontrols21(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sedley was at the controls of the Boeing 707.");
  }

  Future<void> speakcontrols22(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Once we were in the air, I was allowed to take the controls.");
  }

  Future<void> speakcontrols23(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("By the age of 21 he controlled the company.");
  }

  Future<void> speakcontrols24(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The whole territory is now controlled by the army.");
  }

  Future<void> speakcontrols25(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can't you control your children?");
  }

  Future<void> speakcontrols26(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We want to control our own destiny.");
  }

  Future<void> speakcontrols27(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Government forces have proved incapable of controlling the rebels.");
  }

  Future<void> speakcontrols28(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The National Bank is directly controlled by the government.");
  }

  Future<void> speakcontrols29(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It is essential for businesses to control costs.");
  }

  Future<void> speakcontrols30(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Local industries were tightly controlled.");
  }

  Future<void> speakcontrols31(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Many biological processes are controlled by hormones.");
  }

  Future<void> speakcontrols32(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Try to control your breathing.");
  }

  Future<void> speakcontrols33(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They built a reservoir to control the flow of water.");
  }

  Future<void> speakcontrols34(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Parents should control what their kids watch on television.");
  }

  Future<void> speakcontrols35(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Firefighters are still trying to control the blaze.");
  }

  Future<void> speakcontrols36(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was given drugs to control the pain.");
  }

  Future<void> speakcontrols37(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Most of the symptoms can be controlled with medication.");
  }

  Future<void> speakcontrols38(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Symptoms can be controlled in most patients.");
  }

  Future<void> speakcontrols39(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The traffic lights are controlled by a central computer.");
  }

  Future<void> speakcontrols40(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The entrance gates are electronically controlled.");
  }

  Future<void> speakcontrols41(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The thermostat can be controlled via an app.");
  }

  Future<void> speakcontrols42(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You can easily control the speed of the fan.");
  }

  Future<void> speakcontrols43(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I was so angry I couldn't control myself.");
  }

  Future<void> speakcontrols44(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was finding it difficult to control his feelings.");
  }

  Future<void> speakcontrols45(String languageCode) async {
    // DOPSUM: CHANGE speakcontrol
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
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
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The party expects to gain control of the council in the next election."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پارتەکە پێشبینی ئەوە دەکات لە ھەڵبژاردنی داھاتوودا کۆنترۆڵی ئەنجوومەنەکە بکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "control", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Militants have taken control of the town."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "شەڕکەران کۆنترۆڵی شاەۆچکەکەیان گرتبووە دەست."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The Democrats have lost control of Congress."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دیموکراتەکان کۆنترۆڵی کۆنگرێسیان لەدەستداوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "A military junta seized control of the country."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "حکومەتە سەربازییەکە کۆنترۆڵی وڵاتەکەی کرد."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols4("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "The founders eventually regained control of the company."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دامەزرێنەرەکان لەکۆتاییدا کۆنترۆڵی کۆمپانیاکەیان بەدەستھێنایەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols5("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "The city is in the control of enemy forces."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "شارەکە لە کۆنترۆڵی ھێزەکانی دوژمندایە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols6("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "The area remains under international control."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ناوچەکە لەژێر کۆنترۆڵی نێودەوڵەتیدایە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols7("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) توانای ئەوە وا لە کەسێک بکەیت ئەوە بکات کە دەتەوێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The teacher had no control over the children."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مامۆستاکە ھیچ کۆنترۆڵی بەسەر منداڵەکاندا نەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She struggled to keep control of her voice."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نەیدەتوانی کۆنترۆڵی دەنگی بکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "The event has been cancelled due to circumstances beyond our control."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بۆنەکە ھەڵوەشێندراوەتەوە بەھۆی دۆخێکی بەدەر لە کۆنترۆڵ."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols14("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols14("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "She lost control of her car on the ice."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کۆنترۆڵی ئۆتۆمبێلەکەی لەسەر شەختەکەدا لەدەستدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols10("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols10("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "He got so angry he lost control (= shouted and said or did things he would not normally do)."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھێندە تووڕە بوو کۆنترۆڵی لەدەستدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols11("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols11("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "The situation is under control."),
                                            ExampleSentenceKurdish(
                                                text: "دۆخەکە لەژێر کۆنترۆڵە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols12("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "The aim is to give people more control over their own lives."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئامانجەکە ئەوەیە کۆنترۆڵی زیاتر بەسەر ژیانی خۆیاندا بدەین بە خەڵکی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols13("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) سنووردارکردن یان بەڕێوەبردنی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Price controls on food were ended."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سنووردارکردنی نرخی خۆراک کۆتایی پێھێندرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Many teenagers have poor impulse control."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆر گەنج کۆنترۆڵی ماسوولکەی لاوازیان ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "The government has imposed strict controls on new building."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "حکومەت کۆنترۆڵی توندی بەسەر بیناسازی تازەدا سەپاندووە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols17("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols17("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "The country has tightened its border controls."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "وڵاتەکە کۆنترۆڵی سنوورەکانی توندکردووەتەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols18("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols18("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "New crime control measures have failed."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەنگاوە تازەکانی کۆنترۆڵی تاوان شکستیان ھێناوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols19("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols19("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "A new advance has been made in the control of malaria."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بەرەوپێشچوونێکی تازە ئەنجامدراوە لە کۆنترۆڵکردنی مەلاریادا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols20("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols20("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ئەو دووگمە و سویچانەی کە بەکاریدێنیت بۆ کۆنترۆڵکردنی ئامێرێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Sedley was at the controls of the Boeing 707."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سێدلی لە کۆنترؤلی بۆونگ ٧٠٧ ـەکەدا بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols21("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Once we were in the air, I was allowed to take the controls."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کە چووینە ئاسمان ڕێگام پێدرا کۆنترۆڵ وەربگرم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ھەبوونی دەسەڵات بەسەر کەسێک، کۆمپانیایەک، وڵاتێک، ھتد بەشێوەیەک کە توانات ھەبێت بڕیار بدەیت چی بکەن یان چۆن کار بکەن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "By the age of 21 he controlled the company."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تاوەکو تەمەنی ٢١ ساڵی کۆنترۆڵی کۆمپانیاکەی کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols23("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The whole territory is now controlled by the army."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەواوی ناوچەکە لە ئێستادا لەلایەن سوپاوە کۆنترۆڵکراوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols24("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "Can't you control your children?"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ناتوانیت منداڵەکان کۆنترۆڵ بکەیت؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols25("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols25("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "We want to control our own destiny (= decide what happens to us)."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دەمانەوێت چارەنووسی خۆمان کۆنترۆڵ بکەین."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols26("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols26("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "Government forces have proved incapable of controlling the rebels."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھیزەکانی حکومەت بێتوانا بوونە لە کۆنترۆڵکردنی یاخیبووەکان."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols27("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols27("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "The National Bank is directly controlled by the government."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بانکە نیشتیمانییەکە ڕاستەوخۆ لەلایەن حکومەتەوە کۆنترۆڵ دەکرێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols28("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols28("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) سنووردارکردنی شتێک یان دیاریکردنی شێوازی ڕوودانی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It is essential for businesses to control costs."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گرنگە بۆ بازرگانییەکان کۆنترۆڵی خەرجییان بکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols29("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols29("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Local industries were tightly controlled."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بازرگانییە خۆجێییەکان بە توندی کۆنترۆڵ کرابوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols30("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols30("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Many biological processes are controlled by hormones."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆر پڕۆسەی زیندەوەران بە ھۆرمۆن کۆنترۆڵ دەکرێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols31("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols31("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "Try to control your breathing."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەوڵ بدە ھەناسەدانت کۆنترۆڵ بکەیت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols32("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols32("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "They built a reservoir to control the flow of water."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "عەماراوێکیان درووستکرد بۆ کۆنترۆڵی چۆڕانی ئاوەکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols33("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols33("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "Parents should control what their kids watch on television."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دایکان و باوکان دەبێت کۆنترۆڵی ئەوە بکەن منداڵەکانیان سەیری چی دەکەن لەسەر تەلەفیزیۆن."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontrols34("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontrols34("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) وەستاندنی ڕوودان یان خراپتربوونی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Firefighters are still trying to control the blaze."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئاگر کوژێنەرەوەکان ھێشتا ھەوڵ دەدەن ئاگرەکە کۆنترۆڵ بکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols35("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols35("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She was given drugs to control the pain."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەرمانی پێدرا بۆ سووککردنی لە ئازارەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols36("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols36("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Most of the symptoms can be controlled with medication."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆرێک لە نیشانەکان بە دەرمان کۆنترۆڵ دەکرێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols37("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols37("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Symptoms can be controlled in most patients."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نیشانەکان لە زۆر نەخۆشدا کۆنترۆڵ دەکرێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols38("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols38("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) دیاریکردنی شێوازی کارکردنی ئامێرێک بەو شێوەیەی کە دەتەوێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The traffic lights are controlled by a central computer."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ترافیک لایتەکان لەلایەن کۆمپیوتەرێکی ناوەندییەوە کۆنترۆڵ دەکرێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols39("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols39("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The entrance gates are electronically controlled."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەرگاکانی دەروازەکە بەشێوەی ئۆتۆماتیکی کۆنترۆڵ دەکرێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols40("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols40("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The thermostat can be controlled via an app."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گەرمی پێوەکە دەکرێت بە ئەپێک کۆنترۆڵ بکرێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols41("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols41("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "You can easily control the speed of the fan."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەتوانیت بە ئاسانی خێرایی پانکەکە کۆنترۆڵ بکەیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols42("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols42("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) مانەوە بە ئارامی ئەگەرچی تووڕە بیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I was so angry I couldn't control myself."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھێندە تووڕە بووم نەمدەتوانی خۆم کۆنترۆڵ بکەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols43("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols43("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He was finding it difficult to control his feelings."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە ئاستەنگی دەبینی ھەستەکانی کۆنترۆڵ بکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols44("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols44("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "You can learn to control your emotions."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەتوانیت فێربیت ھەستەکانت کۆنترۆڵ بکەیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrols45("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrols45("en-US"),
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

    // Update the state to reflect that TTS is in progress
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
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 973;

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

  final String _videoId = 'aWzlQ2N6qqg';
  final double _startSeconds = 28;

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

  final String _videoId = 'j1BfO7VlIw4';
  final double _startSeconds = 1174;

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

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 465;

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

  final String _videoId = '2ihOXaU0I8o';
  final double _startSeconds = 323;

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

  final String _videoId = 'MnExgQ81fhU';
  final double _startSeconds = 256;

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

  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 66;

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
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

// end WORD_WEB