import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryclimb extends StatelessWidget {
  // blank divider
  EnglishEntryclimb({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclimb(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("climb"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs1(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She climbed up the stairs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs2(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The car slowly climbed the hill."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs3(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As they climbed higher, the air became cooler."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs4(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He climbed up and inspected the damage to the roof."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs5(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He likes to go climbing most weekends."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs6(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I climbed through the window."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs7(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The boys climbed over the wall."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs8(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you climb down?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs9(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He climbed into the truck and drove off."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs10(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The paper's circulation continues to climb."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs11(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Interest rates climbed to 8 per cent."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs12(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Prices have climbed sharply in recent months."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs13(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The dollar has been climbing all week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs14(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The team has now climbed to fourth in the league."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs15(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In a few years he had climbed to the top of his profession."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs16(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The plane took off and climbed to 33 000 feet."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs17(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The sun climbed higher in the sky."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs18(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The road gradually climbs up from the town."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs19(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There's masses of ivy climbing up/over the walls of our house."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs20(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's an hour's climb to the summit."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs21(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We began our climb up the hill."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs22(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The north face of the Eiger is a very difficult climb."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs23(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The dollar's climb against the euro made European vacations more affordable for Americans."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs24(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs25(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs26(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs27(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs28(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs29(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs30(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs31(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs32(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs33(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs34(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs35(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs36(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs37(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs38(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs39(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs40(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs41(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs42(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs43(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs44(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs45(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs46(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs47(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs48(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs49(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs50(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs51(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs52(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs53(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs54(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs55(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs56(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs57(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs58(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs59(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs60(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs61(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs62(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs63(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs64(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs65(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs66(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs67(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs68(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs69(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclimbs70(String languageCode) async {
    // DOPSUM: CHANGE speakclimb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclimbs7000"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "climb"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /klaɪm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclimb("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /klaɪm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclimb("en-US"),
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
کوردی: پیاهەڵگەران، سەرکەوتن، چوونەسەرێ، پیاهەڵگژان،	چوونەپێش، پێشڤەچوون، پێشکەوتن،	زۆربوون،	سەرەولێژی، سینەکێش، تەلان
"""),
                          const DefinitionKurdish(
                              text: "١. (کردار) سەرکەوتن بەسەر شتێکدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "She climbed up the stairs."),
                                    ExampleSentenceKurdish(
                                        text: "بە پلەکانەکاندا چووە سەرەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "climb", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs1("en-US"),
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
                                            "The car slowly climbed the hill."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئۆتۆمبێلەکە بە گردەکەدا سەرکەوت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs2("en-US"),
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
                                                    "As they climbed higher, the air became cooler."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کە زیاتر سەرکەوتن، کەشەکە ساردتر بوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclimbs3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclimbs3("en-US"),
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
                                                    "He climbed up and inspected the damage to the roof."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "چووە سەرەوە و زیانی سەربانەکەی پشکنی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclimbs4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclimbs4("en-US"),
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
                                  "٢. (کردار) سەرکەوتن بە چیاکان و هەڵگژان بە قەدپاڵەکان وەک حەزێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He likes to go climbing most weekends."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "حەزدەکات زۆرینەی کۆتایی هەفتە بچێت بۆ پیاهەڵگژان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) پیاهەڵگژان؛ بە ئاستەنگ چوونە شوێنێک بە بەکارهێنانی دەست و قاچ"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I climbed through the window."),
                                    ExampleSentenceKurdish(
                                        text: "بە پەنجەرەکەدا سەرکەوتم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs6("en-US"),
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
                                            "The boys climbed over the wall."),
                                    ExampleSentenceKurdish(
                                        text: "کوڕەکان هەڵگژان بە دیوارەکەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs7("en-US"),
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
                                                text: "Can you climb down?"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دەتوانیت دابەزیتە خوارەوە؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclimbs8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclimbs8("en-US"),
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
                                                    "He climbed into the truck and drove off."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "چووە سەر بارهەڵگرەکە و بۆ دوور لێیخوڕی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclimbs9("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclimbs9("en-US"),
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
                              text: "٤. (کردار) زیادبوونی بڕ یان نرخ"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The paper's circulation continues to climb."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فرۆشی ڕۆژنامەکە بەردەوامە لە زیادبوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs10("en-US"),
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
                                            "Interest rates climbed to 8 per cent."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێژەی سوو بەرزبووەوە بۆ ٨ لە سەد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs11("en-US"),
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
                                                    "Prices have climbed sharply in recent months."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لە چەند مانگی ڕابردوودا نرخەکان بە خێرایی بەرزبوونەتەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclimbs12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclimbs12("en-US"),
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
                                                    "The dollar has been climbing all week."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تەواوی هەفتەکە نرخی دۆلار بەرزبووەتەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclimbs13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclimbs13("en-US"),
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
                                  "٥. (کردار) چوونە پێگەیەکی بەرزتر لە هێڵکارییەکدا، خشتەیەک، کۆمەڵگە یان دامەزراوەیەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The team has now climbed to fourth in the league."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تیمەکە سەرکەوتووە بۆ پلەبەندی چوارەم لە پاڵەوانێییەکەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "In a few years he had climbed to the top of his profession."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە چەند ساڵێکی کەمدا گەشتە ترۆپکی پیشەکەی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) سەرکەوتن بە ئاسماندا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The plane took off and climbed to 33 000 feet."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فڕۆکەکە فڕی و گەشتە بەرزی ٣٣,٠٠٠ پێ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs16("en-US"),
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
                                            "The sun climbed higher in the sky."),
                                    ExampleSentenceKurdish(
                                        text: "خۆر زیاتر بە ئاسماندا هەڵهات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) چوون بەرەو سەرەولێژی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The road gradually climbs up from the town."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێگاکە کەم کەم دەست بە هەڵگژان دەکات لە شارۆچکەکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) گەشەکردن بەرەو سەرەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "There's masses of ivy climbing up/over the walls of our house."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەولاوێکی زۆر بە دیوارەکانی خانووەکەماندا گەشە دەکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ناو) سەرکەوتن بە چیادا یان هەڵگژان بە قەدپاڵەکانیدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It's an hour's climb to the summit."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "یەک کاتژمێر سەرکەوتنە تا لوتکەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs20("en-US"),
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
                                            "We began our climb up the hill."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەستمان بە سەرکەوتن بە گردەکەدا کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs21("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) چیایەک یان قەدپاڵێک کە خەڵکی بۆ وەرزش پێیدا سەردەکەون"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The north face of the Eiger is a very difficult climb."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕووی باکووری ئایگەر سەرکەوتنێکی زۆر سەختە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١١. (ناو) زیادبوون لە بڕ یان ڕێژە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The dollar's climb against the euro made European vacations more affordable for Americans."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەرزبوونەوەی دۆلار بەرامبەر یۆرۆ گەشتی بە ئەورووپادا بۆ ئەمریکییەکان زیاتر ڕەخساند."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclimbs23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclimbs23("en-US"),
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
                        YoutubeEmbeddedeight(),
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
- Verb: climb (Derived forms: climbing, climbed, climbs)
1. Go upward with gradual or continuous progress (= climb up, mount, go up)
"Did you ever climb up the hill behind your house?";
 
2. Move with effort, by grasping
 
3. Go up or advance (= wax, mount, rise)
"Sales were climbing after prices were lowered";
 
4. Slope upward
"The path climbed all the way to the top of the hill"
 
5. Improve one's social status
"This young man knows how to climb the social ladder"
 
6. Increase in value or to a higher point (= rise, go up)
"prices climbed steeply";

- Noun: climb (Derived forms: climbs)
1. An upward slope or grade (as in a road) (= ascent, acclivity, rise, raise, upgrade [N. Amer])
"the car couldn't make it up the climb";
 
2. An event that involves rising to a higher point (as in altitude, temperature or intensity etc.) (= climbing, mounting)
 
3. The act of climbing something (= mount)
"it was a difficult climb to the top";
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
    videoId: 'https://youtu.be/XbXjN9fo3bg?t=',
    startSeconds: 7,
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
    videoId: 'https://youtu.be/P5_UUjzxkIw?t=',
    startSeconds: 23,
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
    videoId: 'https://youtu.be/dJZjgO67mFk?t=',
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
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/e92iJ5bb9Lk?t=',
    startSeconds: 13,
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
    videoId: 'https://youtu.be/hFZFjoX2cGg?t=',
    startSeconds: 159,
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
    videoId: 'https://youtu.be/tXjHb5QmDV0?t=',
    startSeconds: 634,
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
    videoId: 'https://youtu.be/_Z0ZQT0FttM?t=',
    startSeconds: 426,
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
    videoId: 'https://youtu.be/hyRSmEqYIig?t=',
    startSeconds: 135,
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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/aiZQPR3QnDk?t=',
    startSeconds: 59,
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