import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycharge extends StatelessWidget {
  // blank divider
  EnglishEntrycharge({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcharge(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("charge"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges1(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Delivery is free of charge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges2(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The hotel operates a bus service to the beach for a small charge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges3(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This service is available at a nominal charge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges4(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The museum has introduced a £3 admission charge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges5(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Would you like to put that on your charge?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges6(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "‘Are you paying cash?’ ‘No, it'll be a charge.’"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges7(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He took charge of the farm after his father's death."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges8(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They left the au pair in charge of the children for a week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges9(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm leaving the school in your charge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges10(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We need somebody to take charge of the financial side."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges11(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Both men deny the charges."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges12(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They decided to drop the charges against the newspaper."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges13(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After being questioned by the police, she was released without charge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges14(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He has admitted the murder charge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges15(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is almost certain to face criminal charges."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges16(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The court dismissed the charge against him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges17(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She rejected the charge that the story was untrue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges18(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The charges will be difficult to prove."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges19(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My phone had run out of charge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges20(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The electron has a negative charge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges21(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He put his phone on charge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges22(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They were driven back by a police baton charge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges23(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The bull lowered its horns and charged."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges24(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His charge was to obtain specific information."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges25(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges26(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges27(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges28(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges29(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges30(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges31(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges32(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges33(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges34(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges35(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges36(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges37(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges38(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges39(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges40(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges41(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges42(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges43(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges44(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges45(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges46(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges47(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges48(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges49(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcharges50(String languageCode) async {
    // DOPSUM: CHANGE speakcharge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcharges5000"); // DOPSUM: CHANGE TEXT
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
کوردی: گوناهبارکردن، تاوانباری، گومانبارکردن، تۆمەت، شەڵتاخ، بوختان، چەفتە، نرخ، بایی، قیمەت، حەق، حەق‌دەس، مز، کرێ، مەزاخ، خەرج، تێچوون،	سەرپەرشتی، سەرپەرستی، چاودێری، سەخبیری، چاوبەسەری، سەرنج، بەرپرسایەتی،	کۆنتڕۆڵ، مەهار، دەس‌بەسەراگرتن،	قەرز،	ئەرک، پەیور،	هێرش، گوژمە، پەلامار،	دەستوور، فەرمان،	(چەک) تەقەک، پێتەق، خەرج،	(ئێلیکتریسیتی) بارگ، بارگە، بار

١. (ناو) ئەو بڕەی کە کەسێک داوای دەکات بۆ شتێک یان خزمەتگوزارییەک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Delivery is free of charge."),
                                    ExampleSentenceKurdish(
                                        text: "گەیاندن بێ‌بەرامبەرە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "charge", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges1("en-US"),
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
                                            "The hotel operates a bus service to the beach for a small charge."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هوتێلەکە خزمەتگوزارییەکی گەیاندنی پاسی هەیە بۆ کەنار دەریاکە بە نرخێکی کەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges2("en-US"),
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
                                                    "This service is available at a nominal charge."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "خزمەتگوزارییەکە بە نرخێکی زۆر کەم بەردەستە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcharges3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcharges3("en-US"),
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
                                                    "The museum has introduced a £3 admission charge."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "مۆزەخانەکە نرخی چوونەژوورەوەی ٣ پاوەندی دەستپێکردووە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcharges4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcharges4("en-US"),
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
                                  "٢. (ناو) هەژماری حیسابات کە بڕی ئەو شتانە کە لە فرؤشگایەک دەیکڕیت بە قەرز و لە کاتێکی دیاریکراودا دەیدەیتەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Would you like to put that on your charge?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "حەزدەکەیت ئەوە بخەیتە سەر حیساباتەکەت؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges5("en-US"),
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
                                            "‘Are you paying cash?’ ‘No, it'll be a charge.’"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "'پارە دەدەیت؟' 'نەخێر، با لەسەر حیسابەکە بێت'."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) پێگەی هەبوونی دەسەڵات بەسەر شتێک/کەسێکدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He took charge of the farm after his father's death."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەرپرسیاریەتی کێڵگەکەی گرتە دەست لە دوای مەرگی باوکی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges7("en-US"),
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
                                            "They left the au pair in charge of the children for a week."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئۆپێرەکەی وەک چاودێری منداڵەکان جێهێشت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges8("en-US"),
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
                                                    "I'm leaving the school in your charge."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "قوتابخانەکە لەژێر سەرپەرشتی تۆدا جێدێڵم."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcharges9("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcharges9("en-US"),
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
                                                    "We need somebody to take charge of the financial side."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پێویستیمان بە کەسێکە لایەنی ئابووری لەئەستۆ بگرێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcharges10("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcharges10("en-US"),
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
                                  "٤. (ناو) تۆمەتی پۆلیس کە کەسێک تاوانێکی ئەنجام داوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Both men deny the charges."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەردوو پیاوەکە نکۆڵی لە تاوانەکان دەکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges11("en-US"),
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
                                            "They decided to drop the charges against the newspaper."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بڕیاریاندا واز لە تۆمەتەکان بێنن دژ بە ڕۆژنامەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges12("en-US"),
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
                                                    "After being questioned by the police, she was released without charge."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لەدوای ئەوەی لەلایەن پۆلیسەوە لێکۆڵینەوەی لێکرا، بەبێ تۆمەتبارکردن ئازادکرا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcharges13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcharges13("en-US"),
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
                                                    "He has admitted the murder charge."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دانی بە تۆمەتی کوشتنەکەدا ناوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcharges14("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcharges14("en-US"),
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
                                                    "She is almost certain to face criminal charges."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەوە مسۆگەرە کە ڕووبەڕووی تۆمەتی تاوانکاری دەبێتەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcharges15("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcharges15("en-US"),
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
                                                    "The court dismissed the charge against him."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دادگا تۆمەتەکانی لە دژی ڕەتکردەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcharges16("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcharges16("en-US"),
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
                                  "٥. (ناو) قسەیەک کە کەسێک بە کردنی کارێکی هەڵە یان خراپ تۆمەتبار دەکات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She rejected the charge that the story was untrue."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەو تۆمەتەی ڕەتکردەوە کە چیرۆکەکە ڕاست نییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges17("en-US"),
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
                                            "The charges will be difficult to prove."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تۆمەتەکان زەحمەت دەبێت بسەلمێندرێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ئەو ڕێژە کارەباییەی کە دەخرێتە باترییەکەوە، یان دەگوازرێتەوە، یان بارگاوی کردنی باترییەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "My phone had run out of charge."),
                                    ExampleSentenceKurdish(
                                        text: "موبایلەکەم شەحنی نەماوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges19("en-US"),
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
                                            "The electron has a negative charge."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەلیکترۆنەکە بارگەیەکی نێگەتیڤی هەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges20("en-US"),
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
                                                    "He put his phone on charge."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "موبایلەکەی کرد بە شەحنەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcharges21("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcharges21("en-US"),
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
                              text: "٧. (ناو) پەلامارێکی توندوتیژانە یان خێرا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They were driven back by a police baton charge."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گەڕێندراوە دواوە بە پەلاماری کوتەکی پۆلیس."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges22("en-US"),
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
                                            "The bull lowered its horns and charged."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جوانەگاکە شاخەکانی نزمکردەوە و هێرشی کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges23("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // skipped_meaning
                          // skipped_meaning
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ناو) ئەرکێک یان کارێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "His charge was to obtain specific information."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەرکەکەی ئەوە بوو زانیاری تایبەت بەدەست بخات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcharges24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcharges24("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YouTubeScroller(
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

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
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
- Verb: charge (Derived forms: charges, charged, charging)
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

- Noun: charge (Derived forms: charges)
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

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/NCLZi2Rn_ug?t=',
    startSeconds: 125,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/s1SaD-gSZO4?t=',
    startSeconds: 191,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/_wNsZEqpKUA?t=',
    startSeconds: 907,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/ewLpXw6uN28?t=',
    startSeconds: 931,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/bHIhgxav9LY?t=',
    startSeconds: 75,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/XI9kKiyIMf0?t=',
    startSeconds: 100,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/95YYqXFLfI8?t=',
    startSeconds: 10,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/esayi49OAk4',
    // startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

// end WORD_WEB
