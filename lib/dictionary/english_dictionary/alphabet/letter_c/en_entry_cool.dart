import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycool extends StatelessWidget {
// blank divider
  EnglishEntrycool({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcool(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cool"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools1(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Cooler weather is forecast for the weekend."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools2(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These plants prefer cooler temperatures."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools3(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Let's sit in the shade and keep cool."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools4(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Store lemons in a cool dry place."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools5(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Wear light, cool clothing but try to avoid shorts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools6(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The bedroom was painted a lovely cool blue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools7(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Doesn't she look cool in those sunglasses?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools8(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You look pretty cool with that new haircut."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools9(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's a cool movie."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools10(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She has lots of cool ideas."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools11(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I think their new song's really cool."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools12(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We had such a cool time with Ed and his friends."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools13(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I really hope you can come—it'd be so cool!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools14(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's really cool you came back!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools15(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I was surprised that she got the job, but I'm cool with it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools16(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's completely cool about what happened."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools17(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Can you come at 10.30 tomorrow?’ ‘That's cool.’"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools18(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Just stay cool and don't panic."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools19(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He has a cool head."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools20(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He forced himself to count to ten and act cool."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools21(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They gave the prime minister a cool reception."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools22(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He has been cool towards me ever since we had that argument."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools23(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The car cost a cool thirty thousand."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools24(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Glass contracts as it cools."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools25(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Melt the chocolate and allow it to cool slightly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools26(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The evening breeze cooled her face."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools27(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I think we should wait until tempers have cooled."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools28(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Relations between them have definitely cooled."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools29(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her enthusiasm for the idea had cooled considerably."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools30(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He loved the cool of the early morning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools31(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The best time to water your plants is during the relative cool of morning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools32(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He really lost his cool when he heard about what happened."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools33(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools34(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools35(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools36(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools37(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools38(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools39(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools40(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools41(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools42(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools43(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools44(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools45(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools46(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools47(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools48(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools49(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools50(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools51(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools52(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools53(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools54(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools55(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools56(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools57(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools58(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools59(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools60(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools61(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools62(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools63(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools64(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools65(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools66(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools67(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools68(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools69(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools70(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools7000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools71(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools7100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools72(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools7200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools73(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools7300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools74(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools7400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools75(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools7500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools76(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools7600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools77(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools7700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools78(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools7800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools79(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools7900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools80(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools8000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools81(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools8100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools82(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools8200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools83(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools8300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools84(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools8400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools85(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools8500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools86(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools8600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools87(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools8700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools88(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools8800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools89(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools8900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcools90(String languageCode) async {
    // DOPSUM: CHANGE speakcool
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcools9000"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "cool"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kuːl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcool("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kuːl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcool("en-US"),
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
کوردی: فێنک، فێنکایی، سارد، ساردکە، هوونک،	ئارام، لەسەرەخۆ، کەمتەرخەم، ساردوسڕ،	بێ‌شەرم، ڕوودار، بێ‌حەیا، بێ‌شەرمانە،	هەوای فێنک، فێنکایی،	شوێن و جێی فێنک،	ئارامی، هێمنی، لەسەرەخۆیی
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) فێنک؛ نە سارد و نە گەرم"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Cooler weather is forecast for the weekend."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەشی فێنکتر بۆ کۆتایی هەفتە پێشبینی دەکرێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "cool", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools1("en-US"),
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
                                            "These plants prefer cooler temperatures."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم ڕووەکانە پلەی گەرمی فێنکتریان بەدڵترە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools2("en-US"),
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
                                            "Let's sit in the shade and keep cool."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "با لە سێبەرەکە دابنیشین و بە فێنکی بمێنین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools3("en-US"),
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
                                            "Store lemons in a cool dry place."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لیمۆ لە شوێنێکی فێنکی وشکدا هەڵبگرە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) جلێک کە بە فێنکی دەیهێڵێتەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Wear light, cool clothing but try to avoid shorts."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جلی سووکی فێنک لەبەربکە بەڵام هەوڵ بدە لە شۆرت بەدوور بە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ھاوەڵناو) ڕەنگێک کە دڵخۆشت دەکات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The bedroom was painted a lovely cool blue."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ژووری نووستنەکە بۆیەیەکی شینی جوانی هێورکەرەوە کرابوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) بۆ وتنی ئەوەی سەرسامی بە کەسێک یان شتێک کە بەدڵتە بەهۆی ئەوەی جوان و جیاوازن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Doesn't she look cool in those sunglasses?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەشخە دیار نیەە بەو چاویلکانەوە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools7("en-US"),
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
                                            "You look pretty cool with that new haircut."),
                                    ExampleSentenceKurdish(
                                        text: "زۆر شۆخ دیاریت بەو قژە تازەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools8("en-US"),
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
                                                text: "It's a cool movie."),
                                            ExampleSentenceKurdish(
                                                text: "فیلمێکی خۆشە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcools9("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcools9("en-US"),
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
                                                    "She has lots of cool ideas."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "زۆر بیرۆکەی جوانی هەیە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcools10("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcools10("en-US"),
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
                                                    "I think their new song's really cool."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پێموایە گۆرانییە تازەکەیان زۆر خۆشە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcools11("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcools11("en-US"),
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
                                  "٥. (ھاوەڵناو) بۆ باسکردنی شتێک کە حەزت لێیە و چێژی لێ دەبینی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We had such a cool time with Ed and his friends."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کاتێکی بەچێژمان لەگەڵ ئێد و هاوڕێکانی هەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools12("en-US"),
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
                                            "I really hope you can come—it'd be so cool!"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆر بە هیوام بێیت، زۆر ناوازە دەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools13("en-US"),
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
                                            "It's really cool you came back!"),
                                    ExampleSentenceKurdish(
                                        text: "زۆر خۆشە کە گەڕاویتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ھاوەڵناو) بۆ پیشاندانی ئەوەی ڕازیت بە شتێک یان پێشنیازێک پەسەند دەکەیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I was surprised that she got the job, but I'm cool with it (= it's not a problem for me)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەرسام بووم بەوەی کارەکەی وەرگرت، بەڵام ئاساییە لام."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools15("en-US"),
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
                                            "She's completely cool about what happened."),
                                    ExampleSentenceKurdish(
                                        text: "تەواو بێخەمە لەوەی ڕوویدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools16("en-US"),
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
                                            "Can you come at 10.30 tomorrow?’ ‘That's cool.’"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "'دەتوانیت سبەی لە ١٠:٣٠ بێیت؟' 'زۆرباشە.'"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ھاوەڵناو) لەسەرەخۆ"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Just stay cool and don't panic."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەنها لەسەرەخۆ بمێنەوە و مەپەشۆکێ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools18("en-US"),
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
                                            "He has a cool head (= he stays calm in an emergency)."),
                                    ExampleSentenceKurdish(
                                        text: "مێشکێکی لەسەرەخۆی هەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools19("en-US"),
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
                                            "He forced himself to count to ten and act cool."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆری لە خۆی کرد تاوەکو دە بژمێرێت و هێمنانە ڕەفتار بکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ھاوەڵناو) سارد و سڕ؛ بەشێوەیەک کە هاوڕێیانە و گەرموگوڕ نییە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They gave the prime minister a cool reception."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێشوازییەکی سارد و سڕیان لە سەرۆک وەزیران کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools21("en-US"),
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
                                            "He has been cool towards me ever since we had that argument."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سارد و سڕ بووە لەگەڵم لەوەتەی ئەو مشتومڕەمان هەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ھاوەڵناو) بۆ بڕە پارەیەک کە ئێجگار زۆرە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The car cost a cool thirty thousand."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئۆتۆمبێلەکە سی هەزار دۆلەری قەبەی تێدەچێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools23("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٠. (کردار) فێنک بوون یان فێنک کردن"),
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
                                    onPressed: () => speakcools24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools24("en-US"),
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
                                            "Melt the chocolate and allow it to cool slightly."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چکلێتەکە بتاوێنەوە و بهێڵە کەمێک فێنک بێتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools25("en-US"),
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
                                            "The evening breeze cooled her face."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "شنەبای ئێوارەکە ڕووخساری فێنک کردەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools26("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) هێوربوونەوە، ئارام بوونەوە، کەمتر بەجۆش"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I think we should wait until tempers have cooled."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێموایە دەبێت چاوەڕێ بین تاوەکو تووڕەییەکان هێور دەبنەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools27("en-US"),
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
                                            "Relations between them have definitely cooled (= they are not as friendly with each other as they were)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پەیوەندییەکانی نێوانیان بەدڵنیاییەوە سارد بووەتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools28("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools28("en-US"),
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
                                            "Her enthusiasm for the idea had cooled considerably."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جۆشوخرۆشی بۆ بیرۆکەکە زۆر کەمی کردبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools29("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools29("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (ناو) هەوا یان شوێنی فێنک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He loved the cool of the early morning."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "حەزی بە فێنکی بەیانییە شەبەقەکە بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools30("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools30("en-US"),
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
                                            "The best time to water your plants is during the relative cool of morning."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "باشترین کات بۆ ئاودانی ڕووەکەکانت لە ماوەی دەمی فێنکی بەیانییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools31("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools31("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (ناو) توانای کەسێک بۆ مانەوە بە لەسەرەخۆیی و ئارامی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He really lost his cool when he heard about what happened."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەواو هێمنی خۆی لەدەستدا کە زانی چی ڕوویداوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcools32("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcools32("en-US"),
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
- Adjective: cool (derived forms: coolest, cooler)
1. Neither warm nor very cold; giving relief from heat
"a cool autumn day"; "a cool room"; "cool summer dresses"; "cool drinks"; "a cool breeze"
 
2. Marked by calm self-control (especially in trying circumstances); unemotional (= coolheaded, nerveless)
"play it cool"; "keep cool";
 
3. [informal] Being satisfactory or in satisfactory condition (= all right, fine, o.k., OK, okay, hunky-dory [informal], alright, jake [N. Amer, Austral, NZ, informal])
 
4. [informal] Used of a quantity or amount (especially of money) for emphasis
"a cool million bucks"
 
5. [informal] Fashionable and attractive at the time; often skilled or socially adept
"he's a cool dude"; "that's cool"; "Mary's dress is really cool"; "it's not cool to arrive at a party too early"
 
6. Inducing the impression of coolness; used especially of greens and blues and violets when referring to colour
"cool greens and blues and violets"; "the cool sound of rushing water"
 
7. Psychologically cool and unenthusiastic; unfriendly, unresponsive or showing dislike
"relations were cool and polite"; "a cool reception"; "cool to the idea of higher taxes"

- Verb: cool (derived forms: cooling, cools, cooled)
1. Make cool or cooler (= chill, cool down)
"cool the food"; "cool down the food";
 
2. Lose heat (= chill, cool down)
"The air cooled considerably after the thunderstorm";
 
3. Lose intensity (= cool off, cool down)
"His enthusiasm cooled considerably";

- Noun: cool (derived forms: cools)
1. The quality of being at a refreshingly low temperature
"the cool of early morning"
 
2. Great coolness and composure under strain (= aplomb, assuredness, poise, sang-froid, sangfroid)
"keep your cool";
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
    videoId: 'rPe4yziWiOg',
    startSeconds: 277,
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
    videoId: 'hFZFjoX2cGg',
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'DPZzrlFCD_I',
    startSeconds: 221,
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
    videoId: 'hS2x1zl4rn0',
    startSeconds: 606,
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
    videoId: 'xkYved-ucGg',
    startSeconds: 2766,
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
    videoId: 'yBj9Qlpwjcs',
    startSeconds: 940,
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
    videoId: 'NCLZi2Rn_ug',
    startSeconds: 30,
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