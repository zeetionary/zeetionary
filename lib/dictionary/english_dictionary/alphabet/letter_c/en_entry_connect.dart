import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconnect extends StatelessWidget {
// blank divider
  EnglishEntryconnect({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconnect(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("connect");
  }

  Future<void> speakconnects1(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The towns are connected by train and bus services.");
  }

  Future<void> speakconnects2(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The island is connected to the mainland by a bridge.");
  }

  Future<void> speakconnects3(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The rooms on this floor connect.");
  }

  Future<void> speakconnects4(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A corridor connects his office with the main building.");
  }

  Future<void> speakconnects5(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The canal was built to connect the city with the port.");
  }

  Future<void> speakconnects6(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("First connect the printer to the computer.");
  }

  Future<void> speakconnects7(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Connect the machine to the power supply.");
  }

  Future<void> speakconnects8(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Downstairs toilets were connected directly to the drains.");
  }

  Future<void> speakconnects9(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The device can be hooked up to a mobile phone to connect wirelessly.");
  }

  Future<void> speakconnects10(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Click ‘Continue’ to connect to the internet.");
  }

  Future<void> speakconnects11(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Simply connect your device to the camera's Wi-Fi signal.");
  }

  Future<void> speakconnects12(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There was nothing to connect him with the crime.");
  }

  Future<void> speakconnects13(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He made a statement connecting the terrorist group to the attack.");
  }

  Future<void> speakconnects14(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Bad diet is closely connected with many common illnesses.");
  }

  Future<void> speakconnects15(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His flight to Amsterdam connects with an afternoon flight to New York.");
  }

  Future<void> speakconnects16(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's a connecting flight at noon.");
  }

  Future<void> speakconnects17(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("After a long wait I was connected to customer services.");
  }

  Future<void> speakconnects18(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They met a couple of times but they didn't really connect.");
  }

  Future<void> speakconnects19(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The blow connected and she felt a surge of pain.");
  }

  Future<void> speakconnects20(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects2000");
  }

  Future<void> speakconnects21(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects2100");
  }

  Future<void> speakconnects22(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects2200");
  }

  Future<void> speakconnects23(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects2300");
  }

  Future<void> speakconnects24(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects2400");
  }

  Future<void> speakconnects25(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects2500");
  }

  Future<void> speakconnects26(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects2600");
  }

  Future<void> speakconnects27(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects2700");
  }

  Future<void> speakconnects28(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects2800");
  }

  Future<void> speakconnects29(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects2900");
  }

  Future<void> speakconnects30(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects3000");
  }

  Future<void> speakconnects31(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects3100");
  }

  Future<void> speakconnects32(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects3200");
  }

  Future<void> speakconnects33(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects3300");
  }

  Future<void> speakconnects34(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects3400");
  }

  Future<void> speakconnects35(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects3500");
  }

  Future<void> speakconnects36(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects3600");
  }

  Future<void> speakconnects37(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects3700");
  }

  Future<void> speakconnects38(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects3800");
  }

  Future<void> speakconnects39(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects3900");
  }

  Future<void> speakconnects40(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects4000");
  }

  Future<void> speakconnects41(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects4100");
  }

  Future<void> speakconnects42(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects4200");
  }

  Future<void> speakconnects43(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects4300");
  }

  Future<void> speakconnects44(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects4400");
  }

  Future<void> speakconnects45(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects4500");
  }

  Future<void> speakconnects46(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects4600");
  }

  Future<void> speakconnects47(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects4700");
  }

  Future<void> speakconnects48(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects4800");
  }

  Future<void> speakconnects49(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects4900");
  }

  Future<void> speakconnects50(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects5000");
  }

  Future<void> speakconnects51(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects5100");
  }

  Future<void> speakconnects52(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects5200");
  }

  Future<void> speakconnects53(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects5300");
  }

  Future<void> speakconnects54(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects5400");
  }

  Future<void> speakconnects55(String languageCode) async {
    // DOPSUM: CHANGE speakconnect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconnects5500");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "connect"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈnekt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconnect("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈnekt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconnect("en-US"),
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
کوردی: تێکەڵ بوون، بەستنەوە، پەیوەند دان، گەیاندن، پەیوەند کردن
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) بەستنەوەی دوو شت یان زیاتر بە یەکەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The towns are connected by train and bus services."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "شارۆچکەکان بە شەمەندەفەر و پاس پێکەوە گرێدراون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "connect", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects1("en-US"),
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
                                            "The island is connected to the mainland by a bridge."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دوورگەکە بە پردێک بەستراوە بە ھەرێمە سەرەکییەکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects2("en-US"),
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
                                                    "The rooms on this floor connect."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ژوورەکانی ئەم نھۆمە تێکەڵ دەبن."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconnects3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconnects3("en-US"),
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
                                                    "A corridor connects his office with the main building."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ڕێڕەوێک ئۆفیسەکەی بە بینا سەرەکییەکەوە دەبەستێتەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconnects4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconnects4("en-US"),
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
                                                    "The canal was built to connect the city with the port."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کەناڵەکە درووستکرا بۆ گرێدانی شارەکە بە بەندەرەکەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconnects5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconnects5("en-US"),
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
                                  "٢. (کردار) بەستنی شتێک بە سەرچاوەی سەرەکی ئاو، کارەبا، غاز، ھتد یان بە ئامێرێکی دیکەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "First connect the printer to the computer."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەرەتا پرینتەرەکە پەیوەست بکە بە کۆمپیوتەرەکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects6("en-US"),
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
                                            "Connect the machine to the power supply."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئامێرەکە پەیوەست بکە بە سەرچاوەی وزەکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects7("en-US"),
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
                                            "Downstairs toilets were connected directly to the drains."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەوالێتەکانی نھۆمی خوارەوە ڕاستەوخۆ بەسترابوون بە زێرابەکانەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) پەیوەستکردن بە ئینتەرنێتەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The device can be hooked up to a mobile phone to connect wirelessly."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئامێرەکە دەکرێت ببەسترێتەوە بە موبایلێکەوە بۆ پەیوەستبوونی بەبێ وایەر."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects9("en-US"),
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
                                            "Click ‘Continue’ to connect to the internet."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "‘Continue’ دابگرە بۆ پەیوەستبوون بە ئینتەرنێتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects10("en-US"),
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
                                            "Simply connect your device to the camera's Wi-Fi signal."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەنھا ئامێرەکەت پەیوەست بکە بە شەپۆلی وای‌فای کامێراکەت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) درووستکردنی پەیوەندی لە نێوان خەڵکی، شت، ڕووداو، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "There was nothing to connect him with the crime."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھیچ نەبوو بۆ تێوەگلاندنی لە تاوانەکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects12("en-US"),
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
                                            "He made a statement connecting the terrorist group to the attack."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لێدوانێکی دا بۆ بەستنەوەی گرووپە تیرۆریستییەکە با تاوانەکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects13("en-US"),
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
                                            "Bad diet is closely connected with many common illnesses."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خۆراکی ڕۆژانەی ناتەندرووست بەتوندی بەستراوەتەوە بە زۆر نەخۆشی باوەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) گەشتنی فڕۆکەیەک، پاسێک، شەمەندەفەرێک، ھتد کەمێک پێش ئەوەی یەکێکی دیکە بچێت بۆ ئەوەی گەشتیاران بە گۆڕانکاری بکەن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "His flight to Amsterdam connects with an afternoon flight to New York."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گەشتەکەی بۆ ئەمستردام پەیوەست دەبێت بە گەشتێکی نیوەڕوان بۆ نیویۆرک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects15("en-US"),
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
                                            "There's a connecting flight at noon."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گەشتێکی پێکەوەبەست ھەیە لە نیوەڕۆدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) دانانی کەسێک لەسەر ھەمان ھێڵی پەیوەندی بۆ ئەوەی قسەبکەن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "After a long wait I was connected to customer services."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە دوای چاوەڕوانییەکی زۆر پەیوەست کرام بە خزمەتگوزاری بەژداربووانەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) درووستکردنی پەیوەندییەکی باش لەگەڵ کەسێک بەشێوەیەک حەزتان لە یەکدی بێت و لە یەک تێبگەن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They met a couple of times but they didn't really connect."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چەند جارێک یەکیان بینی بەڵام نەسازان پێکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconnects18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconnects18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerDefinition(),
                          // const DefinitionKurdish(text: "٨. (کردار) لێدان لە کەسێک"),
                          // Row(
                          // children: [
                          // const Expanded(
                          // child: Column(
                          // children: [
                          // ExampleSentenceEnglish(
                          // text:
                          // "The blow connected and she felt a surge of pain."),
                          // ExampleSentenceKurdish(
                          // text: "رستە_رستە_رستە_رستە."),
                          // ],
                          // ),
                          // ),
                          // const CustomSizedBoxForTTS(),
                          // Column(
                          // children: [
                          // CustomIconButtonBritish(
                          // onPressed: () => speakconnects19("en-GB"),
                          // ),
                          // CustomIconButtonAmerican(
                          // onPressed: () => speakconnects19("en-US"),
                          // ),
                          // ],
                          // ),
                          // ],
                          // ),
                          // skipped_meaning
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
- Verb: connect (derived forms: connecting, connects, connected)
1. Join together or make a link between two or more pieces (= link, tie, link up)
"Can you connect the two loudspeakers?";
 
2. Make a logical or causal connection (= associate, tie in, relate, link, colligate, link up)
"I cannot connect these two pieces of evidence in my mind";
 
3. Be or become joined or united or linked (= link, link up, join, unite)
"The two streets connect to become a highway";
 
4. Join by means of communication equipment
"The telephone company finally put in lines to connect the towns in this area"
 
5. Land on or hit solidly
"The brick connected on her head, knocking her out"
 
6. Join for the purpose of communication
"Operator, could you connect me to the Raffles in Singapore?"
 
7. Be scheduled so as to provide continuing service, as in transportation
"The local train does not connect with the Amtrak train"; "The planes don't connect and you will have to wait for four hours"
 
8. Establish a rapport or relationship
"The President of this university really connects with the faculty"
 
9. Establish communication with someone (= get in touch, touch base)
"did you finally connect with your long-lost cousin?";
 
10. Plug into an outlet (= plug in, plug into)
"Connect the TV so we can watch the football game tonight";
 
11. (baseball) hit or play a ball successfully
"The batter connected for a home run"
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
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
  final String _videoId = '0Ths2-vspNA';
  final double _startSeconds = 68;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainerEnd(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatefulWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  State<YoutubeEmbeddedone> createState() => _YoutubeEmbeddedoneState();
}

class _YoutubeEmbeddedoneState extends State<YoutubeEmbeddedone> {
  late YoutubePlayerController _controller;
  final String _videoId = 'upiiNyibfF0';
  final double _startSeconds = 64;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatefulWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  State<YoutubeEmbeddedtwo> createState() => _YoutubeEmbeddedtwoState();
}

class _YoutubeEmbeddedtwoState extends State<YoutubeEmbeddedtwo> {
  late YoutubePlayerController _controller;
  final String _videoId = '-Nmaqp9Drco';
  final double _startSeconds = 0;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatefulWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  State<YoutubeEmbeddedthree> createState() => _YoutubeEmbeddedthreeState();
}

class _YoutubeEmbeddedthreeState extends State<YoutubeEmbeddedthree> {
  late YoutubePlayerController _controller;
  final String _videoId = 'gFuEoxh5hd4';
  final double _startSeconds = 386;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatefulWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  State<YoutubeEmbeddedfour> createState() => _YoutubeEmbeddedfourState();
}

class _YoutubeEmbeddedfourState extends State<YoutubeEmbeddedfour> {
  late YoutubePlayerController _controller;
  final String _videoId = '0SYKA00eFWY';
  final double _startSeconds = 169;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatefulWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  State<YoutubeEmbeddedfive> createState() => _YoutubeEmbeddedfiveState();
}

class _YoutubeEmbeddedfiveState extends State<YoutubeEmbeddedfive> {
  late YoutubePlayerController _controller;
  final String _videoId = 'H9rO5sKzOiQ';
  final double _startSeconds = 4141;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatefulWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  State<YoutubeEmbeddedsix> createState() => _YoutubeEmbeddedsixState();
}

class _YoutubeEmbeddedsixState extends State<YoutubeEmbeddedsix> {
  late YoutubePlayerController _controller;
  final String _videoId = 'r-Or05EFLUM';
  final double _startSeconds = 32;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

// end WORD_WEB