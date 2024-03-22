import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycommon extends StatelessWidget {
// blank divider
  EnglishEntrycommon({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcommon(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("common"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons1(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Breast cancer is the most common form of cancer among women in this country."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons2(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Jackson is a common English name."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons3(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Heart disease was the most common cause of death in those aged over 85."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons4(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The disease is very common in young horses."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons5(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Allergies to milk are quite common in childhood."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons6(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Stomach pain is very common in children."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons7(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They share a common interest in photography."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons8(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We are working together for a common purpose."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons9(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This decision was taken for the common good."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons10(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This attitude is common to most young men in the armed services."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons11(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Shakespeare's work was popular among the common people in his day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons12(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In most people's eyes she was nothing more than a common criminal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons13(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's only common decency to let her know what's happening."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons14(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This was the staple food of the common people."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons15(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This fish is not common in European waters."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons16(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She thought he was very common and uneducated."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons17(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I wish you wouldn't use that word—it sounds so common."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons18(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I don't like Sandra. She seems a bit common to me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons19(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We went for a walk on the common."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons20(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons21(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons22(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons23(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons24(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons25(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons26(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons27(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons28(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons29(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons30(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons31(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons32(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons33(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons34(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons35(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons36(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons37(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons38(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons39(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons40(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons41(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons42(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons43(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons44(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons45(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons46(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons47(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons48(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons49(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons50(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons51(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommons52(String languageCode) async {
    // DOPSUM: CHANGE speakcommon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommons5200"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "common"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒmən/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcommon("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːmən/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcommon("en-US"),
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
کوردی: ھاوبەش، ھەڤپار، ھەڤپشک، خەڵکی ڕەمەکی، گشتی، گەلەمپەری، ھەموو، گشت، تێکڕا، پێکەوەیی،	ئاسایی، بێ‌پلەوپایە، عەدەتی،	باو، بەبڕەو، داب،	زۆر، فرە، گەلێ،	سادە، ناتایبەتی،	ڕەمەکی، بازاڕی،	سووک، ھیچەکە،	بێ‌ڕەوشت، چیمەن، مێرگ، باخی گشتی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) شتێک کە باوە و زۆر ڕوودەدات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Breast cancer is the most common form of cancer among women in this country."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "شێرپەنجەی مەمک یەکێکە لە باوترین جۆرەکانی شێرپەنجە لە ناو ژناندا لەم وڵاتە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "common", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommons1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommons1("en-US"),
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
                                            "Jackson is a common English name."),
                                    ExampleSentenceKurdish(
                                        text: "جاکسن ناوێکی ئینگلیزی باوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommons2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommons2("en-US"),
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
                                                    "Heart disease was the most common cause of death in those aged over 85."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "نەخۆشی دڵ باوترین ھۆکاری مردن بوو لە کەسانی تەمەن سەروو ٨٥ ساڵدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommons3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommons3("en-US"),
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
                                                    "The disease is very common in young horses."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەم نەخۆشییە زۆر باوە لەناو بەچکە ئەسپدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommons4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommons4("en-US"),
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
                                                    "Allergies to milk are quite common in childhood."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەستیاری بە شیر زۆر باوە لە منداڵیدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommons5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommons5("en-US"),
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
                                                    "Stomach pain is very common in children."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئازاری گەدە زۆر باوە لە منداڵاندا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommons6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommons6("en-US"),
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
                                  "٢. (ناو) شتێک کە بوونی ھەیە لە دوو کەس یان زیاتردا، یان لە ژمارەیەک کەسدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They share a common interest in photography."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خولیایەکی ھاوبەشیان ھەیە بۆ وێنەگرتن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommons7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommons7("en-US"),
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
                                            "We are working together for a common purpose."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بۆ ئامانجێکی ھاوبەش کار دەکەین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommons8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommons8("en-US"),
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
                                                    "This decision was taken for the common good (= the advantage of everyone)."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەم بڕیارە بۆ چاکەی ھەموان درا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommons9("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommons9("en-US"),
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
                                                    "This attitude is common to most young men in the armed services."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەم ھەڵسوکەوتە گشتییە لەناو زۆرینەی پیاوانی گەنجی سوپادا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommons10("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommons10("en-US"),
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
                                  "٣. (ھاوەڵناو) شتێک کە ئاساییە؛ تایبەت نییە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Shakespeare's work was popular among the common people in his day."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کارەکانی شکسپیر زۆر بەناوبانگ بوون لەناو خەڵکی ئاساییدا لە ڕپژانی خۆیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommons11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommons11("en-US"),
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
                                            "In most people's eyes she was nothing more than a common criminal."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ڕوانگەی زۆر کەسەەو تەنھا تاوانبارێکی ئاسایی بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommons12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommons12("en-US"),
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
                                                    "It's only common decency to let her know what's happening (= people would expect it)."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەوە تەنھا دابودەستووری چاوەڕواکراوە کە پێی بڵێیت چی ڕوودەدات."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommons13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommons13("en-US"),
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
                                                    "This was the staple food of the common people."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەمە خواردنی سەرەکی خەڵکی بوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommons14("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommons14("en-US"),
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
                                  "٤. (ھاوەڵناو) ئاژەڵێک یان ڕووەکێک کە بە ژمارەی زۆر بوونی ھەیە و دەگمەن نییە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This fish is not common in European waters."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم ماسییە باو نییە لە ئاوەکانی ئەورووپیا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommons15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommons15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) تایبەت بە کەسێکی کە لە چینی خوارەوەیە و ھەڵسوکەوتی باشی نییە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She thought he was very common and uneducated."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وای بیردەکردەوە کە زۆر عەشایەر و نەخوێندەوارە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommons16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommons16("en-US"),
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
                                            "I wish you wouldn't use that word—it sounds so common."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەھیوابووم ئەو وشەیە بەکارنەھێنیت، زۆر عەشایەرانەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommons17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommons17("en-US"),
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
                                            "I don't like Sandra. She seems a bit common to me."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "حەزم بە ساندرا نییە، زۆر عەشایەرە لام."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommons18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommons18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ناوچەیەک لە گوندێک یان شارۆچکەیەک کە ھەموو کەس دەتوانێت بەکاریبێنێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We went for a walk on the common."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چووین بۆ پیاسەیەک لە باخە گشتییەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommons19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommons19("en-US"),
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
- Adjective: common (derived forms: commonest, commoner) 
1. Shared by or having the same connection with two or more parties (= mutual)
"a common friend";
 
2. Found in large numbers or in a large quantity (= usual)
"a common complaint";
 
3. Belonging to or participated in by a community as a whole; public
"for the common good"; "common lands are set aside for use by all members of a community"
 
4. Having no special distinction or quality; widely known or commonly encountered; average or ordinary or usual
"the common man"; "a common sailor"; "the common cold"; "a common nuisance"; "followed common procedure"; "it is common knowledge that she lives alone"; "the common housefly"; "a common brand of soap"
 
5. Being or characteristic of or appropriate to everyday language (= vernacular, vulgar)
"common parlance";
 
6. (disparaging) of or associated with ordinary, common people (= plebeian, vulgar, unwashed)
"the common people in those days suffered greatly"; "behaviour that branded him as common";
 
7. Of low or inferior quality or value (= coarse)
"produced...the common cloths used by the poorer population";
 
8. Lacking refinement, cultivation or taste (= coarse, rough-cut, uncouth, vulgar)
"behaviour that branded him as common";
 
9. To be expected; standard
"common decency"

- Noun: common (derived forms: commons)
1. A piece of open land for recreational use in an urban area (= park, commons, green)
"they went for a walk in the common";
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
    videoId: 'ToNGJhWPz1o',
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
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Vx8NyHbh88s',
    startSeconds: 11,
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
    videoId: 'AAIYR1bs-vQ',
    startSeconds: 3,
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
    videoId: 'tXjHb5QmDV0',
    startSeconds: 103,
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
    videoId: 'bXCOI_LQ_0o',
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

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '8T7lEvtwETA',
    startSeconds: 193,
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
    videoId: 'iKv4oc2zbeA',
    startSeconds: 210,
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