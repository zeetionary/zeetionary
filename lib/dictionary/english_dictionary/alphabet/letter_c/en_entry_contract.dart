import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycontract extends StatelessWidget {
// blank divider
  EnglishEntrycontract({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontract(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("contract"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts1(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All employees have a written contract of employment."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts2(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These clauses form part of the contract between buyer and seller."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts3(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I was on a three-year contract that expired last week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts4(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is under contract to a major American computer firm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts5(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Under the terms of the contract the job should have been finished yesterday."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts6(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She took out a contract on her ex-husband."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts7(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Glass contracts as it cools."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts8(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The universe is expanding rather than contracting."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts9(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The economy will contract by 2 per cent this year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts10(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The heart muscles contract to expel the blood."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts11(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Condoms can help to minimize the risk of contracting HIV."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts12(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He contracted malaria while abroad."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts13(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The player is contracted to play until August."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts14(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He can't work for them because he is contracted with another company."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts15(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has contracted to work 20 hours a week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts16(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts17(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts18(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts19(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts20(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts21(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts22(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts23(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts24(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts25(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts26(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts27(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts28(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts29(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts30(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts31(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts32(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts33(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts34(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts35(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts36(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts37(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts38(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts39(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts40(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts41(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts42(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts43(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts44(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts45(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts46(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts47(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts48(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts49(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts50(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts51(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts52(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts53(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts54(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts55(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts56(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts57(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts58(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts59(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts60(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontracts61(String languageCode) async {
    // DOPSUM: CHANGE speakcontract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontracts6100"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "contract"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒntrækt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontract("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːntrækt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontract("en-US"),
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
کوردی: قەراروبڕێ، گرێبەست، بەڵێن‌نامە، پەیمان، بڕیار، ڕێک‌کەوتن‌نامە
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) ڕێککەوتنێکی فەرمی نووسراو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "All employees have a written contract of employment."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەموو کارمەندان گرێبەستێکی نووسراوی وەرگرتنیان ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "contract", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontracts1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontracts1("en-US"),
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
                                            "These clauses form part of the contract between buyer and seller."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم مادانە بەشێکی ڕێککەوتنی نێوان فرۆشیار و کڕیار پێکدێنن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontracts2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontracts2("en-US"),
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
                                                    "I was on a three-year contract that expired last week."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "گرێدراو بە گرێبەستێکی سێ ساڵە بووم کە ھەفتەی ڕابردوو تەواو بوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontracts3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontracts3("en-US"),
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
                                                    "She is under contract to (= has a contract to work for) a major American computer firm."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "گرێبەستی لەگەڵ کۆمپانیایەکی گەورەی کۆمپیوتەری ئەمریکی ھەیە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontracts4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontracts4("en-US"),
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
                                                    "Under the terms of the contract the job should have been finished yesterday."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بەپێی بەندەکانی ڕێککەوتنەکە کارەکە دەبوو دوێنێ تەواوبایە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontracts5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontracts5("en-US"),
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
                              text: "٢. (ناو) ڕێککەوتنی کوشتنی کەسێک بە پارە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She took out a contract on her ex-husband."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێککەوتنێکی بۆ کوشتنی ھاوسەری پێشووی ئەنجامدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontracts6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontracts6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) کەمبوون یان بچووکبوون"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Glass contracts as it cools."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گڵاس دەچێتەوە یەک کە سارد دەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontracts7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontracts7("en-US"),
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
                                            "The universe is expanding rather than contracting."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گەردوون لە کشاندایە نەک چوونەوە یەک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontracts8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontracts8("en-US"),
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
                                            "The economy will contract by 2 per cent this year."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئابووری بە ڕێژەی ٢٪ دادەتەپێت بۆ ئەمساڵ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontracts9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontracts9("en-US"),
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
                                            "The heart muscles contract to expel the blood."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ماسوولکەکانی دڵ گرژدەبنەوە بۆ دەرکردنی خوێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontracts10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontracts10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) گرتنی نەخۆشی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Condoms can help to minimize the risk of contracting HIV."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆندۆم یارمەتیدەر دەبێت لە کەمکردنەوەی گرتنی ئایدز."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontracts11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontracts11("en-US"),
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
                                            "He contracted malaria while abroad."),
                                    ExampleSentenceKurdish(
                                        text: "لە دەرەوەی وڵات مەلاریای گرت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontracts12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontracts12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ئەنجامدانی گرێبەستی کارکردن لەگەڵ کەسێک بۆ ئەوەی کارت بۆ بکات یان خزمەتگوزارییەکت پێشکەش بکات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The player is contracted to play until August."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "یاریزانەکە گرێبەستی یاریکردنی تاوەکو ئاب ئەنجامداوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontracts13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontracts13("en-US"),
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
                                            "He can't work for them because he is contracted with another company."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناتوانێت کاریان بۆ بکات چونکە گرێبەستی لەگەڵ کۆمپانیایەکی دیکە ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontracts14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontracts14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ئەنجامدانی گرێبەستی کارکردن لەگەڵ کەسێک بۆ ئەوەی کاری بۆ بکەیت یان خزمەتگوزارییەکی پێشکەش بکەیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She has contracted to work 20 hours a week."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێککەوتنی کردووە ٢٠ کاتژمێر لە ھەفتەیەکدا کار بکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontracts15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontracts15("en-US"),
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
- Noun: contract (derived forms: contracts)
1. A binding agreement between two or more persons that is enforceable by law
 
2. (contract bridge) the highest bid becomes the contract setting the number of tricks that the bidder must make (= declaration)
 
3. A variety of bridge in which the bidder receives points toward game only for the number of tricks he bid (= contract bridge)

- Verb: contract (derived forms: contracts, contracting, contracted)
1. Enter into a contractual arrangement (= undertake)
 
2. Engage by written agreement (= sign, sign on, sign up)
"They contracted two new pitchers for the next season";
 
3. Bring together or compress (= compress, constrict, squeeze, compact, press)
"the spasm contracted the muscle";
 
4. Be stricken by an illness, fall victim to an illness (= take, get)
"She contracted a chill";
 
5. Become smaller or draw together (= shrink)
"The fabric contracted";
 
6. Make smaller
"The heat contracted the woollen garment"
 
7. Compress or concentrate (= condense, concentrate)
"Congress contracted the three-year plan into a six-month plan";
 
8. Make or become more narrow or restricted (= narrow, neck)
"The selection was contracted";
 
9. Reduce in scope while retaining essential elements (= abridge, foreshorten, abbreviate, shorten, cut, reduce)
"The manuscript must be contracted";
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
    videoId: '4J0xFUyz1nw',
    startSeconds: 655,
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
    videoId: 'MGO4_8YRKro',
    startSeconds: 432,
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
    videoId: 'SrDEtSlqJC4',
    startSeconds: 840,
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
    videoId: 'Cln0J87vulU',
    startSeconds: 479,
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
    videoId: 'K-CrEi0ymMg',
    startSeconds: 213,
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
    videoId: 'X3TAROotFfM',
    startSeconds: 194,
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
    videoId: '8FpPSMIB4uA',
    startSeconds: 726,
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