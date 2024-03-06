import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycommit extends StatelessWidget {
// blank divider
  EnglishEntrycommit({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcommit(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("commit"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits1(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Most crimes are committed by young men."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits2(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The men are being held on suspicion of conspiracy to commit armed robbery."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits3(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He denied conspiring to commit robberies in April last year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits4(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was punished for a murder he did not commit."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits5(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Was she capable of committing a crime?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits6(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her father had committed suicide."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits7(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They want to see the text of the proposed treaty before fully committing themselves."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits8(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Borrowers should think carefully before committing themselves to taking out a loan."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits9(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Both sides committed themselves to settle the dispute peacefully."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits10(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You don't have to commit yourself now—just think about it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits11(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He had never committed himself to any ideology."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits12(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Why are so many men scared to commit?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits13(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The council has committed large amounts of money to housing projects."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits14(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The University committed substantial funds to assisting mature students."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits15(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was committed to a psychiatric hospital."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits16(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The attackers were committed for trial at Bristol Crown Court."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits17(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She committed the instructions to memory."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits18(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Perhaps we should commit these ideas to paper before we forget them."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits19(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits20(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits21(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits22(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits23(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits24(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits25(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits26(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits27(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits28(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits29(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits30(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits31(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits32(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits33(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits34(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits35(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits36(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits37(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits38(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits39(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits40(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits41(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits42(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits43(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits44(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits45(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommits46(String languageCode) async {
    // DOPSUM: CHANGE speakcommit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommits4600"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "commit"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈmɪt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcommit("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈmɪt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcommit("en-US"),
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
کوردی: پێسپاردن، تووش بوون، گیرۆدە بوون، بەرپرس بوون، ئەنجامدان، بەجێهێنان
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) ئەنجامدانی شتێکی هەڵە یان نایاسایی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Most crimes are committed by young men."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆرینەی تاوانەکان لەلایەن پیاوانی گەنجەوە دەکرێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "commit", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits1("en-US"),
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
                                            "The men are being held on suspicion of conspiracy to commit armed robbery."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پیاوەکان ڕاگیراون بە گومانی پلان بۆ ئەنجامدانی تاڵانکاری."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits2("en-US"),
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
                                                    "He denied conspiring to commit robberies in April last year."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "نکۆڵی لە پلاندانان بۆ ئەنجامدانی تاڵانکاری لە نیسانی ساڵی پار کردبێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommits3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommits3("en-US"),
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
                                                    "He was punished for a murder he did not commit."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "سزادرا بۆ کوشتنێک کە ئەنجامی نەدابوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommits4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommits4("en-US"),
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
                                                    "Was she capable of committing a crime?"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "توانای ئەنجامدانی تاوانی هەبوو؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommits5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommits5("en-US"),
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
                              text: "٦. (کردار) خۆکوشتن بە ئەنقەست"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Her father had committed suicide."),
                                    ExampleSentenceKurdish(
                                        text: "باوکی خۆی کوشت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) بەڵێندانی تەواو کە شتێک دەکەیت، پابەندی بەڵێنێک دەبیت، هتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They want to see the text of the proposed treaty before fully committing themselves."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەیانەوێت نووسراوی پەیماننامەکە ببینن پێش ئەوەی بە تەواوی خۆیان پابەند بکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits7("en-US"),
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
                                            "Borrowers should think carefully before committing themselves to taking out a loan."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "قەرزوەرگران دەبێت بە وریاییەوە بیربکەنەوە پێش خۆپابەندکردنیان بە وەرگرتنی قەرزێک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits8("en-US"),
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
                                            "Both sides committed themselves to settle the dispute peacefully."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەردوو لایەن خۆیان پابەند دەکەن بە چارەسەری کێشەکە بە ئاشتییانە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) دەربڕینی بۆچوونێک دەرکردنی بڕیارێک بەشێوەیەک کە دواتر سەختە بیگۆڕیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "You don't have to commit yourself now—just think about it."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێویست ناکات ئێستا خۆت یەکلایی بکەیتەوە، تەنها بیری لێبکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits10("en-US"),
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
                                            "He had never committed himself to any ideology."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەرگیز خۆی پابەند بە هیچ ئایدۆلۆژیایەک نەکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) مانەوە لەگەڵ و بە تەواوی پشتگیری یەک کەس، دامەزراوە، هتد، یان پێدانی هەموو کات و توانا بە کارێک، چالاکییەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Why are so many men scared to commit? (= say they will stay with one person)"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بۆچی زۆر پیاو لە پابەندبوون دەترسن؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) خەرجکردنی کات یان پارە لە کەسێک/شتێکدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The council has committed large amounts of money to housing projects."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەنجوومەنەکە پارەی زۆری بۆ پڕۆژەی خانووبەرە تەرخان کردووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits13("en-US"),
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
                                            "The University committed substantial funds to assisting mature students."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زانکۆکە پارەی زۆری تەرخان کردووە بۆ یارمەتی خوێندکارە پێگەشتووەکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) فەرمانکردن بە کەسێک کە بنێردرێت بۆ نەخۆشخانە زیندان، هتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She was committed to a psychiatric hospital."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نێردرا بۆ نەخۆشخانەیەکی دەروونی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) ناردنی کەسێک بۆ دانیشطنی دادگا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The attackers were committed for trial at Bristol Crown Court."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هێرشکارەکان نێردران بۆ دانیشتنی دادگا لە دادگای شاهانەی بریستۆڵ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٧. (کردار) فێربوونی شتێک هێندە باش کە وەک خۆی بیرت بێتەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She committed the instructions to memory."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێنماییەکانی بە بیروهۆشەوە لەبەرکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٠. (کردار) نووسینی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Perhaps we should commit these ideas to paper before we forget them."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "باشترە ئەم بیرۆکانە بنووسینەوە پێش ئەوەی لەبیریان بکەین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommits18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommits18("en-US"),
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
- Verb: commit (Derived forms: committing, commits, committed)
1. Perform an act, usually with a negative connotation (= perpetrate, pull [informal])
"commit a crime";
 
2. Use entirely for a specific person, activity, or cause (= give, dedicate, consecrate, devote)
"She committed herself to the work of God";
 
3. Make a set of changes permanent
"We committed the changes to the Git repository"
 
4. Cause to be admitted; of persons to an institution (= institutionalize, institutionalise [Brit], send, charge)
"After the second episode, she had to be committed"; "he was committed to prison";
 
5. Confer a trust upon (= entrust, intrust [archaic], trust, confide)
"I commit my soul to God";
 
6. Make an investment (= invest, put, place)
"commit money into bonds";
 
7. Engage in or perform (= practice [N. Amer], practise [Brit, Cdn])
"commit a random act of kindness";
 
8. Transfer to another place so something can be kept or preserved
"He committed the poem to memory"; "she committed her thoughts to paper"
 
9. (computer science) make permanent changes to a database
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
    videoId: 'https://youtu.be/BeGDwWSYlHo?t=',
    startSeconds: 247,
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
    videoId: 'https://youtu.be/xfVJZS7LuJ4?t=',
    startSeconds: 157,
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
    videoId: 'https://youtu.be/xXMvtT2gwog?t=',
    startSeconds: 926,
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
    videoId: 'https://youtu.be/VimfLF9V0MY?t=',
    startSeconds: 259,
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
    videoId: 'https://youtu.be/h26QXErwAtc?t=',
    startSeconds: 14,
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
    videoId: 'https://youtu.be/ykbhn_PKge4?t=',
    startSeconds: 3333,
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
    videoId: 'https://youtu.be/ewLpXw6uN28?t=',
    startSeconds: 694,
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
    videoId: 'https://youtu.be/9TugA_z5vQE?t=',
    startSeconds: 1231,
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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/bHIhgxav9LY?t=',
    startSeconds: 45,
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

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/N4kvtt2T_6Y?t=',
    startSeconds: 110,
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

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/-cPdImejxEQ?t=',
    startSeconds: 97,
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/wir7jmefyec?t=',
    startSeconds: 312,
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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/_45zjnjrFOA?t=',
    startSeconds: 291,
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