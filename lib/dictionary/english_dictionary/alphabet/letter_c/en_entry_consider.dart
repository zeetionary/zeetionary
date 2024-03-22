import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryconsider extends StatelessWidget {
// blank divider
  EnglishEntryconsider({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconsider(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("consider"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders1(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'd like some time to consider."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders2(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She is considering her options."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders3(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let us consider the facts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders4(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We are considering various possibilities."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders5(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Have you considered starting your own business?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders6(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was considering what to do next."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders7(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We are considering her for the job of designer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders8(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We're considering buying a new car."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders9(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I consider her a friend."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders10(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The award is considered a great honour."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders11(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He considers it his duty."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders12(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is widely considered to be the greatest player ever."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders13(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Who do you consider to be responsible for the accident?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders14(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He considers himself an expert on the subject."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders15(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They will take any steps they consider necessary."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders16(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You should consider other people before you act."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders17(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He stood there, considering the painting."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders18(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders19(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders20(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders21(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders22(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders23(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders24(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders25(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders26(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders27(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders28(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders29(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders30(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders31(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders32(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders33(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders34(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders35(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders36(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders37(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders38(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders39(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders40(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders41(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders42(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders43(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders44(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders45(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders46(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders47(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders48(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders49(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders50(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders51(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders52(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders53(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders54(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders55(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders56(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders57(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders58(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders59(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders60(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders61(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders62(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders63(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders64(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders65(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders66(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders67(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders68(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders69(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders70(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders7000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders71(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders7100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders72(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders7200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsiders73(String languageCode) async {
    // DOPSUM: CHANGE speakconsider
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsiders7300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "consider"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈsɪdə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconsider("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈsɪdər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconsider("en-US"),
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
کوردی: ڕەچاوگرتن، ڕا دەربڕین، ھەڵسەنگاندن، بیرکردنەوە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) بیرکردنەوە سەبارەت بە شتێک بە وریاییەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I'd like some time to consider."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێویستم بە ھەندێک کاتە بۆ  بیرکردنەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "consider", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsiders1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsiders1("en-US"),
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
                                            "She is considering her options."),
                                    ExampleSentenceKurdish(
                                        text: "ھەڵبژاردەکانی ڕەچاو دەکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsiders2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsiders2("en-US"),
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
                                                    "Let us consider the facts."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "با ڕاستییەکان ھەڵبسەنگێنین."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconsiders3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconsiders3("en-US"),
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
                                                    "We are considering various possibilities."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ژمارەیەک ئەگەر لەبەرچاو دەگرین."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconsiders4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconsiders4("en-US"),
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
                                                    "Have you considered starting your own business?"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بیرت لە دەستپێکردنی بازرگانی خۆت کردووەتەوە؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconsiders5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconsiders5("en-US"),
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
                                                    "He was considering what to do next."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بیری لەوە دەکردەوە دواتر چی بکات."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconsiders6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconsiders6("en-US"),
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
                                                    "We are considering her for the job of designer."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەڵیدەسەنگێنین بۆ کاری دیزاینەری."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconsiders7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconsiders7("en-US"),
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
                                                    "We're considering buying a new car."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بیر لە کڕینی ئۆتۆمبێلێکی تازە دەکەینەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconsiders8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconsiders8("en-US"),
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
                                  "٢. (ناو) بیرکردنەوە لە کەسێک/شتێک بەشێوەیەکی دیاریکراو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I consider her a friend."),
                                    ExampleSentenceKurdish(
                                        text: "وەک ھاوڕێ سەیری دەکەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsiders9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsiders9("en-US"),
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
                                            "The award is considered a great honour."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خەڵاتەکە بە شانازییەکی گەورە دادەنرێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsiders10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsiders10("en-US"),
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
                                        text: "He considers it his duty."),
                                    ExampleSentenceKurdish(
                                        text: "بە ئەرکی خۆی دایدەنا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsiders11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsiders11("en-US"),
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
                                                    "She is widely considered to be the greatest player ever."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بە بەرفراوانی وەک باشترین یاریزانی ھەمیشەیی دادەنرێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconsiders12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconsiders12("en-US"),
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
                                                    "Who do you consider to be responsible for the accident?"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کێ بە بەرپرسیار دەبینیت بۆ ڕووداوەکە؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconsiders13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconsiders13("en-US"),
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
                                                    "He considers himself an expert on the subject."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "خۆی بە شارەزا لە بابەتەکەدا دادەنێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconsiders14("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconsiders14("en-US"),
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
                                                    "They will take any steps they consider necessary."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەر ھەنگاوێک دەنێن کە بە پێویستی ببینن."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconsiders15("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconsiders15("en-US"),
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
                                  "٣. (کردار) بیرکردنەوە لە شتێک، بەتایبەتی ھەست و سۆزی کەسانی دیکە، و کاریگەربوون پێیان کە بڕیارێک دەدەیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "You should consider other people before you act."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەبێت بیر لە کەسانی دیکە بکەیتەوە پێش ئەوەی ھەنگاو بنێیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsiders16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsiders16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) سەیرکردنی شتێک بە وریاییەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He stood there, considering the painting."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەوێ وەستابوو و لە تابلۆکە ورد دەبووەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsiders17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsiders17("en-US"),
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
- Verb: consider (derived forms: considered, considering, considers)
1. Perceive or think about in a particular way; deem to be (= see, reckon, view, regard)
"I consider her to be shallow";
 
2. Give careful consideration to (= study)
"consider the possibility of moving";
 
3. Focus on as an example (= take, look at)
"Consider the following case";
 
4. Show consideration for; take into account (= count, weigh)
"You must consider her age"; "The judge considered the offender's youth and was lenient";
 
5. Think about carefully; weigh (= debate, moot, turn over, deliberate)
"They considered the possibility of a strike";
 
6. Judge or regard; look upon (= think, believe, conceive)
"I consider he is very smart";
 
7. Look at attentively (= regard)
 
8. Analyse carefully; study to find a solution (= view, look at)
"consider a problem";
 
9. Regard or treat with consideration, respect, and esteem
"Please consider your family"
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
    videoId: 'e09xig209cQ',
    startSeconds: 16,
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
    videoId: 'Cxqca4RQd_M',
    startSeconds: 558,
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
    videoId: 'HDntl7yzzVI',
    startSeconds: 1733,
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
    videoId: 't6fIp7mMJ90',
    startSeconds: 21,
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
    videoId: 'MGO4_8YRKro',
    startSeconds: 293,
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
    videoId: 'zqllxbPWKNI',
    startSeconds: 1088,
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
    videoId: '544DTGHIBM0',
    startSeconds: 153,
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