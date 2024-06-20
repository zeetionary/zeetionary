import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycontact extends StatelessWidget {
// blank divider
  EnglishEntrycontact({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontact(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("contact"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts1(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I don't have much contact with my uncle."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts2(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We've been unable to establish radio contact with the pilot."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts3(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She's lost contact with her son."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts4(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I finally made contact with her in Paris."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts5(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There is little contact between the two organizations."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts6(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We're no longer in regular contact."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts7(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She always avoided contact with the press."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts8(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He'd prefer a job where he doesn't have to be in direct contact with the public."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts9(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In her job she often comes into contact with lawyers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts10(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Children should be brought into contact with poetry at an early age."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts11(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Even the US, which has no embassy there, is beginning to forge contacts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts12(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company has maintained trade contacts with India."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts13(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I've made some useful contacts in journalism."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts14(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She has several contacts in New York."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts15(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He has a contact at the White House."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts16(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He used his contacts to get his son a publishing job."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts17(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The disease is spread by contact."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts18(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His fingers were briefly in contact with the ball."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts19(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This substance should not come into contact with food."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts20(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This pesticide kills insects on contact."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts21(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This chemical is liable to explode on contact with water."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts22(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "For a brief moment their lips were in contact."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts23(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The switches close the contacts and complete the circuit."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts24(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I've been trying to contact you all day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts25(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Witnesses to the accident are asked to contact the police."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts26(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Anyone interested is requested to contact a member of the committee."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts27(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He can be contacted by phone on the number given below."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts28(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Please do not hesitate to contact me if you have any questions."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts29(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts30(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts31(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts32(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts33(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts34(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts35(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts36(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts37(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts38(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts39(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts40(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts41(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts42(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts43(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts44(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts45(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts46(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts47(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts48(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts49(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts50(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts51(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts52(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts53(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts54(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts55(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts56(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts57(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts58(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts59(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts60(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts61(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts62(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts63(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts64(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts65(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts66(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts67(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts68(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts69(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts70(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts7000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts71(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts7100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts72(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts7200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontacts73(String languageCode) async {
    // DOPSUM: CHANGE speakcontact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontacts7300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "contact"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒntækt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontact("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːntækt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontact("en-US"),
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
کوردی: لێک‌کەوتن، لێکەوتن، بەریەک‌کەوتن، پێک‌کەوتن، پێکادان،	لێک‌خشان،	پێوەندی، تێکەڵی،	دیدەنی، یەکتربینی،	نزیکی، نزیک‌بوونەوە، قەرە، توخن(کەوتن)، نزیکێتی، لێک‌نزیکی،	لێک‌کەوتن (ئێلیکتریکی)،	لەبەر،	کلیل (کارەبا)
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) پەیوەندیکردن لەگەڵ کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I don't have much contact with my uncle."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھێندە تێکەڵیم لەگەڵ مامم/خاڵم نییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "contact", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts1("en-US"),
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
                                            "We've been unable to establish radio contact with the pilot."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نەمانتوانیوە پەیوەندی ڕادیۆیی لەگەڵ فڕۆکەوانەکە ببەستین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts2("en-US"),
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
                                                    "She's lost contact with (= no longer sees or writes to) her son."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تێکەڵیی لەگەڵ کوڕەکەی نەماوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontacts3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontacts3("en-US"),
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
                                                    "I finally made contact with (= succeeded in speaking to or meeting) her in Paris."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لە کۆتاییدا لە پاریس چاوم پێی کەوت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontacts4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontacts4("en-US"),
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
                                                    "There is little contact between the two organizations."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پەیوەندیی کەم ھەیە لە نێوان دوو دامەزراوەکەدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontacts5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontacts5("en-US"),
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
                                                    "We're no longer in regular contact."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "چیتر لە پەیوەندیدا نین."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontacts6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontacts6("en-US"),
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
                                  "٢. (ناو) بینینی کەسێک یان ئەوەی پێویست بێت مامەڵە لەگەڵ شتێک بکەیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She always avoided contact with the press."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەمیشە دووردەکەوتەوە لە بینینی ڕۆژنامەنووسان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts7("en-US"),
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
                                            "He'd prefer a job where he doesn't have to be in direct contact with the public."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کارێکی پێخۆشە کە پێویست نەکات تێکەڵی ڕاستەوخۆی لەگەڵ خەڵکیدا ھەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts8("en-US"),
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
                                            "In her job she often comes into contact with (= meets) lawyers."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە کارەکەیدا زۆرجار مامەڵەی لەگەڵ پارێزەراندا دەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts9("en-US"),
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
                                            "Children should be brought into contact with poetry at an early age."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "منداڵان دەبێت لە تەمەنێکی کەمدا بە ھۆنراوە ئاشنا بکرێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) بۆنەیەک کە تێیدا کەسێک دەبینیت یان پەیوەندی لەگەڵ دەبەستیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Even the US, which has no embassy there, is beginning to forge contacts."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەنانەت ئەمریکاش، کە ھیچ باڵیۆزخانەی لەوێ نییە، خەریکە دەست دەکات بە درووستکردنی پەیوەندی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts11("en-US"),
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
                                            "The company has maintained trade contacts with India."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆمپانیاکە پەیوەندیی بازرگانیی لەگەڵ ھندستان پاراستووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) کەسێکی ناسیاو، بەتایبەتی کەسێک کە یارمەتیدەر دەبێت بۆت لە کاردا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I've made some useful contacts in journalism."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەندێک ناسیاویم پەیداکردووە لە ڕۆنامەوانیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts13("en-US"),
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
                                            "She has several contacts in New York."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەندێک ناسیاوی لە نیویۆرک درووستکردووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts14("en-US"),
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
                                            "He has a contact at the White House."),
                                    ExampleSentenceKurdish(
                                        text: "ناسیاوێکی لە کۆشكی سپی ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts15("en-US"),
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
                                            "He used his contacts to get his son a publishing job."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناسیاوەکانی بەکارھێنا بۆ دەستخستنی کارێکی بڵاوکردنەوە بۆ کوڕەکەی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ناو) بەرکەوتن/دەستدان لە شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The disease is spread by contact."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نەخۆشییەکە بە بەرکەوتن بڵاودەبێتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts17("en-US"),
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
                                            "His fingers were briefly in contact with the ball."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پەنجەکانی بۆ کەمێک بەر تۆپەکە کەوتن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts18("en-US"),
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
                                                    "This substance should not come into contact with food."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەم مادەیە نابێت بەرکەوتنی بە خواردن ھەبێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontacts19("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontacts19("en-US"),
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
                                                    "This pesticide kills insects on contact (= as soon as it touches them)."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەم مێرووکوژە مێروو دەکوژێت لەگەڵ بەرکەوتندا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontacts20("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontacts20("en-US"),
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
                                                    "This chemical is liable to explode on contact with water."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەم مادە کیمیاییە دەکرێت بتەقێتەوە لەگەڵ بەرکەوتن بە ئاو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontacts21("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontacts21("en-US"),
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
                                                    "For a brief moment their lips were in contact."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بۆ ساتێکی کەم لێوەکانیان بەریەک کەوتن."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontacts22("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontacts22("en-US"),
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
                              text: "٦. (ناو) پەیوەندیی کارەبایی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The switches close the contacts and complete the circuit."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سویچەکان کلیلەکان دادەخەن و کۆتایی بە سووڕەکە دێنن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts23("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) پەیوەندیکردن لەگەڵ کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I've been trying to contact you all day."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەواوی ڕۆژەکە ھەوڵم داوە پەیوەندیت پێوە بکەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts24("en-US"),
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
                                            "Witnesses to the accident are asked to contact the police."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "شایەتحاڵانی ڕووداوەکە داوایان لێدەکرێت پەیوەندی بە پۆلیسەوە بکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontacts25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontacts25("en-US"),
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
                                                    "Anyone interested is requested to contact a member of the committee."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەرکەس خوازیارە دەتوانێت پەیوەندی بە ئەندامێکی لیژنەکەوە بکات."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontacts26("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontacts26("en-US"),
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
                                                    "He can be contacted by phone on the number given below."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دەتوانرێت بە موبایل پەیوەندی پێوە بکرێت بەو ژمارەیەی خوارەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontacts27("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontacts27("en-US"),
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
                                                    "Please do not hesitate to contact me if you have any questions."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تکایە دوودڵ مەبە لە پەیوەندیکردن پێمەوە ئەگەر ھەر پرسیارێکت ھەیە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontacts28("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontacts28("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
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
- Noun: contact (derived forms: contacts)
1. Close interaction
"they kept in daily contact"; "they claimed that they had been in contact with extraterrestrial beings"
 
2. The act of touching physically (= physical contact)
"her fingers came in contact with the light switch";
 
3. The state or condition of touching or of being in immediate proximity
"litmus paper turns red on contact with an acid"
 
4. The physical coming together of two or more things (= impinging, striking)
"contact with the pier scraped paint from the hull";
 
5. A person who is in a position to give you special assistance (= middleman)
"he used his business contacts to get an introduction to the governor";
 
6. A channel for communication between groups (= liaison, link, inter-group communication)
"he provided a contact with the guerrillas";
 
7. (electronics) a junction where things (as two electrical conductors) touch or are in physical contact (= tangency)
"they forget to solder the contacts";
 
8. A communicative interaction (= touch)
"the pilot made contact with the base";
 
9. A thin curved glass or plastic lens designed to fit over the cornea in order to correct vision or to deliver medication (= contact lens)

- Verb: contact (derived forms: contacting, contacts, contacted)
1. Be in or establish communication with (= reach, get through, get hold of)
"He never contacted his children after he emigrated to Australia";
 
2. Be in direct physical contact with; make contact (= touch, adjoin, meet)
"The wire must not contact the metal cover"; "The surfaces contact at this point";
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
  final String _videoId = 's0JXJwgHMVs';
  final double _startSeconds = 70;

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
  final String _videoId = 'ZQGfOrVyiTQ';
  final double _startSeconds = 786;

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
  final String _videoId = 'reSFhA53VGg';
  final double _startSeconds = 99;

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
  final String _videoId = 'TDDqzapYwDY';
  final double _startSeconds = 46;

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
  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 1035;

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
  final String _videoId = 'xreA0vkHMBY';
  final double _startSeconds = 1979;

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
  final String _videoId = 'X2FS0s95o_Q';
  final double _startSeconds = 87;

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