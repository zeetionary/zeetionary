import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrychance extends StatelessWidget {
  // blank divider
  EnglishEntrychance({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchance(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("chance"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances1(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Is there any chance of getting tickets for tonight?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances2(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She only has a slim chance of passing the exam."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances3(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There's a good chance that he'll be back in time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances4(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "What chance is there of anybody being found alive?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances5(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We believe the plan has a good chance for success."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances6(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was the chance she had been waiting for."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances7(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Jeff deceived me once already—I won't give him a second chance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances8(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This is your big chance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances9(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Please give me a chance to explain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances10(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When installing electrical equipment don't take any chances. A mistake could kill."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances11(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The car might break down but that's a chance we'll have to take."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances12(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I met her by chance at the airport."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances13(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Chess is not a game of chance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances14(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was chancing her luck driving without a licence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances15(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You'd be a fool to chance your life savings on a single investment."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances16(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If I do chance to find out where she is, I'll inform you immediately."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances17(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They chanced to be staying at the same hotel."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances18(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A chance encounter with another artist changed her life."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances19(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances20(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances21(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances22(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances23(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances24(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances25(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances26(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances27(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances28(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances29(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances30(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances31(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances32(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances33(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances34(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances35(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances36(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances37(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances38(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances39(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances40(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances41(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances42(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances43(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchances44(String languageCode) async {
    // DOPSUM: CHANGE speakchance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchances4400"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "chance"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃɑːns/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchance("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃæns/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchance("en-US"),
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
کوردی: بەخت، چارە، چانس، شانس، ڕێکەوت، ھەڵکەوت، شیمانە، ئەگەر، ھەل، بوار، پەردێژ، دەرفەت، ئەختان، دەلیڤە،	دووبەختەکی، دووبەختی، ڕیسک، بەختەکی، تووشی، ڕێکەوتی، ھەڵکەوتی، شانسی
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) ئەگەری ڕوودانی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Is there any chance of getting tickets for tonight?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھیچ شانسێکی دەستکەوتنی بلیت ھەیە بۆ ئەمشەو؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "chance", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchances1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchances1("en-US"),
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
                                            "She only has a slim chance of passing the exam."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەنھا کەمێک شانسی دەرچوونی لە تاقیکردنەوەکە ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchances2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchances2("en-US"),
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
                                                    "There's a good chance that he'll be back in time."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەگەرێکی باش ھەیە کە لە کاتی خۆیدا بگەڕێتەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchances3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchances3("en-US"),
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
                                                    "What chance is there of anybody being found alive?"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "چەندە شانس ھەیە کە ھیچ کەسێک بە زیندووی بدۆزرێتەوە؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchances4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchances4("en-US"),
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
                                                    "We believe the plan has a good chance for success."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "باوەڕمان وایە پلانەکە ئەگەری زۆری سەرکەوتنی ھەیە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchances5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchances5("en-US"),
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
                                  "٢. (ناو) کات یان دۆخێکی باش بۆ کردنی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It was the chance she had been waiting for."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەوە ئەو دەرفەتە بوو کە چاوەڕێی بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchances6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchances6("en-US"),
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
                                            "Jeff deceived me once already—I won't give him a second chance."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جێف پێشوەختە جارێک فریوی داوم، ھەلی دووەمی پێ نادەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchances7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchances7("en-US"),
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
                                                    "This is your big chance (= opportunity for success)."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەمە دەرفەتە مەزنەکەتە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchances8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchances8("en-US"),
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
                                                    "Please give me a chance to explain."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تکایە دەرفەتێکم پێبدە بۆ ڕوونکردنەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchances9("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchances9("en-US"),
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
                              text: "٣. (ناو) ئەگەرێکی ناخۆش و خراپ"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "When installing electrical equipment don't take any chances. A mistake could kill."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە کاتی دانانی ئامێری کارەبایی، ھیچ کەمتەرخەمی مەنوێنە. یەک ھەڵە دەکرێت بتکوژێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchances10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchances10("en-US"),
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
                                            "The car might break down but that's a chance we'll have to take."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئۆتۆمبێلەکە لەوانەیە لە کار بکەوێت، بەڵام ئەوە مەترسییەکە دەبێت بیگرینەبەر."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchances11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchances11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) شێوازی ڕوودانی شتێک بەبێ ھیچ ھۆیەک کە بیبینیت یان لێی تێ بگەیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I met her by chance (= without planning to) at the airport."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە ڕێکەوت لە فڕۆکەخانەکە بینیم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchances12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchances12("en-US"),
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
                                        text: "Chess is not a game of chance."),
                                    ExampleSentenceKurdish(
                                        text: "شەترەنج یاری شانس نییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchances13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchances13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) گرتنەبەری مەترسییەک، ئەگەرچی دەزانیت ئەنجامەکەی ڕەنگە سەرکەوتوو نەبێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She was chancing her luck driving without a licence."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەختی خۆی تاقیدەکردەوە بە لێخوڕین بەبێ مۆڵەت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchances14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchances14("en-US"),
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
                                            "You'd be a fool to chance your life savings on a single investment."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گەمژە دەبیت کە پاشەکەوتی ژیانت بخەیتە یەک وەبەرھێنانەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchances15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchances15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) ڕوودان یان کردنی شتێک بە شانس"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "If I do chance to find out where she is, I'll inform you immediately."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەگەر شانسی ئەوەم ھەبوو بزانم لە کوێیە، دەستبەجێ ئاگادارت دەکەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchances16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchances16("en-US"),
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
                                            "They chanced to be staying at the same hotel."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێکەوتی کرد کە لە ھەمان ھوتێل مانەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchances17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchances17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ھاوەڵناو) شتێک کە بە ڕێکەوت ڕوودەدات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "A chance encounter with another artist changed her life."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چاوپێکەوتنی بەڕێکەوتی لەگەڵ ھونەرمەندێکی دیکە ژیانی گۆڕی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchances18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchances18("en-US"),
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
- Noun: chance (derived forms: chances)
1. A possibility due to a favourable combination of circumstances (= opportunity)
"now is your chance";

2. An unknown and unpredictable phenomenon that causes an event to result one way rather than another (= luck, fortune, hazard)
"we ran into each other by pure chance";

3. A risk involving danger
"you take a chance when you let her drive"
 
4. A measure of how likely it is that some event will occur; a number expressing the ratio of favourable cases to the whole number of cases possible (= probability)
"if that phone call is for me, chances are it's my wife";

5. The possibility of future success (= prospect)
"his chances as a writer are excellent";

- Adjective: chance 
1. Occurring, appearing or singled out by chance (= casual)
"a chance occurrence";

- Verb: chance (derived forms: chanced, chances, chancing)
1. Take a risk in the hope of a favourable outcome (= gamble, risk, hazard, take chances, adventure, run a risk, take a chance)
"When you buy these stocks you are chancing";
 
2. Come upon, as if by accident; meet with (= find, happen, bump, encounter)
"She chanced upon an interesting book in the bookstore the other day";
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
    videoId: 'QMFPtCSekxM',
    startSeconds: 338,
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
    videoId: 'XBVMjVXAMYw',
    startSeconds: 37,
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
    videoId: 'EHJDttt9etc',
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
    videoId: 'VrKW58MS12g',
    startSeconds: 960,
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
    videoId: 'Cxqca4RQd_M',
    startSeconds: 602,
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
    videoId: 'HDntl7yzzVI',
    startSeconds: 1456,
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
    videoId: 'zqllxbPWKNI',
    startSeconds: 246,
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
    videoId: '9TugA_z5vQE',
    startSeconds: 1331,
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
