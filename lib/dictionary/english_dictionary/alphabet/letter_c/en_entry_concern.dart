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
    await flutterTts.speak("concern");
  }

  Future<void> speakconcerns1(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't interfere in what doesn't concern you.");
  }

  Future<void> speakconcerns2(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Please pay attention because this information concerns all of you.");
  }

  Future<void> speakconcerns3(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The letter is for both of us, but it mainly concerns you.");
  }

  Future<void> speakconcerns4(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The story concerns the prince's efforts to rescue Pamina.");
  }

  Future<void> speakconcerns5(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The book is primarily concerned with Soviet-American relations during the Cold War.");
  }

  Future<void> speakconcerns6(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My question concerns the way he handles the evidence.");
  }

  Future<void> speakconcerns7(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It concerns me that you no longer seem to care.");
  }

  Future<void> speakconcerns8(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It really concerns me that he doesn't eat properly.");
  }

  Future<void> speakconcerns9(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He didn't concern himself with the details.");
  }

  Future<void> speakconcerns10(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Villagers expressed concern about the level of traffic.");
  }

  Future<void> speakconcerns11(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There is growing concern about violence in the media.");
  }

  Future<void> speakconcerns12(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She hasn't been seen for four days and there is concern for her safety.");
  }

  Future<void> speakconcerns13(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He showed deep concern for his employees.");
  }

  Future<void> speakconcerns14(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She forgot her own worries in her concern for him.");
  }

  Future<void> speakconcerns15(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I appreciate everyone's concern and help at this difficult time.");
  }

  Future<void> speakconcerns16(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Thanks for your concern and sympathy.");
  }

  Future<void> speakconcerns17(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Our main concern is to ensure the safety of the children.");
  }

  Future<void> speakconcerns18(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The government's primary concern is to reduce crime.");
  }

  Future<void> speakconcerns19(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This matter is their concern.");
  }

  Future<void> speakconcerns20(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How much money I make is none of your concern.");
  }

  Future<void> speakconcerns21(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It started slowly, but the company is now a going concern.");
  }

  Future<void> speakconcerns22(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2200");
  }

  Future<void> speakconcerns23(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2300");
  }

  Future<void> speakconcerns24(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2400");
  }

  Future<void> speakconcerns25(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2500");
  }

  Future<void> speakconcerns26(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2600");
  }

  Future<void> speakconcerns27(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2700");
  }

  Future<void> speakconcerns28(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2800");
  }

  Future<void> speakconcerns29(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns2900");
  }

  Future<void> speakconcerns30(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3000");
  }

  Future<void> speakconcerns31(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3100");
  }

  Future<void> speakconcerns32(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3200");
  }

  Future<void> speakconcerns33(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3300");
  }

  Future<void> speakconcerns34(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3400");
  }

  Future<void> speakconcerns35(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3500");
  }

  Future<void> speakconcerns36(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3600");
  }

  Future<void> speakconcerns37(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3700");
  }

  Future<void> speakconcerns38(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3800");
  }

  Future<void> speakconcerns39(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns3900");
  }

  Future<void> speakconcerns40(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4000");
  }

  Future<void> speakconcerns41(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4100");
  }

  Future<void> speakconcerns42(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4200");
  }

  Future<void> speakconcerns43(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4300");
  }

  Future<void> speakconcerns44(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4400");
  }

  Future<void> speakconcerns45(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4500");
  }

  Future<void> speakconcerns46(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4600");
  }

  Future<void> speakconcerns47(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4700");
  }

  Future<void> speakconcerns48(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4800");
  }

  Future<void> speakconcerns49(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns4900");
  }

  Future<void> speakconcerns50(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns5000");
  }

  Future<void> speakconcerns51(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns5100");
  }

  Future<void> speakconcerns52(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns5200");
  }

  Future<void> speakconcerns53(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns5300");
  }

  Future<void> speakconcerns54(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns5400");
  }

  Future<void> speakconcerns55(String languageCode) async {
    // DOPSUM: CHANGE speakconcern
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcerns5500");
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
کوردی: بابەتی پێخۆش‌بوو، باسی بابەتی (دڵ)، بابەت یان پرسی جێی سەرنج،	ھۆگری، دڵبەستەیی،	دەخڵ، پێوەندی، بەر،	سەرنج، ئاگاداری، ئاگالێ‌بوون، چاوبەسەرەوەبوون،	نیگەرانی، دڵەڕاوکێ، دڵ‌لەدوایی، ناڕەحەتی، مایەی نگەرانی،	کار و کاسپی، کار، ئەرک، پەیور،	بەرپرسایەتی،	کۆمپانیا، نێوکۆیی،	دامەزراوە کارداری یان پیشەسازی،	بەش، پشک
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
                                            "تکایە سەرنج بدەن چونکە ئەم زانیارییە پەیوەندی بە ھەموانەوە ھەیە."),
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
                                            "نامەکە بۆ ھەردووکمانە، بەڵام زیاتر پەیوەندی بە تۆوە ھەیە."),
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
                                            "چیرۆکەکە دەربارەی ھەوڵەکانی شازادەیە بۆ ڕزگارکردنی پامینا."),
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
                                  "٥. (ناو) نیگەرانی، بەتایبەتی وەک ھەستێکی گشتگیر"),
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
                                            "گوندنشینەکان نیگەرانییان دەربڕی سەبارەت بە ئاستی ھاتووچۆ."),
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
                                            "نیگەرانی گەشەسەندوو ھەیە لەسەر توندوتیژی کە میدیادا."),
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
                                            "بۆ چوار ڕۆژ دەبێت نەبینراوە و نیگەرانی ھەیە بۆ سەلامەتیی."),
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
                                            "دڵەڕاوکێ و یارمەتی ھەموان بەرزدەنرخێنم لەم کاتە سەختەدا."),
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
                                        text: "سوپاس بۆ خەمخۆری و ھاوسۆزیت."),
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
                                  "٧. (ناو) شتێک کە گرنگە بۆ کەسێک، دامەزراوەیەک، ھتد"),
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
                                  "٨. (ناو) شتێک کە بەرپرسیاریەتیتە، یان مافت ھەیە بیزانیت"),
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
                                            "چەندە پارە قازانج دەکەم ھیچ پەیوەندی پێتەوە نییە."),
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
                                            "بە ھێواشی دەستیپێکرد، بەڵام کۆمپانیاکە لە ئێستادا بازرگانییەکی تۆکمەیە."),
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
                    const YouTubeScroller(
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
- Verb: concern (derived forms: concerned, concerns, concerning)
1. Be relevant to (= refer, pertain, relate, come to, bear on, touch, touch on, have to do with)
 
2. Be on the mind of (= interest, occupy, worry)

- Noun: concern (derived forms: concerns)
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

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 462;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainerEnd(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatefulWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  State<YoutubeEmbeddedone> createState() => _YoutubeEmbeddedoneState();
}

class _YoutubeEmbeddedoneState extends State<YoutubeEmbeddedone> {
  late YoutubePlayerController _controller;
  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 278;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatefulWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  State<YoutubeEmbeddedtwo> createState() => _YoutubeEmbeddedtwoState();
}

class _YoutubeEmbeddedtwoState extends State<YoutubeEmbeddedtwo> {
  late YoutubePlayerController _controller;
  final String _videoId = 'DTvS9lvRxZ8';
  final double _startSeconds = 300;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatefulWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  State<YoutubeEmbeddedthree> createState() => _YoutubeEmbeddedthreeState();
}

class _YoutubeEmbeddedthreeState extends State<YoutubeEmbeddedthree> {
  late YoutubePlayerController _controller;
  final String _videoId = 'BxWw8AO4ZmI';
  final double _startSeconds = 42;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatefulWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  State<YoutubeEmbeddedfour> createState() => _YoutubeEmbeddedfourState();
}

class _YoutubeEmbeddedfourState extends State<YoutubeEmbeddedfour> {
  late YoutubePlayerController _controller;
  final String _videoId = 'AAGIi62-sAU';
  final double _startSeconds = 1594;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatefulWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  State<YoutubeEmbeddedfive> createState() => _YoutubeEmbeddedfiveState();
}

class _YoutubeEmbeddedfiveState extends State<YoutubeEmbeddedfive> {
  late YoutubePlayerController _controller;
  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 1512;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatefulWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  State<YoutubeEmbeddedsix> createState() => _YoutubeEmbeddedsixState();
}

class _YoutubeEmbeddedsixState extends State<YoutubeEmbeddedsix> {
  late YoutubePlayerController _controller;
  final String _videoId = '9TugA_z5vQE';
  final double _startSeconds = 890;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

// end WORD_WEB