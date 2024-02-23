import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrychoice extends StatelessWidget {
  // blank divider
  EnglishEntrychoice({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchoice(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("choice"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices1(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We are faced with a difficult choice."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices2(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I am sure you have made the right choice."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices3(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There is a wide range of choices open to you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices4(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Doctors have to make moral choices every day of their lives."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices5(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If I had the choice, I would stop working tomorrow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices6(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He had no choice but to leave."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices7(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He had no choice about that."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices8(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Your decision leaves me with no choice but to resign."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices9(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak(" I believe in freedom of choice."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices10(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This colour wasn't my first choice."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices11(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She's the obvious choice for the job."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices12(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Hawaii remains a popular choice for winter vacation travel."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices13(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I don’t like his choice of friends."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices14(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I think she's a very good choice for captain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices15(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Maria defended her choice of name for the child."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices16(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The menu has a good choice of desserts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices17(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I can't decide. There's too much choice."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices18(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Students have a free choice from a range of subjects."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices19(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has a choice between three different universities."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices20(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The curtains come in a choice of twelve different colours."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices21(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I had the the most expensive dish on the menu - a choice fillet of fish."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices22(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She summed up the situation in a few choice phrases."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices23(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices24(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices25(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices26(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices27(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices28(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices29(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices30(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices31(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices32(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices33(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices34(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices35(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices36(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices37(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices38(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices39(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices40(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices41(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices42(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices43(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices44(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices45(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices46(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices47(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices48(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices49(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoices50(String languageCode) async {
    // DOPSUM: CHANGE speakchoice
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoices5000"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "choice"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃɔɪs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchoice("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃɔɪs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchoice("en-US"),
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
کوردی: ھەڵبژاردن، سەرپشک‌بوون،	مافی ھەڵبژاردن،	پەسندکردن، دەس‌لەسەردانان، سەرپشکی،	جۆراوجۆری،	ڕێگاچارە،	ھەڵبژاردە، دەستەبژێر، بەرپەسند، پەسندکراو، سەرتۆپ، یەکجارباش،	ورد
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) ھەڵبژاردن لە نێوان دوو ھەڵبژاردە یان زیاتردا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We are faced with a difficult choice."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕووبەڕووی ھەڵبژاردنی سەخت بووینەتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "choice", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoices1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoices1("en-US"),
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
                                            "I am sure you have made the right choice."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دڵنیام ھەڵبژاردنێکی درووستت ئەنجام‌داوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoices2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoices2("en-US"),
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
                                                    "There is a wide range of choices open to you."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەڵبژاردەی زیاتر لەبەردەستە بۆت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchoices3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchoices3("en-US"),
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
                                                    "Doctors have to make moral choices every day of their lives."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پزیشکان ھەموو ڕۆژێکی ژیانیان دەبێت ھەڵبژاردنی ئەخلاقی ئەنجام بدەن."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchoices4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchoices4("en-US"),
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
                              text: "٢. (ناو) مافی ھەڵبژاردن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "If I had the choice, I would stop working tomorrow."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەگەر بمتوانیایە، سبەی وازم لە کارکردن دەھێنا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoices5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoices5("en-US"),
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
                                            "He had no choice but to leave (= this was the only thing he could do)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھیچ ھەڵبژاردەیەکی نەبوو جگە لە ڕۆشتن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoices6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoices6("en-US"),
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
                                                    "He had no choice about that."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھیچ ھەڵبژاردەیەکی نەبوو سەبارەت بە ئەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchoices7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchoices7("en-US"),
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
                                                    "Your decision leaves me with no choice but to resign."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بڕیارەکەت ھیچ ھەڵبژاردەیەکم بۆ ناھێڵیتەوە جگە لە دەستلەکارکێشانەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchoices8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchoices8("en-US"),
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
                                                    " I believe in freedom of choice."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "باوەڕم بە ئازادی ڕادەربڕین ھەیە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchoices9("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchoices9("en-US"),
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
                              text: "٣. (ناو) کەسێک یان شتێک کە ھەڵبژاردەیەکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This colour wasn't my first choice."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم ڕەنگە یەکەم ھەڵبژاردەم نەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoices10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoices10("en-US"),
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
                                            "She's the obvious choice for the job."),
                                    ExampleSentenceKurdish(
                                        text: "ھەڵبژاردەی ئاشکرایە بۆ کارەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoices11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoices11("en-US"),
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
                                            "Hawaii remains a popular choice for winter vacation travel."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھاوایی ھەڵبژاردەیەکی باوە بۆ گەشتی پشووی زستانە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoices12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoices12("en-US"),
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
                                                    "I don’t like his choice of friends (= the people he chooses as his friends)."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "حەزم بەوە نییە کێ دەکات بە ھاوڕێی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchoices13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchoices13("en-US"),
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
                                                    "I think she's a very good choice for captain."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پێم‌وایە ھەڵبژاردەیەکی باشە بۆ کاپتنی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchoices14("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchoices14("en-US"),
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
                                                    "Maria defended her choice of name for the child."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ماریا بەرگری لە ھەڵبژاردەکەی بۆ ناوی منداڵەکە کرد."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchoices15("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchoices15("en-US"),
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
                              text: "٤. (ناو) ئەو ھەڵبژاردانەی کە بەردەستن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The menu has a good choice of desserts."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مێنووەکە ژمارەیەک ھەڵبژاردەی باشی لێیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoices16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoices16("en-US"),
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
                                            "I can't decide. There's too much choice."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناتوانم بڕیار بدەم. ھەڵبژاردەی زۆر ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoices17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoices17("en-US"),
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
                                                    "Students have a free choice from a range of subjects."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "خوێندکاران ھەڵبژاردەی ئازادیان ھەیە لە ژمارەیەک بابەتدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchoices18("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchoices18("en-US"),
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
                                                    "She has a choice between three different universities."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەڵبژاردەی لە نێوان سێ زانکۆی جیاوازدا ھەبوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchoices19("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchoices19("en-US"),
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
                                                    "The curtains come in a choice of twelve different colours."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پەردەکان ١٥ ڕەنگی جیاوازیان ھەیە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchoices20("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchoices20("en-US"),
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
                                  "٤. (ھاوەڵناو) بە کوالێتی زۆر باش (لە ئەمریکا واتە زۆر باش بەڵام نەک باشترین)"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I had the the most expensive dish on the menu - a choice fillet of fish."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گرانترین خواردنی سەر مێنووەکەم خوارد، پارچەیەک گۆشتی خاوی زۆر باشی خاو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoices21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoices21("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) زمانی توندی قسەکردن کە بە ئەنقەستە بۆ ئەوەی کاریگەری ھەبێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She summed up the situation in a few choice phrases."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دۆخەکەی بە چەند زاراوەیەکی زبر کورتکردەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoices22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoices22("en-US"),
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
- Noun: choice (derived forms: choices)
1. The person or thing chosen or selected (= pick, selection)
"he was my choice for mayor";
 
2. The act of choosing or selecting (= selection, option, pick)
"your choice of colours was unfortunate";
 
3. One of a number of things from which only one can be chosen (= option, alternative)
"my only choice is to refuse";

- Adjective: choice (derived forms: choicer, choicest)
1. Of superior grade (= prime, prize, quality, select)
"choice wines";
 
2. Appealing to refined taste
"choice wine"
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
    videoId: 'jHEPQpSKdbg',
    startSeconds: 15,
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
    videoId: 'U860z3rsmls',
    startSeconds: 23,
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
    videoId: '-rxnEcbyt2g',
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

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'KEU7p8KlSVY',
    startSeconds: 27,
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
    videoId: 'zmEv7vTOQGE',
    startSeconds: 3566,
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
    videoId: 's1SaD-gSZO4',
    startSeconds: 200,
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
    videoId: 'VwPGtn9qJZ4',
    startSeconds: 393,
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
    videoId: 'b0yONlMjxjs',
    startSeconds: 64,
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
