import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycommand extends StatelessWidget {
  // blank divider
  EnglishEntrycommand({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcommand(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("command"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands1(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Begin when I give the command."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands2(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You must obey the captain's commands."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands3(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He issued the command to retreat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands4(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Police said he ignored their commands to stop."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands5(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has been teaching her dog simple commands."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands6(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "What is the startup command for the program?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands7(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He has 1 200 men under his command."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands8(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The police arrived and took command of the situation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands9(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In 1939 he assumed command of all French naval forces."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands10(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Who is in command here?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands11(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "For the first time in years, she felt in command of her life."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands12(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She has lost command of her senses."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands13(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has an excellent command of French."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands14(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Applicants will be expected to have (a) good command of English."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands15(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He commanded his men to retreat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands16(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She commanded the release of the prisoners."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands17(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The commission intervened and commanded that work on the building cease."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands18(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In March 1942 he was appointed to command US naval forces in Europe."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands19(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was the officer commanding the troops in the Western region."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands20(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was able to command the respect of the class."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands21(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The headlines commanded her attention."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands22(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The hotel commands a fine view of the valley."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands23(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The party was no longer able to command a majority in Parliament."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands24(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands25(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands26(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands27(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands28(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands29(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands30(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands31(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands32(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands33(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands34(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands35(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands36(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands37(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands38(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands39(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands40(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands41(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands42(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands43(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands44(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands45(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands46(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands47(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands48(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands49(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands50(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands51(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommands52(String languageCode) async {
    // DOPSUM: CHANGE speakcommand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommands5200"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "command"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈmɑːnd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcommand("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈmænd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcommand("en-US"),
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
کوردی: دەستوور، فەرمان، فەروار،	(کۆمپیوتەر) دەستوور، فەرمان،	فەرمانداری، فەرماندەری، سەرکردایەتی،	کەرت، یەکینە، یەکە،	کاربەدەستان، فەرماندەران، سەرکردەکان،	دەسەڵات، سەردەستی، باڵادەستی، زاڵی، سواری، کۆنتڕۆڵ، چاودێری، ھێزپێ‌شکان
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) فەرمانک کە بە کەسێک یان ئاژەڵێک دەکرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Begin when I give the command."),
                                    ExampleSentenceKurdish(
                                        text: "کە فەرمان دەکەم دەستپێ بکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "command", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands1("en-US"),
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
                                            "You must obey the captain's commands."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەبێت پابەندی فەرمانی کاپتن بیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands2("en-US"),
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
                                            "He issued the command to retreat."),
                                    ExampleSentenceKurdish(
                                        text: "فەرمانی کشانەوەی دا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands3("en-US"),
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
                                                    "Police said he ignored their commands to stop."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پۆلیس گوتی فەرمانەکانیانی بۆ وەستان پشتگوێ خست."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommands4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommands4("en-US"),
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
                                                    "She has been teaching her dog simple commands."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "جەریکە فەرمانی سادە فێری سەگەکەی دەکات."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommands5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommands5("en-US"),
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
                                  "٢. (ناو) ڕێنماییەک کە بە کۆمپیوتەرێک دەدرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "What is the startup command for the program?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێنمایی دەستپێکردن بۆ پڕۆگرامەکە چییە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) کۆنترۆڵ، دەسەڵات، یان فەرمانداری بەسەر دۆخێکدا یان گرووپێک لە خەڵکی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                      text:
                                          "He has 1 200 men under his command.",
                                      note:
                                          "Also: He has command of 1  200 men.",
                                    ),
                                    ExampleSentenceKurdish(
                                        text: "١٢٠٠ کەسی لە ژێر فەرماندایە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands7("en-US"),
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
                                            "The police arrived and took command of the situation."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پۆلیس ھات و کۆنترۆڵی دۆخەکەی گرتە دەست."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands8("en-US"),
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
                                                    "In 1939 he assumed command of all French naval forces."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لە ساڵی ١٩٣٩ سەرکردایەتی ھەموو ھێزی دەریایی فەرەنسای گرتە دەست."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommands9("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommands9("en-US"),
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
                                                    "Who is in command here?"),
                                            ExampleSentenceKurdish(
                                                text: "کێ فەرماندارە لێرە؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommands10("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommands10("en-US"),
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
                                                    "For the first time in years, she felt in command of her life."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بۆ یەکەم جار لە چەندین ساڵدا، ھەستی کرد خاوەنی ژیانی خۆیەتی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommands11("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommands11("en-US"),
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
                                                    "She has lost command of her senses."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دەسەڵاتی داوە بە ھەستەکانی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommands12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommands12("en-US"),
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
                              text: "٤. (ناو) زانیاری لە شتێکدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She has an excellent command of French."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زانیاری باشی زمانی فەرەنسی ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands13("en-US"),
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
                                            "Applicants will be expected to have (a) good command of English."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "داخوازیکاران چاوەڕێی ئەوەیان لێ دەکرێت زانیاری باشی ئینگلیزییان ھەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) فەرمانکردن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He commanded his men to retreat."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فەرمانی بە پیاوەکانی کرد بکشێنەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands15("en-US"),
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
                                            "She commanded the release of the prisoners."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فەرمانی بە ئازادکردنی زیندانییەکان کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands16("en-US"),
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
                                            "The commission intervened and commanded that work on the building cease."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆمسیۆنەکە دەستوەردانی کرد و بڕیاری دا کارکردن لە بیناکەدا بوەستێنرێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) سەرکردایەتی لە سوپا، ھێزی دەریایی، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "In March 1942 he was appointed to command US naval forces in Europe."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ساڵی ١٩٤٢ دیاریکرا بۆ سەرکردایەتی ھێزە دەریاییەکانی ئەمریکا لە ئەورووپا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands18("en-US"),
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
                                            "He was the officer commanding the troops in the Western region."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەو ئەفسەرە بوو کە سەرکردایەتی ھێزەکانی لە ھەرێمی ڕۆژئاوا دەکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) وەرگرتنی شتێک بەھۆی ئەوەی شایەنیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She was able to command the respect of the class."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "توانی ڕێزی پۆلەکە بەدەست بھێنێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands20("en-US"),
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
                                            "The headlines commanded her attention."),
                                    ExampleSentenceKurdish(
                                        text: "سەردێڕەکان سەرنجیان ڕاکێشا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands21("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) بوون لە شوێن و پێگەیەکدا کە لێیەوە شتێک ببینیت یان کۆنترۆڵی بکەیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The hotel commands a fine view of the valley."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھوتێلەکە بەسەر دیمەنێکی جوانی دۆڵەکەدا دەڕوانێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) ھەبوونی کۆنترۆڵی شتێک؛ ھەبوونی شتێک لە بەردەستدا بۆ بەکارھێنان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The party was no longer able to command a majority in Parliament."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پارتەکە چیتر نەیدەتوانی زۆرینەی لە پەرلەماندا ھەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommands23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommands23("en-US"),
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
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
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
- Noun: command (derived forms: commands)
1. An authoritative direction or instruction to do something (= bid, bidding, dictation)
 
2. (military) a military unit or region under the control of a single officer
 
3. The power or authority to command
"an admiral in command"
 
4. Availability for use
"the materials at the command of the potters grew"
 
5. A position of highest authority
"the corporation has just undergone a change in command"
 
6. Great skilfulness and knowledge of some subject or activity (= control, mastery)
"a good command of French";
 
7. (computing) a line of code written as part of a computer program (= instruction, statement, program line)

- Verb: command (derived forms: commanded, commanding, commands)
1. Be in command of
"The general commanded a huge army"
 
2. Make someone do something (= require)
 
3. Demand as one's due
"This speaker commands a high fee"; "The author commands a fair hearing from his readers"
 
4. Look down on (= dominate, overlook, overtop)
"The villa commands the town";
 
5. Exercise authoritative control or power over (= control)
"Command the military forces";
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
    videoId: '7yW6Ybj6tOk',
    startSeconds: 59,
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
    videoId: 'Ml1cfQnxSd0',
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'BnJ013X02b8',
    startSeconds: 50,
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
    videoId: 'XbXawCXKBhY',
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

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'xg_1UjZqMdQ',
    startSeconds: 618,
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
    videoId: 'IvgeLaM1wl4',
    startSeconds: 6,
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
    videoId: 'VrKW58MS12g',
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

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'zqllxbPWKNI',
    startSeconds: 787,
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
    videoId: 'FaNatwnARUQ',
    startSeconds: 30,
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
    videoId: '-L7o6HtX8Vg',
    startSeconds: 699,
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
    videoId: 'FSHITL5oedk',
    startSeconds: 809,
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
    videoId: '3RkhZgRNC1k',
    startSeconds: 32,
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
    videoId: 'aTDG16Mh2_w',
    startSeconds: 107,
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