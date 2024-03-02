import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycold extends StatelessWidget {
  // blank divider
  EnglishEntrycold({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcold(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cold"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds1(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm cold. Turn the heating up."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds2(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's freezing cold."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds3(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Hurry up—your dinner's getting cold."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds4(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Isn't it cold today?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds5(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Hot and cold food is available in the cafeteria."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds6(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's cold chicken for lunch."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds7(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was staring at her with cold eyes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds8(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was very cold towards me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds9(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The police followed the robbers to the airport but then the trail went cold."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds10(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was knocked out cold in the second round."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds11(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've got a cold."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds12(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If you stay out in the rain you'll catch cold!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds13(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Don't stand outside in the cold."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds14(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She doesn't seem to feel the cold."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds15(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His final request stopped her cold."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds16(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I can't just walk in there cold and give a speech."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds17(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds18(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds19(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds20(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds21(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds22(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds23(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds24(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds25(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds26(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds27(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds28(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds29(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds30(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds31(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds32(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds33(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds34(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds35(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds36(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds37(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds38(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds39(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds40(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds41(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds42(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds43(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds44(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds45(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds46(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds47(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds48(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds49(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds50(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds51(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds52(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds53(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds54(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds55(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds56(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds57(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolds58(String languageCode) async {
    // DOPSUM: CHANGE speakcold
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolds5800"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "cold"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəʊld/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcold("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəʊld/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcold("en-US"),
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
کوردی: سارد، ساردایی، بێ‌هەست، ساردوسڕ، بێ‌سۆز، وشک (هەڵس‌وکەوت)،	کەم (بۆن)،	ساردمەزاج، سارد (سێکسی)،	مردوو، بێ‌هۆش، لەسەرخۆچوو، دوور (لە کایەی مناڵان‌دا)،	کت‌وپڕ و بەتەواوەتی، تەواو، بەتەواوی،	بێ‌ئامادەیی، لەخۆوە،	سەرما، هەوای سارد، ساردی،	هەڵامەت، سەرمابوون، پەژیک، پەرسیو
"""),
                          const DefinitionKurdish(text: "١. (ھاوەڵناو) سارد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I'm cold. Turn the heating up."),
                                    ExampleSentenceKurdish(
                                        text: "سەرمامە. گەرمییەکە بکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "cold", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolds1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolds1("en-US"),
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
                                        text: "It's freezing cold."),
                                    ExampleSentenceKurdish(
                                        text: "تەواو سەرمامە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolds2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolds2("en-US"),
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
                                                    "Hurry up—your dinner's getting cold."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "خێراکە، نانی ئێوارە سارد دەبێتەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcolds3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcolds3("en-US"),
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
                                                text: "Isn't it cold today?"),
                                            ExampleSentenceKurdish(
                                                text: "سارد نییە ئەمڕۆ؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcolds4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcolds4("en-US"),
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
                              text: "٢. (ھاوەڵناو) خواردنی سارد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Hot and cold food is available in the cafeteria."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خواردنی گەرم و سارد لە کافتریاکە بەردەستن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolds5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolds5("en-US"),
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
                                        text: "It's cold chicken for lunch."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مریشكی سارد بۆ نانی نیوەڕۆ هەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolds6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolds6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) کەسێکی ساردوسڕ کە هاوڕێیانە نییە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He was staring at her with cold eyes."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە چاوی ساردوسڕییەوە سەیری دەکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolds7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolds7("en-US"),
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
                                        text: "She was very cold towards me."),
                                    ExampleSentenceKurdish(
                                        text: "زۆر ساردوسڕ بوو لەگەڵم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolds8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolds8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) ڕێگایەک کە ئاسان نادۆزرێتەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The police followed the robbers to the airport but then the trail went cold."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پۆلیس شوێن دزەکان کەوتن تاوەکو فڕۆکەخانەکە، بەڵام دواتر شوێنپێیان ونبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolds9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolds9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (ھاوەڵناو) بێهۆش"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He was knocked out cold in the second round."),
                                    ExampleSentenceKurdish(
                                        text: "لە دووەم دەوراندا بێهۆشخرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolds10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolds10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) نەخۆشییەکی باو کە کار لە قوڕگ و لووت دەکات و دەبێتە هۆی کۆکە، پژمە، هتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I've got a cold."),
                                    ExampleSentenceKurdish(
                                        text: "هەڵامەتم گرتووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolds11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolds11("en-US"),
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
                                            "If you stay out in the rain you'll catch cold!"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەگەر لە بەر بارانەکە بمێنیتەوە هەڵامەت دەگریت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolds12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolds12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) سەرما؛ کەشی سارد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Don't stand outside in the cold."),
                                    ExampleSentenceKurdish(
                                        text: "لە دەرەوە لە سەرماکە مەوەستە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolds13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolds13("en-US"),
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
                                            "She doesn't seem to feel the cold."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وا دەرناکەوێت هەست بە سەرماکە بکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolds14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolds14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ھاوەڵکار) لەناکاو و بەتەواوی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "His final request stopped her cold."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆتا داواکاری بە تەواوی وەستاندی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolds15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolds15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ھاوەڵکار) بەبێ ئامادەکاری"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I can't just walk in there cold and give a speech."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناتوانم بەبێ ئامادەکاری بچمە ئەوێ و وتارێک بدەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolds16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolds16("en-US"),
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
- Adjective: cold (Derived forms: coldest, colder)
1. Having a low or inadequate temperature or feeling a sensation of coldness or having been made cold by e.g. ice or refrigeration
"a cold climate"; "a cold room"; "dinner has gotten cold"; "cold fingers"; "if you are cold, turn up the heat"; "a cold beer"
 
2. Without human warmth or emotion
"a cold unfriendly nod"; "a cold and unaffectionate person"; "a cold impersonal manner"; "cold logic"; "the concert left me cold"
 
3. Having lost freshness through passage of time
"a cold trail"; "dogs attempting to catch a cold scent"
 
4. (colour) giving no sensation of warmth
"a cold bluish grey"
 
5. Marked by errorless familiarity
"had her lines cold before rehearsals started"
 
6. Lacking originality or spontaneity; no longer new (= stale, dusty, moth-eaten)
"cold news";
 
7. So intense as to be almost uncontrollable
"cold fury gripped him"
 
8. Sexually unresponsive (= frigid)
"was cold to his advances";
 
9. Without compunction or human feeling (= cold-blooded, inhuman, insensate)
"in cold blood"; "cold-blooded killing";
 
10. Feeling or showing no enthusiasm
"a cold audience"; "a cold response to the new play"
 
11. Unconscious from a blow, shock or intoxication
"the boxer was out cold"; "pass out cold"
 
12. Of a seeker; far from the object sought
 
13. Lacking the warmth of life
"cold in his grave"

- Noun: cold (Derived forms: colds)
1. A mild viral infection involving the nose and respiratory passages (but not the lungs) (= common cold)
"will they never find a cure for the common cold?";
 
2.The absence of heat (= coldness, low temperature, frigidity, frigidness)
"come in out of the cold"; "cold is a vasoconstrictor";
 
3. The sensation produced by low temperatures (= coldness)
"the cold helped clear his head"; "he shivered from the cold";
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
    videoId: 'https://youtu.be/8Xv8AZqCJq8?t=',
    startSeconds: 16,
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
    videoId: 'https://youtu.be/Ig8w0BDAhLg?t=',
    startSeconds: 7,
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
    videoId: 'https://youtu.be/smQC3CXalVg?t=',
    startSeconds: 9,
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
    videoId: 'https://youtu.be/AaeUX5lFx-s',
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

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/xev7NqHYcHQ?t=',
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

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/x7MA-XeXZt0?t=',
    startSeconds: 35,
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
    videoId: 'https://youtu.be/Ht0IbFNbfSY?t=',
    startSeconds: 138,
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