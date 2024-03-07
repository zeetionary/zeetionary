import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycollect extends StatelessWidget {
  // blank divider
  EnglishEntrycollect({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcollect(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("collect"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects1(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The purpose of his trip was to collect material for a book."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects2(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Samples were collected from over 200 patients."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects3(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We've been collecting data from various sources."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects4(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He began collecting antiquities in 1785."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects5(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He started to collect art seriously soon after the turn of the century."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects6(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In spite of their efforts a large pool of liquid continued to collect."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects7(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Dirt had collected in the corners of the room."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects8(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It’s amazing how she collects friends."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects9(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The package is waiting to be collected."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects10(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "What day do they collect the rubbish/garbage?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects11(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Someone will be at the airport to collect you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects12(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's gone to collect her son from school."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects13(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We're collecting for local charities."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects14(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Volunteers have been going door to door, collecting money."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects15(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She collected £25 000 in compensation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects16(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A crowd began to collect in front of the embassy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects17(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects18(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects19(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects20(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects21(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects22(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects23(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects24(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects25(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects26(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects27(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects28(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects29(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects30(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects31(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects32(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects33(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects34(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects35(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects36(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects37(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects38(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects39(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects40(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects41(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects42(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects43(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects44(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects45(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects46(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects47(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects48(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects49(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects50(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects51(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollects52(String languageCode) async {
    // DOPSUM: CHANGE speakcollect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollects5200"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "collect"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈlekt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcollect("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈlekt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcollect("en-US"),
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
کوردی: دۆعا، نزا، کورتەنوێژ، کۆکردنەوە، خڕ کردنەوە، کۆبوونەوە، خڕبوونەوە، گردبوونەوە
"""),
                          const DefinitionKurdish(text: "١. (کردار) کۆکردنەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The purpose of his trip was to collect material for a book."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئامانجی گەشتەکەی کۆکردنەوەی زانیاری بوو بۆ کتێبێک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "collect", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollects1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollects1("en-US"),
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
                                            "Samples were collected from over 200 patients."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نموونە لە ٢٠٠ نەخۆشەوە کۆکرایەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollects2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollects2("en-US"),
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
                                            "We've been collecting data from various sources."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە سەرچاوەی جیاوازەوە زانیاریمان کۆکردووەتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollects3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollects3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) کۆکردنەوە شت وەک خولیا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He began collecting antiquities in 1785."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ساڵی ١٧٨٥ دەستیکرد بە کۆکردنەوەی ئەنتیک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollects4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollects4("en-US"),
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
                                            "He started to collect art seriously soon after the turn of the century."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە دوای سەرەتای سەدەکەوە دەستی بە کۆکردنەوەی کاری هونەری کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollects5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollects5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) زیادبوونی لە بڕدا لە شوێنێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "In spite of their efforts a large pool of liquid continued to collect."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەرەڕای هەوڵەکانیان ڕێژەیەکی زۆر لە شلە بەردەوام بوو لە کۆبوونەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollects6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollects6("en-US"),
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
                                            "Dirt had collected in the corners of the room."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "قوڕ لە سووچی ژوورەکە کۆبوویەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollects7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollects7("en-US"),
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
                                            "It’s amazing how she collects friends."),
                                    ExampleSentenceKurdish(
                                        text: "دۆزینەوەی هاوڕێی سەرسوڕهێنەرە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollects8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollects8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) چوونە شوێنێک بۆ بردنی شتێک/کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The package is waiting to be collected."),
                                    ExampleSentenceKurdish(
                                        text: "پاکێجەکە ئامادەیە بۆ بردنەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollects9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollects9("en-US"),
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
                                            "What day do they collect the rubbish/garbage?"),
                                    ExampleSentenceKurdish(
                                        text: "چی ڕۆژێک زباڵە کۆدەکەنەوە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollects10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollects10("en-US"),
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
                                                    "She's gone to collect her son from school."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ڕۆشتووە بۆ هێنانەوەی منداڵەکەی لە قوتابخانە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcollects12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcollects12("en-US"),
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
                                                    "Someone will be at the airport to collect you."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کەسێک لە فڕۆکەخانە هەڵتدەگرێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcollects11("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcollects11("en-US"),
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
                                  "٥. (کردار) داواکردنی پارە لە خەڵکی بۆ مەبەستێکی دیاریکراو، یان بۆ داواکردنەوەی قەرز"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We're collecting for local charities."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پارە بۆ ڕێکخراوە خێرخوازییەکان کۆدەکەینەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollects13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollects13("en-US"),
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
                                            "Volunteers have been going door to door, collecting money."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خۆبەخشان دەرگا بە دەرگا گەڕاون بۆ کۆکردنەوەی پارە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollects14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollects14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) وەرگرتن یان بردنەوەی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She collected £25 000 in compensation."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "٢٥,٠٠٠ پاوەندی وەک قەرەبوو وەرگرت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollects15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollects15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) کۆبوونەوەی خەڵکی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "A crowd began to collect in front of the embassy."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جەماوەرێک دەستیان بە کۆبوونەوە کرد لە پێش باڵیۆزخانەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollects16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollects16("en-US"),
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
- Verb: collect (Derived forms: collects, collecting, collected)
1. Get or gather together (a large number of something) (= roll up, accumulate, pile up, amass, compile, hoard)
"She collected a small fortune";
 
2. Call for and obtain payment of (= take in)
"we collected over a million dollars in outstanding debts"; "he collected the rent";
 
3. Assemble or get together (= gather, garner, pull together)
"collect some stones";
 
4. Get or bring together (= pull in)
 
5. Go to meet, esp. to then take somewhere in a vehicle (= pick up, gather up, call for)
"She collected the children at the day care centre";

- Noun: collect (Derived forms: collects)
1. A short prayer generally preceding the lesson in the Church of Rome or the Church of England

- Adjective: collect  
1. Payable by the recipient on delivery (= COD)
"a collect call"; "the letter came collect";

- Adverb: collect 
1. Make a telephone call or mail a package so that the recipient pays
"call collect"; "send a package collect"
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
    videoId: '8RNxDWJMQR8',
    startSeconds: 289,
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
    videoId: 'DesEUpFgGrQ',
    startSeconds: 269,
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
    videoId: 'rjOx3W5GtXg',
    startSeconds: 38,
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
    videoId: 'ECGMfI7w41o',
    startSeconds: 86,
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
    videoId: 'xXMvtT2gwog',
    startSeconds: 845,
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
    videoId: 'I2MpwzX_FPc',
    startSeconds: 46,
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
    videoId: 'lLBmElR0Luw',
    startSeconds: 264,
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