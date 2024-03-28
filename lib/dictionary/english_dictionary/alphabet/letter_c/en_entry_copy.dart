import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycopy extends StatelessWidget {
// blank divider
  EnglishEntrycopy({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcopy(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("copy"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys1(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The thieves replaced the original painting with a copy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys2(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He made careful copies of all the documents he found in the library."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys3(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I will send you a copy of the report."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys4(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I don't keep copies of my own letters."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys5(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The book sold 20 000 copies within two weeks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys6(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are a limited number of copies still available."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys7(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This will make great copy for the advertisement."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys8(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Could I have ten copies of this page, please?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys9(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I ran off a couple of copies of the letter."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys10(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He taught himself by copying paintings in the Louvre."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys11(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The product has been widely copied by other manufacturers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys12(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The monks spent their days copying manuscripts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys13(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The children copied the sentences from the whiteboard."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys14(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You do not have to copy down every word in a lecture."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys15(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The software has been illegally copied."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys16(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You can copy the data to your new laptop in the usual way."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys17(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Use the clipboard to copy and paste information from websites."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys18(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She copies everything her sister does."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys19(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their tactics have been copied by other terrorist organizations."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys20(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was punished by his teacher for copying in the exam."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys21(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys22(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys23(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys24(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys25(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys26(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys27(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys28(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys29(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys30(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys31(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys32(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys33(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys34(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys35(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys36(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys37(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys38(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys39(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys40(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys41(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys42(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys43(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys44(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys45(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys46(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys47(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys48(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys49(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys50(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys51(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys52(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys53(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys54(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys55(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys56(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys57(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys58(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys59(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys60(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys61(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys62(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys63(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys64(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys65(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys66(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys67(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys68(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys69(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys70(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys7000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys71(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys7100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys72(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys7200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys73(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys7300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys74(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys7400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys75(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys7500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcopys76(String languageCode) async {
    // DOPSUM: CHANGE speakcopy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcopys7600"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "copy"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒpi/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcopy("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːpi/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcopy("en-US"),
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
کوردی: کۆپی، ڕوونووس، نوسخە، لێ‌هەڵگیراوە، ڕایش، ڕووە، ڕووگیراوە، فۆتۆکۆپی،	(کتێب) دانە، بەرگ، نوسخە،	(ڕۆژنامە) دانە، ژمارە، دەنک، دانە،	بابەت، مژار، نڤیسار (ڕۆژنامە و کۆڤار)،	ئاگاداری
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) شتێک کە هەمان شتە لەگەڵ شتێکی دیکەدا لە شێوەدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The thieves replaced the original painting with a copy."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دزەکان تابلۆ ڕەسەنەکەیان گۆڕییەوە لەگەڵ دانەیەکی کۆپیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "copy", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys1("en-US"),
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
                                            "He made careful copies of all the documents he found in the library."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەبەرگیراوەی هەموو بەڵگەنامەکانی درووستکرد کە لە کتێبخانەکەدا دۆزییەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys2("en-US"),
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
                                            "I will send you a copy of the report."),
                                    ExampleSentenceKurdish(
                                        text: "کۆپپیەکی ڕاپۆرتەکەت بۆ دەنێرم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys3("en-US"),
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
                                            "I don't keep copies of my own letters."),
                                    ExampleSentenceKurdish(
                                        text: "کۆپی نامەکانم ناپارێزم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) یەک نموونەی چاپکراو لە کتێبێک کە ڕێژەیەکی زۆری لێ چاپکراوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The book sold 20 000 copies within two weeks."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کتێبەکە ٢٠٠٠٠ دانەی لێ فرۆشرا لە دوو هەفتەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys5("en-US"),
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
                                            "There are a limited number of copies still available."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ژمارەیەکی دیاریکراو لە کۆپی هێشتا بەردەستە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) بابەتی نووسراو کە بۆ ئەوەیە لە ڕۆژنامەیەک، گۆڤارێک، هتد بڵاوبکرێتەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This will make great copy for the advertisement."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەمە بابەتێکی باش دەبێت بۆ بانگەشەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) کۆپییەکی بەڵگەنامەیەک کە بە ئامێری لەبەرگرتنەوە کراوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Could I have ten copies of this page, please?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تکایە دەتوانیت ١٠ کۆپی ئەم پەڕەیەم بۆ بکەیت؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys8("en-US"),
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
                                            "I ran off a couple of copies of the letter."),
                                    ExampleSentenceKurdish(
                                        text: "چەند کۆپییەکی نامەکەم کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) لەبەرگرتنەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He taught himself by copying paintings in the Louvre."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خۆی فێرکرد بە کۆپیکردنی تابلۆکانی مۆزەخانەی لۆڤەر."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys10("en-US"),
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
                                            "The product has been widely copied by other manufacturers."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەرهەمەکە بە بەرفراوانی لەلایەن بەرهەمهێنەرەکانی دیکەوە کۆپیکراوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) نووسینی شتێک بەو شێوەیەی کە لە شوێنێکی دیکەدا نووسراوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The monks spent their days copying manuscripts."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕەبەنەکان ڕۆژەکەیان بەسەربرد بە لەبەرگرتنەوەی بەڵگەنامە کۆنەکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys12("en-US"),
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
                                            "The children copied the sentences from the whiteboard."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "منداڵەکان ڕستەکانی سەر بۆردەکەیان نووسییەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys13("en-US"),
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
                                            "You do not have to copy down every word in a lecture."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێویست ناکات هەموو وشەیەکی وانەیەک بنووسیتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) درووستکردنی کۆپییەکی تەواوی وشانێکی داتایەک، پڕۆگرامێک، هتد بۆ ئەوەی دووبارە بەکاریبێنیتەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The software has been illegally copied."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نەرمامێرەکە بە نایاسایی کۆپیکرا بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys15("en-US"),
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
                                            "You can copy the data to your new laptop in the usual way."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەتوانیت داتاکە کۆپی بکەیتە لاپتۆپەکە تازەکەت بەشێوەی ئاسایی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys16("en-US"),
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
                                            "Use the clipboard to copy and paste information from websites."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کلیپبۆردەکە بەکاربێنە بۆ کۆپی و لکاندنی زانیاری لە وێبسایتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) لاسایی کردنەوەی کەسێکی دیکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She copies everything her sister does."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لاسایی هەر شتێک دەکاتەوە خوشکەکەی دەیکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys18("en-US"),
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
                                            "Their tactics have been copied by other terrorist organizations."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تاکتیکەکانیان لەلایەن ڕێکخراوە تیرۆریستییەکانی دیکەوە کۆپیکراوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) گزیکردن لە تاقیکردنەوەدا بە نووسینەوەی وەڵامی کەسێکی دیکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He was punished by his teacher for copying in the exam."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەلایەن مامۆستاکەیەوە سزادرا بۆ گزیکردن لە تاقیکردنەوەکەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcopys20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcopys20("en-US"),
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
- Noun: copy (derived forms: copies)
1. (law) a reproduction of a written record (e.g. of a legal or school record) (= transcript)
 
2. A thing made to be similar or identical to another thing
"she made a copy of the designer dress"; "the clone was a copy of its ancestor"
 
3. Matter to be printed; exclusive of graphical materials (= written matter)
 
4. Material suitable for a journalistic account
"catastrophes make good copy"

- Verb: copy (derived forms: copies, copied, copying)
1. Reproduce on paper
"The students were made to copy the alphabet over and over"
 
2. Reproduce someone's behaviour or looks (= imitate, simulate)
"Children often copy their parents or older siblings";
 
3. (biology) reproduce or make an exact copy of (= replicate)
"copy the genetic information";
 
4. Make a replica of (= re-create, recreate)
"copy that drawing";
 
5. (radio) receive a transmission successfully
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
    videoId: '7LFkN7QGp2c',
    startSeconds: 61,
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
    videoId: 'oFKbvpXJ83w',
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'b7ITL2VDH5Q',
    startSeconds: 28,
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
    videoId: 'zjbKILsYYq0',
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

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'xhM0Htv39aE',
    startSeconds: 222,
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
    videoId: 'poS7rZ7-_RU',
    startSeconds: 75,
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
    videoId: 'yRmOWcWdQAo',
    startSeconds: 1142,
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