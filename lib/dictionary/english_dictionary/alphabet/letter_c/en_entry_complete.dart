import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycomplete extends StatelessWidget {
// blank divider
  EnglishEntrycomplete({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomplete(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("complete"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes1(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You will receive payment for each complete day that you work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes2(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A Chinese New Year celebration would not be complete without fireworks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes3(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You've made my life complete."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes4(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "No trip to Moscow would be complete without a visit to Lenin's tomb."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes5(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Our complete range of carpets is on display in our showroom."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes6(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The report comes complete with diagrams and colour photographs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes7(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The job is almost complete."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes8(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Ther ordering process is nearly complete."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes9(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Work on the office building will be complete at the end of the year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes10(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We were in complete agreement."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes11(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They sat in complete silence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes12(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was a complete stranger to me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes13(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He is a complete fool!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes14(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The army remains in complete control of the country."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes15(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I felt a complete idiot."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes16(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You are talking complete and utter rubbish."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes17(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The whole thing has been a complete waste of time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes18(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The cruise ship is really a floating village, complete with shops and cafes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes19(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's just completed a master's degree in Law."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes20(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The work should be completed by December."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes21(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She successfully completed the London Marathon in April."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes22(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I've fully completed my training."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes23(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "2 000 shoppers completed our questionnaire."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes24(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Has the form been correctly completed?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes25(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I only need one more card to complete the set."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes26(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes27(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes28(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes29(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes30(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes31(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes32(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes33(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes34(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes35(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes36(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes37(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes38(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes39(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes40(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes41(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes42(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes43(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes44(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes45(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes46(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes47(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes48(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes49(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes50(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes51(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes52(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes53(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes54(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes55(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes56(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes57(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes58(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes59(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes60(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes61(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes62(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes63(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes64(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes65(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes66(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompletes67(String languageCode) async {
    // DOPSUM: CHANGE speakcomplete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompletes6700"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "complete"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəmˈpliːt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomplete("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəmˈpliːt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomplete("en-US"),
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
کوردی: تەواو، ڕەبەق، تەخت، ئازگار،	کۆتایی‌پێھاتوو، تەواوکراو، ڕاپەڕێنراو، سەرومڕ، بێ‌کەم‌وکوڕی، گشت، ھەموو، یەکڕێ، سامەڵسا
"""),
                          const DefinitionKurdish(text: "١. (ھاوەڵناو) تەواو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "You will receive payment for each complete day that you work."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پارە وەردەگریت بۆ ھەر ڕۆژێک بە تەواوی کار دەکەیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "complete", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes1("en-US"),
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
                                            "A Chinese New Year celebration would not be complete without fireworks."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئاھەنگی ساڵی نوێی چینی تەواو نابێت بەبێ یاری ئاگرین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes2("en-US"),
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
                                                    "You've made my life complete."),
                                            ExampleSentenceKurdish(
                                                text: "ژیانمت کامڵ کردووە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompletes3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompletes3("en-US"),
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
                                                    "No trip to Moscow would be complete without a visit to Lenin's tomb."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھیچ سەردانێک بۆ مۆسکۆ تەواو نییە بەبێ سەردانی گۆڕی لینین."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompletes4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompletes4("en-US"),
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
                                                    "Our complete range of carpets is on display in our showroom."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تەواوی جۆرەکانی مافوورەکانمان پیشاندراون لە ژووری نمایشەکەمان."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompletes5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompletes5("en-US"),
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
                                                    "The report comes complete with (= including) diagrams and colour photographs."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ڕاپۆرتەکە بە تەواوی ھێڵکاری و وێنەی ڕەنگاوڕەنگی لەگەڵە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompletes6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompletes6("en-US"),
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
                              text: "٢. (ھاوەڵناو) تەواوبوو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "The job is almost complete."),
                                    ExampleSentenceKurdish(
                                        text: "کارەکە بەنزیکەیی تەواوبووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes7("en-US"),
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
                                            "Ther ordering process is nearly complete."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پڕۆسەی داواکردن بەنزیکەیی تەواوبووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes8("en-US"),
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
                                            "Work on the office building will be complete at the end of the year."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کارکردن لە ئۆفیسەکە تەواو دەبێت لە کۆتایی ساڵدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) بەکاردێت بۆ جەختکردنەوە لە شتێک، بۆ وتنی ئەوەی تا ئەوپەڕی ئاست ڕوویداوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "We were in complete agreement."),
                                    ExampleSentenceKurdish(
                                        text: "لە ڕێککەوتنی تەواودا بووین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes10("en-US"),
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
                                        text: "They sat in complete silence."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە بێ دەنگی تەواودا دانیشتبوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "He was a complete stranger to me."),
                                            ExampleSentenceKurdish(
                                                text: "تەواو نامۆ بوو لام."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompletes12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompletes12("en-US"),
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
                                                text: "He is a complete fool!"),
                                            ExampleSentenceKurdish(
                                                text: "گەمژەیەکی تەواوە!"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompletes13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompletes13("en-US"),
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
                                                    "The army remains in complete control of the country."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "سوپا لە کۆنترۆڵی تەواوی وڵاتەکەدایە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompletes14("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompletes14("en-US"),
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
                                                    "I felt a complete idiot."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەستم بە گەوجێتییەکی تەواو کرد."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompletes15("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompletes15("en-US"),
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
                                                    "You are talking complete and utter rubbish."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "قسەی تەواو و سەراپا بێ‌نرخ دەکەیت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompletes16("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompletes16("en-US"),
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
                                                    "The whole thing has been a complete waste of time."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەموو شتەکە تەواو بەفیڕۆدانی کات بووە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompletes17("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompletes17("en-US"),
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
                                  "٤. (ھاوەڵناو) لەخۆگرتنی شتێک وەک بەشێک یان تایبەتمەندییەکی زیادە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The cruise ship is really a floating village, complete with shops and cafes."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەشتییە گەشتیارییەکە گوندێکی سەرئاوکەوتووە کە فرۆشگا و قاوەخانەی لێیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (کردار) تەواوکردن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She's just completed a master's degree in Law."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تازەگی بڕوانامەی ماستەری لە یاسادا ھێناوە/تەواوکردووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes19("en-US"),
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
                                            "The work should be completed by December."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کارەکە دەبێت تاوەکو کانوونی یەکەم تەواو بکرێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes20("en-US"),
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
                                            "She successfully completed the London Marathon in April."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە سەرکەوتووی ماراسۆنی لەندەنی لە نیساندا تەواو کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes21("en-US"),
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
                                            "I've fully completed my training."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە تەواوی ڕاھێنانەکەمم تەواو کردووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) نووسینی تەواوی ئەو زانیارییانەی داوات لێکراوە لەسەر فۆرمێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "2 000 shoppers completed our questionnaire."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "٢٠٠٠ فرۆشیار ڕاپرسییەکەمانیان تەواوکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes23("en-US"),
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
                                            "Has the form been correctly completed?"),
                                    ExampleSentenceKurdish(
                                        text: "فۆرمەکە بە تەواوی پڕکراوەتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes24("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) تەواوکردنی شتێک بەوەی ھەموو بەشەکانی بۆ زیادبکەیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I only need one more card to complete the set."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەنھا پێویستم بە یەک کارتی دیکەیە بۆ تەواوکردنی دەستەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompletes25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompletes25("en-US"),
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
- Adjective: complete
1. Having every necessary or normal part or component or step
"a complete meal"; "a complete wardrobe"; "a complete set of the Britannica"; "a complete set of china"; "a complete defeat"; "a complete accounting"
 
2. Perfect in every respect; having all necessary qualities (= consummate)
"a complete gentleman";
 
3. Highly skilled (= accomplished)
"a complete musician";
 
4. Without qualification; used informally as an (often pejorative) intensifier (= arrant, consummate, double-dyed, everlasting, gross, perfect, pure, sodding, stark, staring, thorough, thoroughgoing, utter, unadulterated, rigorous)
"a complete coward";
 
5. Having come or been brought to a conclusion (= concluded, ended, over, all over, terminated)
"the harvesting was complete";

- Verb: complete (derived forms: completing, completes, completed)
1. Come or bring to an end (= finish)
"She completed the requirements for her Master's Degree";
 
2. Bring to a whole, with all the necessary parts or elements
"A child would complete the family"
 
3. Carry out, fulfil (= dispatch, discharge)
"complete one's duties";
 
4. (football) complete a pass (= nail [informal])
 
5. Write all the required information onto a form (= fill out, fill in, make out)
"complete this questionnaire, please!";
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
    videoId: 'JfqDvi8b4gg',
    startSeconds: 279,
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
    videoId: 'oMRGASj2v8c',
    startSeconds: 54,
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
    videoId: 'qzgyoAYeZRI',
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
    videoId: 'SqueozhXDv8',
    startSeconds: 11,
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
    videoId: 'VrKW58MS12g',
    startSeconds: 1369,
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
    videoId: '8bWRjajx-LE',
    startSeconds: 69,
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
    videoId: '_B7yY1AxOrw',
    startSeconds: 263,
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