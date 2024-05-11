import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycase extends StatelessWidget {
  // blank divider
  EnglishEntrycase({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcase(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("case"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases1(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In some cases people have had to wait several weeks for an appointment."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases2(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In most cases the increases have been marginal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases3(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("What should be done in such cases?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases4(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company only dismisses its employees in cases of gross misconduct."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases5(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In the case of banks, the law can limit activities."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases6(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If that is the case, we need more staff."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases7(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is simply not the case that prison conditions are improving."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases8(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I cannot make an exception in your case."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases9(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In your case, we are prepared to be lenient."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases10(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Don't underestimate the power of the pen, or in this case, the power of the keyboard."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases11(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They never solved the Jones murder case."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases12(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Four officers are investigating the case."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases13(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The case will be heard next week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases14(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The Supreme Court heard the case yesterday."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases15(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Our lawyer didn't think we had a case."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases16(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The case against her was very weak."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases17(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He successfully argued the case for accepting the agreement."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases18(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They try to make the case that this war is necessary."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases19(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The museum was full of stuffed animals in glass cases."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases20(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He put the binoculars back in their carrying case."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases21(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Let me carry your case for you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases22(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They put their cases in the boot and drove off."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases23(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Over 130 000 cases of cholera were reported in 2016."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases24(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The most serious cases were treated at the scene of the accident."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases25(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's a hopeless case."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases26(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Latin nouns have case, number and gender."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases27(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases28(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases29(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases30(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases3030"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases31(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases3131"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases32(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases3232"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases33(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases3333"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases34(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases3434"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases35(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases3535"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases36(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases3636"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases37(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases3737"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases38(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases3838"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases39(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases3939"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases40(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases4040"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases41(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases4141"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases42(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases4242"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases43(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases4343"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases44(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases4444"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases45(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases4545"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases46(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases4646"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases47(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases4747"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases48(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases4848"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases49(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases4949"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcases50(String languageCode) async {
    // DOPSUM: CHANGE speakcase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcases5050"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "case"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /keɪs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcase("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /keɪs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcase("en-US"),
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
کوردی: بابەت، کەیس، نموونە، وێنە، میناک، کەیس یان بابەتی نەخۆشی، ئینستەنسی نەخۆشی، ئەنگاوتە، بەرکەوت، نەخۆش، ناساز، کردە، کار، چۆنیەتی، پرس، کێشە، دۆز، پرسگرێک، بابەت، مژار، دۆخ، بار، بارودۆخ، ڕەوش، کاودان، داواکاری، بەڵگەکان، بەڵگە، شایەت، بەڵگەھێنانەوە، ڕاستی، بوویەر، مەتەڵ، ڕاز، (ڕێزمان) دۆخ، کەس، پیاو، مرۆ، قوتو، سنووق، یەغدان، سیپ، مجری، جانتا، توورەکە، جزدان، جامەدان، بەرگ، کیف، ڕووپۆش، توێکڵ، توێخ، قاوغ، قاپووڕ، چوارچێوە (درگا و پەنجەرە)
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) دۆخێکی تایبەت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "In some cases people have had to wait several weeks for an appointment."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە زۆر حاڵەتدا خەڵکی پێویست بووە ژمارەیەک ھەفتە چاوەڕێ بن بۆ چاوپێکەوتنێک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // Define the word "case", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases1("en-US"),
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
                                            "In most cases the increases have been marginal."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە زۆر حاڵەتدا زیادبوونەکان کەمێک بوونە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases2("en-US"),
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
                                                    "What should be done in such cases?"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "چی دەبێت بکردرێت لە دۆخێکی وەھادا؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcases3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcases3("en-US"),
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
                                                    "The company only dismisses its employees in cases of gross misconduct."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کۆمپانیاکە کارمەندانی دەردەکات تەنھا لە دۆخی ھەڵەی زەقدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcases4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcases4("en-US"),
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
                                                    "In the case of banks, the law can limit activities."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لە حاڵەتی بانکەکاندا، یاسا دەکرێت چالاکییەکان سنووردار بکات."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcases5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcases5("en-US"),
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
                          const DefinitionKurdish(text: "٢. (ناو) دۆخی ڕاستی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "If that is the case (= if the situation described is true), we need more staff."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەگەر ئەوە ڕاستییەکەیە، دەبێت ستافی زیاتر بگرین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases6("en-US"),
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
                                            "It is simply not the case that prison conditions are improving."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە سادەیی، ڕاستییەکە ئەوەیە دۆخی زانیدانەکان باشتر نابن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) دۆخێک کە تایبەتە بە کەسێک یان شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I cannot make an exception in your case (= for you and not for others)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناتوانم جیاکاری بکەم بۆ دۆخەکەی تۆ (وەک ئەوانی تر سەیرت دەکەم)."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases8("en-US"),
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
                                            "In your case, we are prepared to be lenient."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بۆ دۆخەکەی تۆ ئامادەین لێبووردە بین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases9("en-US"),
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
                                                    "Don't underestimate the power of the pen, or in this case, the power of the keyboard."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھێزی پێنووس بە کەم مەبینە، یان لەم دۆخەدا، ھێزی تەختەکلیل."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcases10("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcases10("en-US"),
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
                                  "٤. (ناو) بابەتێک کە لە ژێر لێکۆڵینەوەدایە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They never solved the Jones murder case."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەرگیز کەیسی کوشتنی جۆنیان چارەسەرنەکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases11("en-US"),
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
                                            "Four officers are investigating the case."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چوار ئەفسەر لێکۆڵینەوە لە کەیسەکە دەکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) بابەتێک کە لە دادگایە و بڕیاری لەسەر دەدرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The case will be heard next week."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەیسەکە ھەفتەی داھاتوو دانیشتنی بۆ دەکرێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases13("en-US"),
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
                                            "The Supreme Court heard the case yesterday."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دادگای باڵا (ئەمریکا) دوێنێ گوێی لە کەیسەکە گرت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) کۆمەڵێک لە ڕاستی، بۆچوون، ھتد کە لایەنگیری لایەکن لە دادگاییەک، گفتوگۆیەک، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Our lawyer didn't think we had a case (= had enough good arguments to win in a court of law)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پارێزەرەکەمان ھەستی نەکرد کەوا دۆزێکمان ھەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases15("en-US"),
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
                                            "The case against her was very weak."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەو دۆزەی دژی بوو زۆر لاواز بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases16("en-US"),
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
                                                    "He successfully argued the case for accepting the agreement."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "سەرکەوتووانە پشتگیری دۆزی پەسەندکردنی ڕێککەوتنەکەی کرد."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcases17("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcases17("en-US"),
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
                                                    "They try to make the case that this war is necessary."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەوڵ دەدەن ئەو پرسە درووست بکەن کە جەنگەکە پێویستە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcases18("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcases18("en-US"),
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
                                  "٧. (ناو) شتێک کە شتی تێدا ھەڵدەگریت بۆ پاراستنی یان ھەڵگرتنی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The museum was full of stuffed animals in glass cases."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مۆزەخانەکە پڕ بوو لە ئاژەڵی منداڵان لەناو پارێزەری شووشەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases19("en-US"),
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
                                            "He put the binoculars back in their carrying case."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دووربینەکەی خستە بەرگە ھەڵگرەکەی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ناو) جانتای سەفەرکردن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Let me carry your case for you."),
                                    ExampleSentenceKurdish(
                                        text: "با جانتایەکەت بۆ ھەڵبگرم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases21("en-US"),
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
                                            "They put their cases in the boot and drove off."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جانتاکانیان خستە سندووقی ئۆتۆمبێلەکە و ڕۆشتن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ناو) حاڵەتی نەخۆشی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Over 130 000 cases of cholera were reported in 2016."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەروو ١٣٠٠٠٠ حاڵەتی کۆلێرا لە ساڵی ٢٠١٦ تۆمارکران."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases23("en-US"),
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
                                            "The most serious cases were treated at the scene of the accident."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خراپترین حاڵەتەکان لە شوێنی ڕووداوەکە چارەسەرکران."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases24("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) کەسێک کە باوەڕوایە چارەسەری تایبەتی بووێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "He's a hopeless case."),
                                    ExampleSentenceKurdish(
                                        text: "کەسێکی بێ‌ھیوایە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (ناو) شێوەی ناوێک، ھاوەڵناوێک، یان جێناوێک کە پەیوەندیی لەگەڵ وشەیەکی دیکە پیشان دەدات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Latin nouns have case, number and gender."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناوە لاتینییەکان دۆخ و ژمارە و ڕەگەزیان ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcases26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcases26("en-US"),
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
- Noun: case (derived forms: cases)
1. An occurrence of something (= instance, example)
"it was a case of bad judgment";
 
2. A special set of circumstances (= event)
"it may rain in which case the picnic will be cancelled";
 
3. (law) a comprehensive term for any proceeding in a court of law whereby an individual seeks a legal remedy (= lawsuit, suit, cause, causa)
 
4. The actual state of things
"that was not the case"
 
5. A portable container for carrying several objects
"the musicians left their instrument cases backstage"
 
6. A person requiring professional services
"a typical case was the suburban housewife described by a marriage counsellor"
 
7. A person who is subjected to experimental or other observational procedures; someone who is an object of investigation (= subject, guinea pig)
"the cases that we studied were drawn from two different communities";
 
8. A problem requiring investigation
"Perry Mason solved the case of the missing heir"
 
9. A statement of facts and reasons used to support an argument
"he stated his case clearly"
 
10. The quantity contained in a case (= caseful)
 
11. Nouns, pronouns or adjectives (often marked by inflection) related in some way to other words in a sentence (= grammatical case)
 
12. A specific state of mind that is temporary
"a case of the jitters"
 
13. A person of a specified kind (usually with many eccentricities) (= character, eccentric, type)
"a mental case";
 
14. A specific size and style of type within a type family (= font, fount [Brit], typeface, face)
 
15. An enveloping structure or covering enclosing an animal or plant organ or part (= sheath)
 
16. The housing or outer covering of something (= shell, casing)
"the clock has a walnut case";

17. The enclosing frame around a door or window opening (= casing)
"the cases had rotted away and had to be replaced";

18. (printing) the receptacle in which a compositor has his type, which is divided into compartments for the different letters, spaces, or numbers (= compositor's case, typesetter's case)
"for English, a compositor will ordinarily have two such cases, the upper case containing the capitals and the lower case containing the small letters";
 
19. Bed linen consisting of a cover for a pillow (= pillowcase, slip, pillow slip)
"the burglar carried his loot in a case";

20. A glass container used to store and display items in a shop, museum or home (= display case, showcase, vitrine)

- Verb: case (derived forms: cases, casing, cased)
1. Look over, usually with the intention to rob
"The men cased the housed"
 
2. Enclose in, or as if in, a case (= encase, incase)
"my feet were cased in mud";
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
    videoId: 'fi2jQMTU9b4',
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
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'hFZFjoX2cGg',
    startSeconds: 703,
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
    videoId: 'tXjHb5QmDV0',
    startSeconds: 542,
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
    videoId: 'nQ-Ua6NYago',
    startSeconds: 55,
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
    videoId: 'QtrRtGC3G_I',
    startSeconds: 123,
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
    videoId: '7DKXMRMYDO4',
    startSeconds: 5,
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
    videoId: '5tEc122j7LE',
    startSeconds: 196,
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
    videoId: 'mmGFrIWU0Cs',
    startSeconds: 265,
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
