import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycondition extends StatelessWidget {
// blank divider
  EnglishEntrycondition({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcondition(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("condition"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions1(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Many of the paintings are in poor condition."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions2(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The condition of the roads is poor."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions3(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The car is still in excellent condition."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions4(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He is overweight and out of condition."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions5(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The motorcyclist was in a critical condition in hospital last night."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions6(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You are in no condition to go anywhere."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions7(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her condition has deteriorated."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions8(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Does your child have any kind of medical condition that we should know about?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions9(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She has a serious health condition."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions10(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He suffers from a serious heart condition."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions11(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They were working under appalling conditions."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions12(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He grew up in conditions of poverty."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions13(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The plants grow best in cool, damp conditions."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions14(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The boat sank in adverse weather conditions."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions15(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Conditions are ideal for sailing today."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions16(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Animals adapt to changing environmental conditions."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions17(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The offer is subject to certain conditions."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions18(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The officials spoke on condition of anonymity."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions19(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Congress can impose strict conditions on the bank."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions20(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They have agreed to a ceasefire provided their conditions are met."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions21(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He denied being in breach of bail conditions."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions22(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The UN has imposed strict conditions on the ceasefire."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions23(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Stable political leadership is a necessary condition for economic growth."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions24(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We are working to create the conditions for peace."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions25(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Applicants must agree to teach for three years as a condition of admission to the program."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions26(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He spoke angrily about the condition of the urban poor."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions27(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Patients can become conditioned to particular forms of treatment."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions28(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The rats had been conditioned to ring a bell when they wanted food."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions29(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Gender roles are often conditioned by cultural factors."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions30(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He conditions his beard with oil to keep it soft."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions31(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions32(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions33(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions34(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions35(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions36(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions37(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions38(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions39(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions40(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions41(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions42(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions43(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions44(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions45(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions46(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions47(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions48(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions49(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions50(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions51(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions52(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions53(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions54(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions55(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions56(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions57(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions58(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions59(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions60(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions61(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions62(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions63(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions64(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions65(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions66(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconditions67(String languageCode) async {
    // DOPSUM: CHANGE speakcondition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconditions6700"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "condition"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈdɪʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcondition("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈdɪʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcondition("en-US"),
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
کوردی: مەرج، شەرت،	ڕەوش، لۆر، بار، دۆخ، کاودان، بارودۆخ، ھەل‌ومەرج، مەرەد، چۆنیەتی، لەشوولار،	لەش‌ساغی، سڵامەتی، ساغی،	نەخۆشی، ناسازی،	(کۆمەڵایەتی) پلەوپایە، پێگە، ھەل‌ومەرج، بارودۆخ، کاودان، دەست‌ودار
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) ئەو دۆخەی شتێکی تێدایە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Many of the paintings are in poor condition."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆرێک لە تابلۆکان لە دۆخی خراپدان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "condition", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions1("en-US"),
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
                                            "The condition of the roads is poor."),
                                    ExampleSentenceKurdish(
                                        text: "دۆخی ڕێگاوبانەکان خراپە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions2("en-US"),
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
                                            "The car is still in excellent condition."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئۆتۆمبێلەکە ھێشتا لە دۆخێکی یەکجارباشە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) دۆخی تەندرووستی کەسێک؛ ئەوەی تا چەند تەندرووستە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He is overweight and out of condition (= not physically fit)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کێشی زۆرە و لەشوولاری ناتەندرووستە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions4("en-US"),
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
                                            "The motorcyclist was in a critical condition (= at risk of dying) in hospital last night."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ماتۆڕسوارەکە دوێنێ شەو لە دۆخی ناجێگیردا بوو لە نەخۆشخانە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions5("en-US"),
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
                                            "You are in no condition (= too ill/sick, etc.) to go anywhere."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە دۆخێکی وەھادا نیت بچیتە ھیچ شوێنێک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions6("en-US"),
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
                                            "Her condition has deteriorated."),
                                    ExampleSentenceKurdish(
                                        text: "تەندرووستی خراپتر بووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) نەخۆشییەک کە ماوەیەکی زۆرە ھەتە بەھۆی ئەوەی چارەسەر ناکرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Does your child have any kind of medical condition that we should know about?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "منداڵەکەت ھیچ نەخۆشییەکی تەندرووستی ھەیە کە پێویست بکات بیزانین؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions8("en-US"),
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
                                            "She has a serious health condition."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نەخۆشییەکی تەندرووستی سەختی ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions9("en-US"),
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
                                            "He suffers from a serious heart condition."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە دەست نەخۆشییەکی سەختی دڵەوە دەناڵێنێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ھەلومەرج؛ ئەو دۆخەی تێیدا خەڵکی دەژین، کاردەکەن، یان ئیشەکانیان دەکەن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They were working under appalling conditions."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ھەلومەرجی زۆر خراپدا کاریان دەکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions11("en-US"),
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
                                            "He grew up in conditions of poverty."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ھەلومەرجی نەداریدا گەورە بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) دۆخێک کە کاریگەری لەسەر چۆنیەتی ڕوودانی شتێک دەکات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The plants grow best in cool, damp conditions."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕووەکەکان گەشە بە باشترین دەکەن لە دۆخی سارد و شێداردا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions13("en-US"),
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
                                            "The boat sank in adverse weather conditions."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەلەمە نغرۆبوو لە دۆخی کەشووھەوای نەلەباردا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions14("en-US"),
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
                                            "Conditions are ideal for sailing today."),
                                    ExampleSentenceKurdish(
                                        text: "ئەمڕۆ دۆخەکە نایابە بۆ فرۆشتن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions15("en-US"),
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
                                            "Animals adapt to changing environmental conditions."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئاژەڵ ڕادێت بە دۆخی گۆڕاوی ژینگەیی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) مەرج؛ یاسایەک یان بڕیارێک کە دەبێت پێی ڕازی بیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The offer is subject to certain conditions."),
                                    ExampleSentenceKurdish(
                                        text: "ئۆفەرەکە کۆمەڵێک مەرجی لەگەڵە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions17("en-US"),
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
                                            "The officials spoke on condition of anonymity."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەرپرسەکان بە مەرجی نھێنیبوون قسەیان کردووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions18("en-US"),
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
                                                    "Congress can impose strict conditions on the bank."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کۆنگرێس دەتوانێت مەرجی سەخت بەسەر بانکەکەدا بسەپێنێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconditions19("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconditions19("en-US"),
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
                                                    "They have agreed to a ceasefire provided their conditions are met."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بە ئاگربەست ڕازیبوونە ئەگەر مەرجەکانیان بەدیبھێندرێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconditions20("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconditions20("en-US"),
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
                                                    "He denied being in breach of bail conditions."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ڕەتیکردەوە مەرجەکانی کەفالەتەکەی شکاندبێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconditions21("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconditions21("en-US"),
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
                                                    "The UN has imposed strict conditions on the ceasefire."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "نەتەوە یەکگرتووەکان مەرجی توندی سەپاند بەسەر ئاگربەستەکەدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconditions22("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconditions22("en-US"),
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
                                  "٧. (ناو) دۆخێک کە مەرجە بوونی ھەبێت بۆ ئەوەی دۆخێکی تر درووست ببێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Stable political leadership is a necessary condition for economic growth."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەرکردایەتی سیاسی سەقامگیر مەرجێکی پێویستە بۆ گەشەی ئابووری."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions23("en-US"),
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
                                            "We are working to create the conditions for peace."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کار دەکەین بۆ خولقاندنی ھەلومەرجی ئاشتی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions24("en-US"),
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
                                            "Applicants must agree to teach for three years as a condition of admission to the program."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خوازیاران دەبێت ڕازی بن بۆ سێ ساڵ وانە بڵێنەوە وەک مەرجی بەژدارییان لە پڕۆگرامەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) دۆخی کۆمەڵە کەسێک بەھۆی دۆخیان لە ژیاندا، کێشەکانیان، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He spoke angrily about the condition of the urban poor."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە تووڕەییەوە قسەیکرد دژ بە دۆخی ھەژارانی گوندنشین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions26("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) ڕاھێنانی کەسێک کە بە شێوەیەکی دیاریکراو ڕەفتار بکات یان بە دۆخێکی دیاریکراو ڕابێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Patients can become conditioned to particular forms of treatment."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نەخۆش دەکرێت ڕابێت بە جۆرە جیاوازەکانی چارەسەر."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions27("en-US"),
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
                                            "The rats had been conditioned to ring a bell when they wanted food."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مشکەکان ڕاھێنرابوون کە زەنگێک لێ بدەن کە خواردنیان بوێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions28("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions28("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) ھەبوونی کاریگەرییەکی گرنگ لەسەر کەسێک/شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Gender roles are often conditioned by cultural factors."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەرکە ڕەگەزییەکان زۆرجار بە کاریگەری فاکتەرە کەلتوورییەکانن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions29("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions29("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) پاراستنی شتێک بە تەندرووست، بۆ نموونە قژت یان پێست؛ بەکارھێنانی شتێک، بۆ نموونە کرێم، کە بە تەندرووست دەیھێڵێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He conditions his beard with oil to keep it soft."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕیشی بە زەیت بە چەور دەکات بۆ ھێشتنەوەی بە نەرمی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconditions30("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconditions30("en-US"),
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
- Noun: condition (derived forms: conditions)
1. A state at a particular time (= status)
"a condition of disrepair";
 
2. An assumption on which rests the validity or effect of something else (= precondition, stipulation)
 
3. A mode of being or form of existence of a person or thing
"the human condition"
 
4. Information that should be kept in mind when making a decision (= circumstance, consideration)
"another condition is the time it would take";
 
5. The state of (good) health (especially in the phrases 'in condition' or 'in shape' or 'out of condition' or 'out of shape') (= shape)
 
6. An illness, disease, or other medical problem
"a heart condition"; "a skin condition"
 
7. (usually plural) a statement of what is required as part of an agreement (= strings, term)
"the contract set out the conditions of the lease";
 
8. The procedure that is varied in order to estimate a variable's effect by comparison with a control condition (= experimental condition)

- Verb: condition (derived forms: conditions, conditioned, conditioning)
1. Establish a conditioned response
 
2. Develop (a child's or animal's) behaviour by instruction and practice; especially to teach self-control (= discipline, train, check)
 
3. Make a condition or requirement in a contract or agreement; make an express demand or provision in an agreement (= stipulate, qualify, specify)
"The will conditions that she can live in the house for the rest of her life";
 
4. Put into a better state
"he conditions old cars"
 
5. Apply conditioner to in order to make smooth and shiny
"I condition my hair after washing it"
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
    videoId: 'kqzRXtXSuF8',
    startSeconds: 100,
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
    videoId: '3pbTmXsfiYk',
    startSeconds: 131,
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
    videoId: 'QrWzFYsBCb8',
    startSeconds: 413,
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
    videoId: 'dwEKqAwoz0Y',
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
    videoId: 'e09xig209cQ',
    startSeconds: 120,
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
    videoId: 'tXjHb5QmDV0',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'zqllxbPWKNI',
    startSeconds: 1701,
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