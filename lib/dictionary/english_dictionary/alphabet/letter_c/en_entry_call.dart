import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycall extends StatelessWidget {
// blank divider
  EnglishEntrycall({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcall(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("call"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls1(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They decided to call the baby Mark."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls2(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His name's Hiroshi but everyone calls him Hiro."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls3(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's their son called?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls4(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I don't know anyone called Scott."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls5(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I got a message to call home immediately."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls6(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll call again later."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls7(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Someone called the police."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls8(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll call a taxi for you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls9(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I wouldn't call German an easy language."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls10(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are you calling me a liar?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls11(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She now calls Southern California home."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls12(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Would you call it blue or green?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls13(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Call yourself a friend? So why won't you help me, then?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls14(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's no right to call herself a feminist."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls15(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She called out to her father for help."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls16(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Someone called to him to wait."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls17(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Did somebody call my name?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls18(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Will you call the kids in for lunch?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls19(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He heard me call him and came to the door."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls20(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Several candidates were called for a second interview."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls21(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The ambassador was called back to London by the prime minister."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls22(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You may be called to give evidence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls23(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The prime minister has called an election for 8 June."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls24(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'll call round and see you on my way home."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls25(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's call on John."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls26(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The cuckoo called across the trees to its mate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls27(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The result of this election is going to be too close to call."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls28(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Most media pundits called it for the Conservatives."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls29(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'll take the call upstairs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls30(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I left a message but he didn't return my call."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls31(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She could hear calls for help from inside the burning building."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls32(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The whale has a very distinctive call."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls33(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls3333"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls34(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The mosque was sounding the call to prayer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls35(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The charity issued a call for donations to assist victims of the earthquake."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls36(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There was no call for you to go upsetting everyone like that."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls37(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There's not much call for fur coats these days."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls38(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is a busy woman with many calls on her time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls39(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The doctor has five calls to make this morning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls40(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm afraid this isn't a social call."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls41(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Seeing the flag waving always feels like the call of my homeland."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls42(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He felt the call to the priesthood early on in his life."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls43(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That's a tough call."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls44(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls4444"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls45(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls4545"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls46(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls4646"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls47(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls4747"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls48(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls4848"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls49(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls4949"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcalls50(String languageCode) async {
    // DOPSUM: CHANGE speakcall
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls5050"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 13, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "call"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kɔːl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcall("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kɔːl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcall("en-US"),
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
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 13
                  VideoIconForTab(), // 07 --- find:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
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
کوردی: بانگ، جاڕ، هەرا، قاو، قیژە، هاوار، دەنگ، گازی، بانگەواز، بانگێشت، بانگەشە، بانگهێشتن، لێ‌گێڕانەوە، پەیام، دەنگ‌وباس، هەواڵ، تەلەفون، قسەکردنی تەلەفونی، پێوەندی تەلەفونی، دیدار، سەرلێدان، سەردان، هاوبینی، بڕیاری یەکتربینین یان سەردان، داوا، داخوازی، خۆستەک، داواکاری، داواکردن، بانگ یان دەنگی ئاسمانی، پێداویستی، (نۆرەی) خوێندنەوە، سەرنج‌ڕاکێشان، ڕاکێشان، بالکێشی، گیرایی

١. (کردار) ناوهێنان، ناونان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "They decided to call the baby Mark."),
                              const ExampleSentenceKurdish(
                                  text: "بڕیاریاندا منداڵەکە ناوبنێن مارک."),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "call", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "His name's Hiroshi but everyone calls him Hiro."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ناوی هیرۆشییە بەڵام هەمووان پێی دەڵێن هیرۆ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls2("en-US"),
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
                                      const ExampleSentenceEnglish(
                                          text: "What's their son called?"),
                                      const ExampleSentenceKurdish(
                                          text: "کوڕەکەیان ناوی چییە؟"),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcalls3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcalls3("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "I don't know anyone called Scott."),
                                      const ExampleSentenceKurdish(
                                          text: "کەس بە ناوی سکۆت ناناسم."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcalls4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcalls4("en-US"),
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
                              text: "٢. (کردار) پەیوەندی کردن بە تەلەفۆن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I got a message to call home immediately."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پەیامێکم پێ‌گەیشت کە بەپەلە پەیوەندی بە ماڵەوە بکەم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I'll call again later."),
                              const ExampleSentenceKurdish(
                                  text: "دواتر پەیوەندی دەکەمەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٣. (کردار) بانگکردن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Someone called the police."),
                              const ExampleSentenceKurdish(
                                  text: "کەسێک بانگی پۆلیسی کرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I'll call a taxi for you."),
                              const ExampleSentenceKurdish(
                                  text: "بانگی تەکسییەک دەکەم بۆت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) ناساندنی کەسێک/شتێک بەشێوەیەکی دیاریکراو"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I wouldn't call German an easy language."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زمانی ئەڵمانی بە زمانێکی ئاسان ناو نابەم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Are you calling me a liar?"),
                              const ExampleSentenceKurdish(
                                  text: "بە درۆزن ناوم دەبەیت؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls10("en-US"),
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
                                      const ExampleSentenceEnglish(
                                          text:
                                              "She now calls Southern California home (= she lives there)."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "لە ئێستادا لە باشووری کالیفۆرنیا دەژی."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcalls11("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcalls11("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "Would you call it blue or green?"),
                                      const ExampleSentenceKurdish(
                                          text: "بە شین یان سەوز دەیبینیت؟"),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcalls12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcalls12("en-US"),
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
                                  "٥. (کردار) بانگەشەکردنی ئەوەی کە کەسێک جۆرێکی دیاریکراوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Call yourself a friend? So why won't you help me, then?"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خۆت بە هاوڕێ دادەنێیت؟ دەی کەوایە بۆ یارمەتیم نادەیت؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She's no right to call herself a feminist."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هیچ مافێکی نییە خۆت بە فێمێنیست ناو ببات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) هاوارکردن یان وتن بە دەنگی بەرز بۆ ڕاکێشانی سەرنجی کەسێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She called out to her father for help."),
                              const ExampleSentenceKurdish(
                                  text: "هاواری بۆباوکی کرد بۆ یارمەتی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Someone called to him to wait."),
                              const ExampleSentenceKurdish(
                                  text: "کەسێک بانگی کرد بوەستێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls16("en-US"),
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
                                      const ExampleSentenceEnglish(
                                          text: "Did somebody call my name?"),
                                      const ExampleSentenceKurdish(
                                          text: "کەسێک بانگی کردم؟"),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcalls17("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcalls17("en-US"),
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
                              text: "٧. (کردار) بانگکردنی کەسێک بۆ ئەوەی بێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Will you call the kids in for lunch?"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بانگی منداڵەکان دەکەیت بۆ نانی نیوەڕۆ؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He heard me call him and came to the door."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "گوێی لە بانگکردنم بوو و هات بۆ لای دەرگاکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) داواکردن لە کەسێک بۆ ئەوەی بێت بۆ شوێنێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Several candidates were called for a second interview."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ژمارەیەک بەربژێر بۆ چاوپێکەوتنی دووەم بانگکرانەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The ambassador was called back to London by the prime minister."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "باڵیۆزەکە بانگکرایەوە لەندەن لەلایەن سەرۆک وەزیرانەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls21("en-US"),
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
                                      const ExampleSentenceEnglish(
                                          text:
                                              "You may be called to give evidence."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ڕەنگە بانگ بکرێیت بۆ پێدانی بەڵگە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcalls22("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcalls22("en-US"),
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
                              text: "٩. (کردار) بڕیاردان لە ڕوودانی شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The prime minister has called an election for 8 June."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سەرۆک وەزیران بڕیاری هەڵبژاردنی داوە لە ٨ی حوزەیران."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls23("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) ئەنجامدانی سەردانێکی کورت بۆ شوێنێک یان لای کەسێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I'll call round and see you on my way home."),
                              const ExampleSentenceKurdish(
                                  text: "دێم و لەسەر ڕێگام دەتبینم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls24("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Let's call on John."),
                              const ExampleSentenceKurdish(
                                  text: "با سەردانی جۆن بکەین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) دەرکردنی دەنگێک لەلایەن ئاژەڵێک یان باڵندەیەکەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The cuckoo called across the trees to its mate."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کوکووەکە بە دارەکاندا بانگی دۆستەکەی کرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls26("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (کردار) پێشبینیکردنی ئەنجامی شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The result of this election is going to be too close to call."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەنجامی ئەم هەڵبژاردنە زۆر نزیک دەبێت تا پێشبینی بکرێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls27("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Most media pundits called it for the Conservatives."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زۆر لە شارەزایانی میدیا بۆ پارتی پارێزگاران پێشبینی کرد (ئەوەی کە پارێزگاران هەڵبژاردنەکە دەبەنەوە)."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls28("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls28("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٣. (ناو) پەیوەندی تەلەفۆنی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I'll take (= answer) the call upstairs."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "وەڵامی تەلەفۆنەکەی (نهۆمی) سەرەوە دەدەمەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls29("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls29("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I left a message but he didn't return my call."),
                              const ExampleSentenceKurdish(
                                  text: "پەیامێکم جێهێشت بەڵام وەڵامی نەبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls30("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls30("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٤. (ناو) هاوار و بانگکردن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She could hear calls for help from inside the burning building."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "گوێ لە هاواری بانگکردن بۆ یارمەتی بوو لەناو بینا گڕگرتووەکەدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls31("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls31("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٥. (ناو) دەنگی بەرزی ئاژەڵ یان باڵندە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The whale has a very distinctive call."),
                              const ExampleSentenceKurdish(
                                  text: "نەهەنگ دەنگێکی زۆر تایبەتمەندی هەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls32("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls32("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٦. (ناو) داوا یان فرمانێک لە کەسێک بۆ کردنی شتێک یان چوونە شوێنێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The government has resisted the calls of the international community."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "حکومەت بەرەنگاری داواکانی کۆمەڵگای نێودەوڵەتی کردووە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls33("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls33("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The mosque was sounding the call to prayer."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "مزگەوتەکە بانگی دەدا بۆ چوون بۆ نوێژ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls34("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls34("en-US"),
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
                                      const ExampleSentenceEnglish(
                                          text:
                                              "The charity issued a call for donations to assist victims of the earthquake."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ڕێکخراوەکە داوای بەخشینی کرد بۆ بەهاناوەچوونی قوربانیانی بومەلەرزەکە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcalls35("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcalls35("en-US"),
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
                              text: "١٧. (ناو) هۆکار یان خواست"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There was no call for you to go upsetting everyone like that."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هیچ هۆکارێک نەبوو بۆت کە بچیت هەمووان بەو شێوەیە بێزار بکەیت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls36("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls36("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There's not much call for fur coats these days."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەم ڕۆژانە هێندە خواست نییە بۆ قەمسەڵەی فەروودار."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls37("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls37("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٨. (ناو) خواست یان فشار کە لەسەر کەسێک/شتێک دادەنرێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She is a busy woman with many calls on her time."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ژنێکی سەرقاڵە و داوای زۆر هەیە بۆ کاتی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls38("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls38("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٩. (ناو) سەردانێکی کورت بۆ ماڵی کەسێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The doctor has five calls to make this morning."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دکتۆرەکە ئەم بەیانییە پێنج سەردانی هەیە بۆ کردن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls39("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls39("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I'm afraid this isn't a social call."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەداخەوەم کە ئەمە سەردانێکی کۆمەڵایەتی نییە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls40("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls40("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٠. (ناو) هەستێکی تایبەتی سەرنجڕاکێشی کە شوێنێک لات هەیەتی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Seeing the flag waving always feels like the call of my homeland."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بینینی شەکانەوەی ئاڵاکە خۆشەویستیی نیشتیمانم بیردێنێتەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls41("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls41("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢١. (ناو) هەستێکی بەهێز بۆ کردنی شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He felt the call to the priesthood early on in his life."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هەستی بە حەزی بوون بە قەشە کرد لە سەرەتای تەمەنیدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls42("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls42("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢٢. (ناو) بڕیارێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "That's a tough call."),
                              const ExampleSentenceKurdish(
                                  text: "بڕیارێکی دژوارە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcalls43("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcalls43("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten(),
                    YoutubeEmbeddedeleven(),
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
- Verb: call (Derived forms: called, calling, calls)
1. Assign a specified (usually proper) name to (= name, know as, be known as, christen)
"They called their son David";

2. Ascribe a quality to or give a name of a common noun that reflects a quality
"He called me a bastard"; "She called her children lazy and ungrateful"
 
3. Get or try to get into communication (with someone) by telephone (= telephone, call up, phone, ring)
"I tried to call you all night"; "Take two aspirin and call me in the morning";
 
4. Utter a sudden loud cry (= shout, shout out, cry, yell, scream, holler [informal], hollo [non-standard], squall)
"she called with pain when the doctor inserted the needle";
 
5. Order, request, or command to come (= send for)
"She was called into the director's office"; "Call the police!";
 
6. Pay a brief visit (= visit, call in)
"The mayor likes to call on some of the prominent citizens";
 
7. Call a meeting; invite or command to meet
"The Wannsee Conference was called to discuss the 'Final Solution'"; "The new dean calls meetings every week"
 
8. Read aloud to check for omissions or absentees
"Call roll"
 
9. (telecommunication) send a message or attempt to reach someone by radio, phone, etc.; make a signal to in order to transmit a message
"Hawaii is calling!"; "A transmitter in Samoa was heard calling"
 
10. Utter a characteristic note or cry
"bluejays called to one another"
 
11. Stop or postpone because of adverse conditions, such as bad weather
"call a football game"
 
12. Greet, as with a prescribed form, title, or name (= address)
"Call me Mister"; "She calls him by first name";

13. Make a stop in a harbour
"The ship will call in Honolulu tomorrow"
 
14. Demand payment of (a loan) (= call in)
"Call a loan"; "call in a loan";
 
15. (card game) make a demand, as for a card or a suit or a show of hands (= bid)
"He called his trump";

16. Give the calls (to the dancers) for a square dance (= call off)
 
17. (sport) indicate a decision in regard to
"call balls and strikes behind the plate"
 
18. Make a prediction about; tell in advance (= predict, foretell, prognosticate, forebode, anticipate, promise)
"Call the outcome of an election";

19. Present for redemption before maturation
"Call a bond"
 
20. Challenge (somebody) to make good on a statement; charge with or censure for an offence
"He deserves to be called on that"
 
21. Declare in the capacity of an umpire or referee
"call a runner out"
 
22. Lure by imitating the characteristic call of an animal
"Call ducks"
 
23. Order, request or give a command for
"The unions called a general strike for Sunday"
 
24. Order, summon, or request for a specific duty or activity, work, role
"He was already called 4 times for jury duty"; "They called him to active military duty"
 
25. Utter in a loud voice or announce
"He called my name"; "The auctioneer called the bids"
 
26. Challenge the sincerity or truthfulness of
"call the speaker on a question of fact"
 
27. Consider or regard as being
"I would not call her beautiful"
 
28. Rouse somebody from sleep with a call
"I was called at 5 A.M. this morning"

- Noun: call (Derived forms: calls)
1. A method of contacting a person by phone (= phone call, telephone call)
"she reported several anonymous calls"; "he placed a phone call to London"; "he heard the phone ringing but didn't want to take the call";
 
2. A loud utterance; often in protest or opposition (= cry, outcry, yell, shout, vociferation)
"the speaker was interrupted by loud calls from the rear of the audience";
 
3. A moral duty or demand (= claim)
 
4. The characteristic sound produced by a bird (= birdcall, birdsong, song)
"a bird will not learn its call unless it hears it at an early age";
 
5. A brief social visit
"senior professors' wives no longer make afternoon calls on newcomers"; "the characters in Henry James' novels are forever paying calls on each other, usually in the parlour of some residence"
 
6. A demand by a broker that a customer deposit enough to bring his margin up to the minimum requirement (= margin call)
 
7. A demand for a show of hands in a card game
"after two raises there was a call"
 
8. A request
"many calls for Christmas stories"; "not many calls for buggywhips"
 
9. An instruction that interrupts the program being executed
"Pascal performs calls by simply giving the name of the routine to be executed"
 
10. A visit in an official or professional capacity
"the pastor's calls on his parishioners"; "the salesman's call on a customer"
 
11. (sport) the decision made by an umpire or referee
"he was ejected for protesting the call"
 
12. The option to buy a given stock (or stock index or commodity future) at a given price before a given date (= call option)

- Noun: Call
1. A special disposition (as if from a divine source) to pursue a particular course
"he was disappointed that he had not heard the Call"
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

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});
  static String myVideoId = "hFZFjoX2cGg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 362, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});
  static String myVideoId = "a_TSR_v07m0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 302, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});
  static String myVideoId = "FHJ3CMWnVxY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 106, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});
  static String myVideoId = "mqqft2x_Aa4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 35, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});
  static String myVideoId = "HDntl7yzzVI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 185, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});
  static String myVideoId = "O3nyadYevuY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 9, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});
  static String myVideoId = "dhgEpr87Yac";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 224, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});
  static String myVideoId = "1G-6jhYa7mw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 171, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});
  static String myVideoId = "d51KcOXd2D4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      // startAt: 2, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});
  static String myVideoId = "jSHzYkV9Kqw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 112, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});
  static String myVideoId = "qaHLd8de6nM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 75, // DOPSUM: CHANGE IT
// endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

// end WORD_WEB