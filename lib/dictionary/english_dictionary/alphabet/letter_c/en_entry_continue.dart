import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycontinue extends StatelessWidget {
// blank divider
  EnglishEntrycontinue({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontinue(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("continue"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues1(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Police have not yet made any arrests, but investigations continue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues2(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The exhibition continues until 25 July."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues3(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Fighting continued for four years."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues4(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The rain will continue into the evening."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues5(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Unions declared that the strike would continue indefinitely."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues6(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Life continued on as normal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues7(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The tradition continues to this day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues8(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The violence continues unabated."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues9(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The economy is continuing to grow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues10(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She wanted to continue working until she was 60."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues11(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He vowed to continue fighting."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues12(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We will continue to work closely with our international partners on this."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues13(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He continued to ignore everything I was saying."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues14(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She moved to New York to continue her studies."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues15(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He continued his work in secret."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues16(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Are you going to continue with the project?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues17(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She wanted to continue working after the baby was born."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues18(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He continued on his way."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues19(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The road continues through the village of Knightwick."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues20(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After stopping for a quick drink, they continued on their way."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues21(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She will continue in her present job until a replacement can be found."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues22(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I want you to continue as project manager."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues23(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The story continues in our next issue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues24(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They had to continue their journey on foot."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues25(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Please continue—I didn't mean to interrupt."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues26(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She simply turned her back to me and continued her phone conversation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues27(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues28(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues29(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues30(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues31(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues32(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues33(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues34(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues35(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues36(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues37(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues38(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues39(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues40(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues41(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues42(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues43(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues44(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues45(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues46(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues47(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues48(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues49(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues50(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues51(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues52(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues53(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues54(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues55(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues56(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues57(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues58(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues59(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues60(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues61(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues62(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues63(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues64(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues65(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues66(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues67(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues68(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues69(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues70(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues7000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues71(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues7100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues72(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues7200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues73(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues7300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues74(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues7400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues75(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues7500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues76(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues7600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues77(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues7700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues78(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues7800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontinues79(String languageCode) async {
    // DOPSUM: CHANGE speakcontinue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontinues7900"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "continue"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈtɪnjuː/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontinue("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈtɪnjuː/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontinue("en-US"),
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
کوردی: درێژە پێدان، بەردەوام بوون، بە دوادا چوون
"""),
                          const DefinitionKurdish(
                              text: "١. (کردار) بەردەوام بوون"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Police have not yet made any arrests, but investigations continue."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پۆلیس هێشتا کەسیان دەستگیر نەکردووە، بەڵام لێکۆڵینەوەکان بەردەوامن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "continue", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontinues1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontinues1("en-US"),
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
                                            "The exhibition continues until 25 July."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێشانگاکە تاوەکو ٢٥ ـی تەممووز بەردەوام دەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontinues2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontinues2("en-US"),
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
                                                    "Fighting continued for four years."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "شەڕکردن بۆ چوار ساڵ بەردەوام بوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontinues3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontinues3("en-US"),
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
                                                    "The rain will continue into the evening."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بارانەکە تاوەکو شەو بەردەوام دەبێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontinues4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontinues4("en-US"),
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
                                                    "Unions declared that the strike would continue indefinitely."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "سەندیکاکان ڕایانگەیاند مانگرتنەکە تا کاتێکی نادیار بەردەوام دەبێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontinues5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontinues5("en-US"),
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
                                                    "Life continued on as normal."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ژیان بەشێوەیەکی ئاسایی بەردەوام بوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontinues6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontinues6("en-US"),
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
                                                    "The tradition continues to this day."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "نەریتەکە تا ئەم ڕۆژە بەردەوامە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontinues7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontinues7("en-US"),
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
                                                    "The violence continues unabated."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "توندوتیژییەکە بێ دامرکان بەردەوامە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontinues8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontinues8("en-US"),
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
                                                    "The economy is continuing to grow."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئابووری بەردەوامە لە گەشە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontinues9("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontinues9("en-US"),
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
                                  "٢. (کردار) بەردەوام بوون لە کردنی شتێک بەبێ وەستان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She wanted to continue working until she was 60."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەیویست بەردەوام بێت لە کارکردن تاوەکو ٦٠ ساڵی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontinues10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontinues10("en-US"),
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
                                        text: "He vowed to continue fighting."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەڵێنیدا لە شەڕکردن بەردەوام بێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontinues11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontinues11("en-US"),
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
                                                    "We will continue to work closely with our international partners on this."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بەردەوام دەبین لە کارکردن لە نزیکەوە لەسەر ئەمە لەگەڵ هاوپەیمانە نێودەوڵەتییەکانمان."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontinues12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontinues12("en-US"),
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
                                                    "He continued to ignore everything I was saying."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بەردەوام بوو لە پشتگوێ خستنی هەر شتێک من دەموت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontinues13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontinues13("en-US"),
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
                                                    "She moved to New York to continue her studies."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "چوو بۆ نیویۆرک بۆ درێژەدان بە خوێندنەکەی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontinues14("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontinues14("en-US"),
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
                                                    "He continued his work in secret."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بە نهێنی لە کارەکەی بەردەوام بوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontinues15("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontinues15("en-US"),
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
                                                    "Are you going to continue with the project?"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بەردەوام دەبیت لە پڕۆژەکە؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontinues16("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontinues16("en-US"),
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
                                                    "She wanted to continue working after the baby was born."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دەیویست بەردەوام بێت لە کارکردن لە دوای لەدایکبوونی منداڵەکەی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcontinues17("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcontinues17("en-US"),
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
                                  "٣. (کردار) بەردەوام بوون بە ڕۆشتن بە ئاراستەیەکدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "He continued on his way."),
                                    ExampleSentenceKurdish(
                                        text: "لەسەر ڕێگاکەی بەردەوام بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontinues18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontinues18("en-US"),
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
                                            "The road continues through the village of Knightwick."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێگاکە بە گوندی نایتویکدا بەردەوام دەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontinues19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontinues19("en-US"),
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
                                            "After stopping for a quick drink, they continued on their way."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە دوای وەستانیان بۆ خواردنەوەیەکی خێرا، لەسەر ڕێگاکەیان بەردەوام بوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontinues20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontinues20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) مانەوە لە کارێکی دیاریکراو یان دۆخێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She will continue in her present job until a replacement can be found."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە کارەکەی ئێستای بەردەوام دەبێت تاوەکو جێگرەوەیەک دەدۆزرێتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontinues21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontinues21("en-US"),
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
                                            "I want you to continue as project manager."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەمەوێت وەک بەڕێوبەری پڕۆژەکە بمێنیتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontinues22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontinues22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) دووبارە دەستپێکردنەوەی شتێک لە دوای وەستان بۆ ماوەیەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                      text:
                                          "The story continues in our next issue.",
                                      note:
                                          "Also: The story will be continued in our next issue.",
                                    ),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چیرۆکەکە بەردەوام دەبێت لە چاپی داهاتوومان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontinues23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontinues23("en-US"),
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
                                            "They had to continue their journey on foot."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێویست بوو گەشتەکەیان بە پێ تەواو بکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontinues24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontinues24("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) دەستکردنەوە بە قسەکردن لە دوای وەستان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Please continue—I didn't mean to interrupt."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تکایە بەردەوام بە، مەبەستم نەبوو بتپچڕێنم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontinues25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontinues25("en-US"),
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
                                            "She simply turned her back to me and continued her phone conversation."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە سادەیی پشتی لێم کرد و بەردەوام بوو لە پەیوەندییە تەلەفۆنیەکەی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontinues26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontinues26("en-US"),
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
- Verb: continue (Derived forms: continued, continues, continuing)
1. Resume or proceed in a certain state, condition, or activity (= go on, proceed, go along, keep)
"We continued to work into the night";

2. Keep talking; follow up (= go on, carry on, proceed)
"please continue";
 
3. Keep or maintain in unaltered condition; cause to remain or last (= uphold, carry on, bear on, preserve)
"continue the family tradition";
 
4. Move ahead; travel onward in time or space (= proceed, go forward, move ahead)
"She continued in the direction of the hills";
 
5. Allow to remain in a place or position or maintain a property or feature (= retain, keep, keep on)
"We cannot continue several servants any longer";

6. Do something repeatedly and showing no intention to stop (= persist in)
"We continued our research into the cause of the illness";

7. Resume after an interruption
"The demonstration continued after a break for lunch"
 
8. Be in the same place, position, or situation for longer (= stay, stay on, remain)
"She continued as deputy mayor for another year";

9. Span an interval of distance, space or time (= cover, extend)
"The Archipelago continues for another 500 miles";
 
10. Exist over a prolonged period of time
"The bad weather continued for two more weeks"
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
    videoId: 'https://youtu.be/R_fZjGm2OrM?t=',
    startSeconds: 437,
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
    videoId: 'https://youtu.be/MGO4_8YRKro?t=',
    startSeconds: 714,
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
    videoId: 'https://youtu.be/VACpBe5PZDU?t=',
    startSeconds: 427,
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
    videoId: 'https://youtu.be/H7hfOr9Y8BY?t=',
    startSeconds: 173,
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
    videoId: 'https://youtu.be/R8MAW6N1Jhk?t=',
    startSeconds: 74,
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
    videoId: 'https://youtu.be/dhgEpr87Yac',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/1IY93VzCa-Y?t=',
    startSeconds: 651,
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