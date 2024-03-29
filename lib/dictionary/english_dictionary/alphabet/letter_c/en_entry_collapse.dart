import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycollapse extends StatelessWidget {
  // blank divider
  EnglishEntrycollapse({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcollapse(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("collapse"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses1(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The roof collapsed under the weight of snow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses2(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The building had partially collapsed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses3(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She collapsed and was rushed to hospital."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses4(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He collapsed in the street and died two hours later."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses5(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When I get home I like to collapse on the sofa and listen to music."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses6(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Talks between management and unions have collapsed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses7(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All opposition to the plan has collapsed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses8(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She lost a lot of money when the property market collapsed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses9(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The table collapses for easy storage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses10(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The peace talks were on the verge of collapse."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses11(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They thought their strategy would cause the collapse of the regime."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses12(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The war has led to the collapse of agriculture in the area."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses13(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The walls were strengthened to protect them from collapse."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses14(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was taken to hospital after her collapse at work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses15(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was in a state of mental and physical collapse."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses16(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Shares suffered a fresh collapse today."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses17(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses18(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses19(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses20(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses21(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses22(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses23(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses24(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses25(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses26(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses27(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses28(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses29(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses30(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses31(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses32(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses33(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses34(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses35(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses36(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses37(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses38(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses39(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses40(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses41(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses42(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses43(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses44(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses45(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses46(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses47(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses48(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses49(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses50(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses51(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses52(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses53(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses54(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses55(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses56(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses57(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses58(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses59(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses60(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses61(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses62(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses63(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollapses64(String languageCode) async {
    // DOPSUM: CHANGE speakcollapse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollapses6400"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "collapse"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈlæps/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcollapse("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈlæps/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcollapse("en-US"),
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
کوردی: ڕووخان، داڕووخان، کەوتن، داتەپین، تێک‌تەپین، تیاچوون، لەنێوچوون، ھەرەس‌ھێنان، ڕمان، داڕمان، ھەڕەمین، لێک‌ھەڵوەشان، تێشکان، بەزین،	پێچوون، کزبوون، داچوون،	کەم‌بوونەوەی کت‌وپڕی نرخ،	(جوگڕافی) تلیسانەوە 
"""),
                          const DefinitionKurdish(text: "١. (کردار) ڕووخان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The roof collapsed under the weight of snow."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەربانەکە لەژێر کێشی بەفردا ڕووخا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "collapse", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses1("en-US"),
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
                                            "The building had partially collapsed."),
                                    ExampleSentenceKurdish(
                                        text: "بیناکە بەشێکی داڕما."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (کردار) لەھۆشچوون"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She collapsed and was rushed to hospital."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەھۆش خۆی چوو و گوازرایەوە بۆ نەخۆشخانە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses3("en-US"),
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
                                            "He collapsed in the street and died two hours later."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەسەر شەقامەکە بێھۆش بوو و دوای دوو کاتژمێر گیانی لەدەستدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) دانیشتن و حەسانەوە، بەتایبەتی لە دوای کارکردنی زۆر"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "When I get home I like to collapse on the sofa and listen to music."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کە دەگەمەوە ماڵەوە دەمەوێت لەسەر قەنەفەکە پاڵبکەوم و گوێ لە میوزیک بگرم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) شکستھێنانی لەناکاو یان تەواوەتی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Talks between management and unions have collapsed."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دانوستانی نێوان بەڕێوبەرایەتی و سەندیکاکان شکستیھێناوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses6("en-US"),
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
                                            "All opposition to the plan has collapsed."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەموو دژبەرییەک بەرامبەر پلانەکان شکستیان ھێناوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) کەمبوونی لەناکاو لە بڕ یان نرخدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She lost a lot of money when the property market collapsed."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێژەیەکی زۆر لە پارەی لەدەستدا کە بازاڕی خانووبەرە داتەپی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) قەدکردنی شتێک بۆ شێوەیەک کە جێگای کەمتر دەگرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The table collapses for easy storage."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مێزەکە دەنووشتێیەوە بۆ ھەڵگرتنی ئاسان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) شکستھێنانی لەناکاوی شتێک، وەک دامەزراوەیەک، بازرگانییەک، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The peace talks were on the verge of collapse."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گفتوگۆکانی ئاشتی لەسەر لێواری داڕمانن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses10("en-US"),
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
                                            "They thought their strategy would cause the collapse of the regime."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وایان دەفکری کە ستراتیژییەکەیان دەبێتە ھۆی داڕمانی ڕژێمەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses11("en-US"),
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
                                            "The war has led to the collapse of agriculture in the area."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جەنگەکە بووە بەھۆی داڕمانی کشتوکاڵ لە ناوچەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ناو) داڕمانی بینایەک، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The walls were strengthened to protect them from collapse."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دیوارەکان بەھێز کران بۆ پاراستن لە داڕووخان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ناو) دۆخێکی تەندرووستی کە کەسێک لەناکاو زۆر نەخۆش دەکەوێت، یان لەھۆش دەچێت کە زۆر نەخۆش دەکەوێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She was taken to hospital after her collapse at work."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بردرا بۆ نەخۆشخانە لە دوای لەھۆشچوونی لەسەر کار."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses14("en-US"),
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
                                            "He was in a state of mental and physical collapse."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە دۆخی داڕووخانی دەروونی و جەستەیی بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٦. (ناو) داکەوتنی لەناکاو لە نرخدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Shares suffered a fresh collapse today."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پشکەکان تووشی داتەپینی تازە بوونەوە ئەمڕۆ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollapses16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollapses16("en-US"),
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
- Verb: collapse (derived forms: collapsed, collapses, collapsing)
1. Break down, literally or metaphorically (= fall in, cave in, give, give way, break, founder)
"The wall collapsed"; "The business collapsed"; "The roof collapsed";
 
2. Fall or become unconscious due to fatigue, illness, or a sudden attack (= break down)
 
3. Fold or close up
"collapse the music stand"
 
4. Fall apart (= crumble, crumple, tumble, break down)
"the building collapsed after the explosion";
 
5. Cause to burst (= burst)
 
6. Suffer a nervous breakdown (= crack up, crack, crock up, break up)
 
7. Lose significance, effectiveness, or value
"The school system is collapsing"; "The stock market collapsed"

- Noun: collapse (derived forms: collapses)
1. An abrupt failure of function or complete physical exhaustion (= prostration)
"the commander's collapse demoralized his men";
 
2. A natural event caused by something suddenly falling down or caving in
"the roof is in danger of collapse"; "the collapse of the old star under its own gravity"
 
3. The act of throwing yourself down; collapse; sink (= flop)
 
4. A sudden large decline of business or the prices of stocks (especially one that causes additional failures) (= crash)
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
    videoId: 'ZyITTiR3nlo',
    startSeconds: 768,
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
    videoId: 'V30VyMMce9s',
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '0ZhHoyqQEhA',
    startSeconds: 62,
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
    videoId: 'Tehby1VApMk',
    startSeconds: 282,
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
    videoId: 'Ydw6k01_OPk',
    startSeconds: 444,
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
    videoId: '5mkeoVpTaMA',
    startSeconds: 24,
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
    videoId: 'dJr2DJRKy5c',
    startSeconds: 58,
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