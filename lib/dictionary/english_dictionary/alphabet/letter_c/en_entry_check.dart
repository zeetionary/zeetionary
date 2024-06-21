import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycheck extends StatelessWidget {
  // blank divider
  EnglishEntrycheck({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcheck(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("check");
  }

  Future<void> speakchecks1(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Check your answers before handing it in.");
  }

  Future<void> speakchecks2(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The cars were checked to see whether the faults had been spotted.");
  }

  Future<void> speakchecks3(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Be sure to check labels for specific information.");
  }

  Future<void> speakchecks4(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Check the engine oil level regularly.");
  }

  Future<void> speakchecks5(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We were interrupted by a waiter checking to see if everything was OK.");
  }

  Future<void> speakchecks6(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Hang on—I just need to check my email.");
  }

  Future<void> speakchecks7(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She's constantly checking her phone—it drives me mad.");
  }

  Future<void> speakchecks8(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Check our website for details.");
  }

  Future<void> speakchecks9(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Go and check (that) I’ve locked the windows.");
  }

  Future<void> speakchecks10(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Check the box next to the right answer.");
  }

  Future<void> speakchecks11(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government is determined to check the growth of public spending.");
  }

  Future<void> speakchecks12(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You can try theis to checks the growth of bacteria.");
  }

  Future<void> speakchecks13(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She made no effort to check her tears and just let them run down her face.");
  }

  Future<void> speakchecks14(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She wanted to tell him the whole truth but she checked herself—it wasn't the right moment.");
  }

  Future<void> speakchecks15(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Could you give the tyres a check?");
  }

  Future<void> speakchecks16(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I went for a health check before going on the trip.");
  }

  Future<void> speakchecks17(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'll just have a quick check to see if the letter's arrived yet.");
  }

  Future<void> speakchecks18(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She had a thorough check of the room, but nothing had been taken.");
  }

  Future<void> speakchecks19(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Security checks were causing long delays at border crossings.");
  }

  Future<void> speakchecks20(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The police ran a check on the registration number of the car.");
  }

  Future<void> speakchecks21(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Was any check made on Mr Morris when he applied for the post?");
  }

  Future<void> speakchecks22(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The teacher put a check next to his name.");
  }

  Future<void> speakchecks23(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Place a check beside each characteristic that you feel that you possess.");
  }

  Future<void> speakchecks24(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I paid the check for the dinner.");
  }

  Future<void> speakchecks25(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can I have the check, please?");
  }

  Future<void> speakchecks26(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I wrote him a check for £50.");
  }

  Future<void> speakchecks27(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The law acts as a check on people's actions.");
  }

  Future<void> speakchecks28(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A cold spring will provide a natural check on the number of insects.");
  }

  Future<void> speakchecks29(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A system of checks and balances exists to ensure that our government is truly democratic.");
  }

  Future<void> speakchecks30(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I chose the red and white check.");
  }

  Future<void> speakchecks31(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks3100");
  }

  Future<void> speakchecks32(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks3200");
  }

  Future<void> speakchecks33(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks3300");
  }

  Future<void> speakchecks34(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks3400");
  }

  Future<void> speakchecks35(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks3500");
  }

  Future<void> speakchecks36(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks3600");
  }

  Future<void> speakchecks37(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks3700");
  }

  Future<void> speakchecks38(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks3800");
  }

  Future<void> speakchecks39(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks3900");
  }

  Future<void> speakchecks40(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks4000");
  }

  Future<void> speakchecks41(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks4100");
  }

  Future<void> speakchecks42(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks4200");
  }

  Future<void> speakchecks43(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks4300");
  }

  Future<void> speakchecks44(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks4400");
  }

  Future<void> speakchecks45(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks4500");
  }

  Future<void> speakchecks46(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks4600");
  }

  Future<void> speakchecks47(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks4700");
  }

  Future<void> speakchecks48(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks4800");
  }

  Future<void> speakchecks49(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks4900");
  }

  Future<void> speakchecks50(String languageCode) async {
    // DOPSUM: CHANGE speakcheck
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchecks5000");
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
                            EntryTitle(word: "check"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃek/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcheck("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃek/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcheck("en-US"),
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
کوردی: بەسەرداچوونەوە، چاوپیاخشاندنەوە، چاولێ‌کردنەوە، پیاھاتنەوە، چاوپیاگێڕانەوە، پشکنین، تێڕوانین،	پێک‌گرتن، بەراوردکاری، ھەڵسەنگاندن، بەریەک‌دان،	تاقی‌کردنەوە،	چاودێری، زێرەڤانی، کەتوانی، دەست‌بەسەراگرتن، ڕاگیرکاری، کۆنتڕۆڵ، مەھار،	نەھێشتن، پێش‌گرتن، پێش‌گیری، ڕێ‌گرتن،	وێستان، ھەڵوەستە،	قەڵەش، کەلێن،	کەم‌بوونەوە، ھاتنەخوارەوە،	ھۆکاری ڕێگر، ڕاگیرکەر،	کیش (شەترەنج)،	حەوتک (√)،	(لە ئەمریکا) چێک،	بیل، لیستە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) پشکنینی شتێک بۆ ئەوەی بزانیت پەسەندکراو، درووست، یان سەلامەتە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Check your answers before handing it in."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وەڵامەکانت بپشکنە پێش ئەوەی ڕادەستی بکەیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "check", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks1("en-US"),
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
                                            "The cars were checked to see whether the faults had been spotted."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئۆتۆمبێلەکان پشکنران بۆ ئەوەی بزانرێت کێشەکان دیاری کرابوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks2("en-US"),
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
                                                    "Be sure to check labels for specific information."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "سەیری نووسراوەکان بکە بۆ زانیاری دیاریکراو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchecks3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchecks3("en-US"),
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
                                                    "Check the engine oil level regularly."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئاستی ڕۆنی مەکینەکە زووزوو بپشکنە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchecks4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchecks4("en-US"),
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
                                  "٢. (کردار) سەیرکردنی شتێک یان ڕاسپاردنی کەسێک بۆ زانینی ئەوەی کە کەسێک/شتێک ئامادەیە، درووستە، یان ڕاستە، یان ئەوە شتێک بەو شێوەیە کە باوەڕت وایە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We were interrupted by a waiter checking to see if everything was OK."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پچڕێندراین لەلایەن گارسۆنێکەوە بۆ ئەوەی دڵنیایی بکاتەوە ھەموو شتێک درووست بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks5("en-US"),
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
                                            "Hang on—I just need to check my email."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بوەستە، تەنھا پێویستە سەیری ئیمەیڵەکەم بکەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks6("en-US"),
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
                                                    "She's constantly checking her phone—it drives me mad."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بەردەوام سەیری موبایلەکەی دەکات، ئەوە شێتم دەکات."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchecks7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchecks7("en-US"),
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
                                                    "Check our website for details."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بڕوانە وێبسایتەکەمان بۆ وردەکارییەکان."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchecks8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchecks8("en-US"),
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
                                                    "Go and check (that) I’ve locked the windows."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بچۆ و دڵنیایی بکەرەوە کە پەنجەرەکانم قفڵکردووە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchecks9("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchecks9("en-US"),
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
                                  "٣. (کردار) دانانی نیشانەی (✓) لە تەنیشت شتێک لە لیستێکدا، وەڵامێک، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Check the box next to the right answer."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "حەوتک لە خشتەی وەڵامی ڕاست بدە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) کۆنترۆڵکردنی شتێک، وەستاندنی شتێک لە زیادبوون یان خراپبوون"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The government is determined to check the growth of public spending."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "حکومەت سوورە لەسەر ڕێگری لە گەشەی خەرجی گشتی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks11("en-US"),
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
                                            "You can try theis to checks the growth of bacteria."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەتوانیت ئەمە تاقیبکەیتەوە بۆ ڕێگری لە تەشەنەی بەکتریا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) وەستاندنی خۆت لە وتن یان کردنی شتێک، یان پیشاندانی ھەستێکی دیاریکراو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She made no effort to check her tears and just let them run down her face."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھیچ ھەوڵێکی نەدا ڕێگری لە فرمێسکەکانی بکات و ڕێگەیدا بە ڕووخساریدا بێنە خوارەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks13("en-US"),
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
                                            "She wanted to tell him the whole truth but she checked herself—it wasn't the right moment."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ویستی ھەموو ڕاستییەکانی پێ بڵێت بەڵام خۆی کۆنترۆڵ کرد، ئەوە کاتە گونجاوەکە نەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) پشکنینی شتێک  بۆ ئەوەی بزانیت سەلامەتە، پارێزراوە، یان لە دۆخێکی باشدایە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Could you give the tyres a check?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەتوانیت پشکنینێکی تایەکان بکەیت؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks15("en-US"),
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
                                            "I went for a health check before going on the trip."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چووم بۆ پشکنینێکی تەندرووستی پێش ئەوەی بۆ گەشتەکە بچم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks16("en-US"),
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
                                                    "I'll just have a quick check to see if the letter's arrived yet."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تەنھا پشکنینێکی خێرا دەکەم بۆ ئەوەی بزانم نامەکە گەشتووە تا ئێستا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchecks17("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchecks17("en-US"),
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
                                                    "She had a thorough check of the room, but nothing had been taken."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پشکنینێکی تەواوی ژوورەکەی کرد، بەڵام ھیچ نەبردرابوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchecks18("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchecks18("en-US"),
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
                                  "٧. (ناو) لێکۆڵینەوە بۆ دۆزینەوەی زانیاری لەسەر کەسێک/شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Security checks were causing long delays at border crossings."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پشکنینی سەلامەتی دەبوونە ھۆکاری دواکەوتنی درێژخایەن لە خاڵە سنوورییەکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks19("en-US"),
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
                                            "The police ran a check on the registration number of the car."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پۆلیس پشکنینێکی ژمارەی تۆماری ئۆتۆمبێلەکەی کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks20("en-US"),
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
                                                    "Was any check made on Mr Morris when he applied for the post?"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھیچ لێکۆڵینەوەیەک لە بەڕێز مۆریس کرا کە داخوازینامەی بۆ پێگەکە پێشکەشکرد."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchecks21("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchecks21("en-US"),
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
                                  "٢٢. (ناو) نیشانەی (✓)  کە دادەنرێت لە پێش شتێک لە لیستێکدا بۆ ئەوەی وا پیشان بدرێت کە ئەنجام‌دراوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The teacher put a check next to his name."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مامۆستاکە حەوتکێکی دانا لە تەنیشت ناوەکەی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks22("en-US"),
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
                                            "Place a check beside each characteristic that you feel that you possess."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "حەوتکێک لە تەنیشت ھەر خاسیەتێک دابنە کە پێت وایە ھەتە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks23("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ناو) لە چێشتخانەدا پارچە کاغەزێکە کە نرخی ئەو خواردن و خواردنەوانەی لەسەر نووسراوە کە داوات کردووە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I paid the check for the dinner."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پارەی حسابەکەم دا بۆ نانی ئێوارە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks24("en-US"),
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
                                        text: "Can I have the check, please?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بێزەحمەت، دەتوانیت حسابەکەم بۆ بێنیت؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٠. (ناو) چەکی بانکی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I wrote him a check for £50."),
                                    ExampleSentenceKurdish(
                                        text: "چەکێکی ٥٠ پاوەندیم بۆ نووسی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks26("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (ناو) شتێک کە بەرەوپێشچوونی شتێکی دیکە دوادەخات یان دەیوەستێنێت لە خراپبوون"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The law acts as a check on people's actions."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "یاساکە وەک چاودێر کاردەکات بەسەر کردارەکانی خەڵکییەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks27("en-US"),
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
                                            "A cold spring will provide a natural check on the number of insects."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەھارێکی سارد ڕاگرێکی باش دەبێت بەسەر ژمارەی مێرووەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks28("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks28("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (ناو) ئەو یاسایانەی کە دادەنرێن بۆ کۆنترۆڵکردنی دەسەڵات، بەتایبەتی دەسەڵاتی سیاسی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "A system of checks and balances exists to ensure that our government is truly democratic."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سیستەمێکی یاسا و ڕێسا بوونی ھەیە بۆ دڵنیاییکردنەوەی ئەوەی کە حکومەتەکەمان تەواو دیموکراسییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks29("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks29("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (ناو) شێوەی چوارگۆشە بە دوو ڕەنگ یان زیاترەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I chose the red and white check."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خانەخانە سوور و سپییەکەم ھەڵبژارد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchecks30("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchecks30("en-US"),
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
- Verb: check (derived forms: checks, checking, checked)
1. Examine so as to determine accuracy, quality, or condition (= check up on, look into, check out, suss out [Brit, informal], check over, go over, check into, suss [Brit, informal], sus [Brit, informal])
"check the brakes"; "Check out the engine"; "check up on the brakes"; "check over the brakes"; "check into the brakes"; 
 
2. Make an examination or investigation
"check into the rumour"; "check the time of the class"
 
3. Be careful or certain to do something; make certain of something (= see, insure, see to it, ensure, control, ascertain, assure)
"check that the curtains are closed";

4. Lessen the intensity of; temper; hold in restraint; hold or keep within limits (= control, hold in, hold, contain, curb, moderate, mod [informal])
"check your anger";

5. Stop for a moment, as if out of uncertainty or caution
"She checked for an instant and missed a step"
 
6. Put a check mark on, near or next to (= check off, mark, mark off, tick off [Brit, Cdn, informal], tick [Brit])
"Please check each name on the list";
 
7. Slow the growth or development of (= retard, delay)
"The brain damage will check the child's language development";
 
8. Be verified or confirmed; pass inspection (= check out)
"These stories don't check!";
 
9. Be compatible, similar or consistent; coincide in their characteristics (= match, fit, correspond, jibe, gibe, tally, agree, marry up, marry)
"The handwriting checks with the signature on the form";
 
10. Block or impede (a player from the opposing team) in ice hockey
 
11. Develop (a child's or animal's) behaviour by instruction and practice; especially to teach self-control (= discipline, train, condition)
"Parents must check their children";
 
12. Consign for shipment on a vehicle
"check your luggage before boarding"
 
13. [N. Amer] Hand over something to somebody as for temporary safekeeping
"Check your coat at the door"
 
14. (falconry) abandon the intended prey, turn, and pursue an inferior prey
 
15. Stop in a chase especially when scent is lost
"The dog checked"
 
16. [N. Amer] Mark into squares or draw squares on; draw crossed lines on (= checker [N. Amer], chequer [Brit, Cdn])
 
17. (card game) decline to initiate betting
 
18. Hold back, as of a danger or an enemy; check the expansion or influence of (= turn back, arrest, stop, contain, hold back)
"Check the growth of communism in South East Asia";

19. (chess) place into check
"He checked my kings"
 
20. [US] Write out a check on a bank account
 
21. Find out, learn, or determine with certainty, usually by making an inquiry or other effort (= determine, find out, see, ascertain, watch, learn)
"Check whether the train leaves on time";

22. Verify by consulting a source or authority
"check the spelling of this word"; "check your facts"
 
23. Arrest the motion (of something) abruptly
"He checked the flow of water by shutting off the main valve"
 
24. Make cracks or chinks in (= chink)
"The heat checked the paint";
 
25. Become fractured; break or crack on the surface only (= crack, break)
 
26. Withdraw money by writing a check (= cheque [Brit, Cdn], check out [US])

- Noun: check (derived forms: checks)
1. [N. Amer] A written order directing a bank to pay money (= bank check [US], cheque [Brit, Cdn])
"he paid all his bills by check";

2. An appraisal of the state of affairs (= assay)
"a check on its dependability under stress";
 
3. [N. Amer] The bill in a restaurant (= chit, tab [N. Amer, informal], bill [Brit])
"he asked the waiter for the check";
 
4. The state of inactivity following an interruption (= arrest, halt, hitch, stay, stop, stoppage)
"held them in check";

5. Additional proof that something that was believed (some fact, hypothesis or theory) is correct (= confirmation, verification, substantiation)
 
6. The act of inspecting or verifying (= checkout, check-out procedure)
"they made a check of their equipment"; "the pilot ran through the check-out procedure";
 
7. A mark indicating that something has been noted or completed etc. (= check mark, tick [Brit])
"as he called the role he put a check mark by each student's name";
 
8. Something that interferes with (or delays) action or progress (= hindrance, hinderance, deterrent, impediment, balk, baulk [Brit], handicap)
 
9. A mark left after a small piece has been chopped or broken off of something (= chip)
 
10. A textile pattern of squares or crossed lines (resembling a checkerboard)
"she wore a skirt with checks"
 
11. The act of restraining power, action or limiting excess (= bridle, curb)
"his common sense is a check to his quick temper";
 
12. Obstructing an opponent in ice hockey
 
13. (chess) a direct attack on an opponent's king
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
  final String _videoId = 'KKsSi-TOmEY';
  final double _startSeconds = 14;

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
  final String _videoId = 'Brw-KMSkePM';
  final double _startSeconds = 8;

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
  final String _videoId = '4YOkWU9r5x4';
  final double _startSeconds = 24;

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
  final String _videoId = 'hTqtGJwsJVE';
  final double _startSeconds = 1994;

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
  final String _videoId = 'NCLZi2Rn_ug';
  final double _startSeconds = 42;

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
  final String _videoId = '2e3i-DxaWoc';
  final double _startSeconds = 232;

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
  final String _videoId = 'cAPgFzMA7LQ';
  final double _startSeconds = 56;

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

class YoutubeEmbeddedseven extends StatefulWidget {
  const YoutubeEmbeddedseven({super.key});

  @override
  State<YoutubeEmbeddedseven> createState() => _YoutubeEmbeddedsevenState();
}

class _YoutubeEmbeddedsevenState extends State<YoutubeEmbeddedseven> {
  late YoutubePlayerController _controller;
  final String _videoId = 'YFvjoXaw-MI';
  final double _startSeconds = 29;

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
