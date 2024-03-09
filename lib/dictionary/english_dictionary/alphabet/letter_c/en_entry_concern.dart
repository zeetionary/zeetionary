import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryconcern extends StatelessWidget {
// blank divider
  EnglishEntryconcern({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconcern(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("concern"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns1(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Don't interfere in what doesn't concern you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns2(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Please pay attention because this information concerns all of you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns3(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The letter is for both of us, but it mainly concerns you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns4(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The story concerns the prince's efforts to rescue Pamina."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns5(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The book is primarily concerned with Soviet-American relations during the Cold War."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns6(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My question concerns the way he handles the evidence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns7(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It concerns me that you no longer seem to care."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns8(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It really concerns me that he doesn't eat properly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns9(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He didn't concern himself with the details."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns10(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Villagers expressed concern about the level of traffic."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns11(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There is growing concern about violence in the media."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns12(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She hasn't been seen for four days and there is concern for her safety."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns13(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He showed deep concern for his employees."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns14(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She forgot her own worries in her concern for him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns15(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I appreciate everyone's concern and help at this difficult time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns16(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Thanks for your concern and sympathy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns17(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Our main concern is to ensure the safety of the children."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns18(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government's primary concern is to reduce crime."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns19(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This matter is their concern."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns20(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "How much money I make is none of your concern."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns21(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It started slowly, but the company is now a going concern."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns22(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns23(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns24(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns25(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns26(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns27(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns28(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns29(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns30(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns31(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns32(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns33(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns34(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns35(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns36(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns37(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns38(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns39(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns40(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns41(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns42(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns43(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns44(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns45(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns46(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns47(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns48(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns49(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns50(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns51(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns52(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns53(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns54(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcerns55(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns5500"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "concern"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈsɜːn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconcern("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈsɜːrn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconcern("en-US"),
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
کوردی: بابەتی پێخۆش‌بوو، باسی بابەتی (دڵ)، بابەت یان پرسی جێی سەرنج،	هۆگری، دڵبەستەیی،	دەخڵ، پێوەندی، بەر،	سەرنج، ئاگاداری، ئاگالێ‌بوون، چاوبەسەرەوەبوون،	نیگەرانی، دڵەڕاوکێ، دڵ‌لەدوایی، ناڕەحەتی، مایەی نگەرانی،	کار و کاسپی، کار، ئەرک، پەیور،	بەرپرسایەتی،	کۆمپانیا، نێوکۆیی،	دامەزراوە کارداری یان پیشەسازی،	بەش، پشک
"""),
                          const DefinitionKurdish(
                              text: "١. (کردار) کاریگەری کردن لە کەسێک/شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Don't interfere in what doesn't concern you."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خۆت مەگلێنە لە شتێک کە پەیوەندی پێوەت نییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "concern", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns1("en-US"),
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
                                            "Please pay attention because this information concerns all of you."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تکایە سەرنج بدەن چونکە ئەم زانیارییە پەیوەندی بە هەموانەوە هەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns2("en-US"),
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
                                            "The letter is for both of us, but it mainly concerns you."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نامەکە بۆ هەردووکمانە، بەڵام زیاتر پەیوەندی بە تۆوە هەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) دەربارەی شتێک بوون"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The story concerns the prince's efforts to rescue Pamina."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چیرۆکەکە دەربارەی هەوڵەکانی شازادەیە بۆ ڕزگارکردنی پامینا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns4("en-US"),
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
                                            "The book is primarily concerned with Soviet-American relations during the Cold War."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کتێبەکە بە شێوەیەکی سەرەکی دەربارەی پەیوەندییەکانی ئەمریکا و سۆڤیەتە لە ماوەی جەنگی سارددا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns5("en-US"),
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
                                            "My question concerns the way he handles the evidence."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پرسیارەکەم دەربارەی شێوازی مامەڵەیەتی لەگەڵ بەڵگەکەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) نیگەرانکردنی کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It concerns me that you no longer seem to care."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەوە نیگەران دەکات کە وا دەردەکەویت کە چی دیکە گرنگی نادەیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns7("en-US"),
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
                                            "It really concerns me that he doesn't eat properly."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەوە نیگەرانم دەکات کە بە درووستی نان ناخوات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) حەزکردن لە شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He didn't concern himself with the details."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خۆی لە وردەکارییەکان تێوە نەگلاند."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) نیگەرانی، بەتایبەتی وەک هەستێکی گشتگیر"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Villagers expressed concern about the level of traffic."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گوندنشینەکان نیگەرانییان دەربڕی سەبارەت بە ئاستی هاتووچۆ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns10("en-US"),
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
                                            "There is growing concern about violence in the media."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نیگەرانی گەشەسەندوو هەیە لەسەر توندوتیژی کە میدیادا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns11("en-US"),
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
                                            "She hasn't been seen for four days and there is concern for her safety."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بۆ چوار ڕۆژ دەبێت نەبینراوە و نیگەرانی هەیە بۆ سەلامەتیی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ئارەزووی پاراستن و یارمەتیدانی کەسێک/شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He showed deep concern for his employees."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دڵەڕاوکێی زۆری بۆ کارمەندانی دەردەبڕی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns13("en-US"),
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
                                            "She forgot her own worries in her concern for him."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نیگەرانییەکانی خۆی بیرچوو لە دڵەڕاوکێیدا بۆ ئەو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns14("en-US"),
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
                                            "I appreciate everyone's concern and help at this difficult time."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دڵەڕاوکێ و یارمەتی هەموان بەرزدەنرخێنم لەم کاتە سەختەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns15("en-US"),
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
                                            "Thanks for your concern and sympathy."),
                                    ExampleSentenceKurdish(
                                        text: "سوپاس بۆ خەمخۆری و هاوسۆزیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) شتێک کە گرنگە بۆ کەسێک، دامەزراوەیەک، هتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Our main concern is to ensure the safety of the children."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەرپرسیاریەتی سەرەکیمان سەلامەتی منداڵەکانە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns17("en-US"),
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
                                            "The government's primary concern is to reduce crime."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئامانجی سەرەکی حکومەت کەمکردنەوەی تاوانە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) شتێک کە بەرپرسیاریەتیتە، یان مافت هەیە بیزانیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "This matter is their concern."),
                                    ExampleSentenceKurdish(
                                        text: "ئەم بابەتە بەرپرسیاریەتییانە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns19("en-US"),
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
                                            "How much money I make is none of your concern."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چەندە پارە قازانج دەکەم هیچ پەیوەندی پێتەوە نییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ناو) کۆمپانیایەک یان بازرگانییەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It started slowly, but the company is now a going concern (= doing business effectively)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە هێواشی دەستیپێکرد، بەڵام کۆمپانیاکە لە ئێستادا بازرگانییەکی تۆکمەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcerns21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcerns21("en-US"),
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
- Verb: concern (Derived forms: concerned, concerns, concerning)
1. Be relevant to (= refer, pertain, relate, come to, bear on, touch, touch on, have to do with)
 
2. Be on the mind of (= interest, occupy, worry)

- Noun: concern (Derived forms: concerns)
1. Something that interests you because it is important or affects you
"the safety of the ship is the captain's concern"
 
2. An anxious feeling (= care, fear)
 
3. A feeling of sympathy for someone or something
"She felt strong concern for those less fortunate"
 
4. Something or someone that causes anxiety; a source of unhappiness (= worry, headache, vexation)
"New York traffic is a constant concern";
 
5. A commercial or industrial enterprise and the people who constitute it (= business, business concern, business organization, business organisation [Brit])
"a racially integrated business concern";
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
    videoId: 'https://youtu.be/hFZFjoX2cGg?t=',
    startSeconds: 462,
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
    videoId: 'https://youtu.be/a_TSR_v07m0?t=',
    startSeconds: 278,
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
    videoId: 'https://youtu.be/DTvS9lvRxZ8?t=',
    startSeconds: 300,
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
    videoId: 'https://youtu.be/BxWw8AO4ZmI?t=',
    startSeconds: 42,
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
    videoId: 'https://youtu.be/AAGIi62-sAU?t=',
    startSeconds: 1594,
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
    videoId: 'https://youtu.be/QLq6GEiHqR8?t=',
    startSeconds: 1512,
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
    videoId: 'https://youtu.be/9TugA_z5vQE?t=',
    startSeconds: 890,
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