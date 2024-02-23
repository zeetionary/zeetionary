import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryclear extends StatelessWidget {
  // blank divider
  EnglishEntryclear({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclear(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("clear"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears1(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She gave me clear and precise directions."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears2(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Are these instructions clear enough?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears3(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Your meaning needs to be clear."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears4(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You'll do as you're told—is that clear?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears5(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was quite clear about her reasons for leaving."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears6(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This is a clear case of fraud."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears7(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She won the election by a clear majority."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears8(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There is clear evidence that he was involved with the gang."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears9(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was quite clear to me that she was lying."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears10(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My memory is not clear on that point."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears11(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'm still not clear what the job involves."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears12(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'm still not clear whether she wants to come or not."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears13(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Everyone must be clear about their responsibilities."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears14(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You'll need to keep a clear head for your interview."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears15(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The photo wasn't very clear."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears16(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The voice on the phone was clear and strong."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears17(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The water was so clear we could see the bottom of the lake."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears18(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Items must be carried in a clear plastic bag."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears19(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "On a clear day, you can see the mountains in the distance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears20(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Proper hydration and a balanced diet can contribute to achieving clear skin."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears21(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Most roads are now clear of snow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears22(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You won't get a clear view of the stage from here."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears23(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I have no regrets, and can leave the company with a clear conscience."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears24(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They were still not clear of all suspicion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears25(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We are finally clear of debt."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears26(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The plane climbed until it was clear of the clouds."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears27(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Make sure you park your car clear of the entrance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears28(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Allow three clear days for the letter to arrive."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears29(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They had made a clear profit of £2 000."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears30(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was several hours before the road was cleared after the accident."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears31(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's your turn to clear the table."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears32(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They started clearing a path through the dense jungle."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears33(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She cleared a space on the sofa for him to sit down."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears34(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I cleared my desk of papers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears35(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The streets had been cleared of snow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears36(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Security officials tried to clear the area, fearing more bomb attacks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears37(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Police were still clearing the streets when the bomb went off."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears38(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The traffic took a long time to clear after the accident."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears39(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The boy's lungs cleared and he began to breathe more easily."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears40(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The mist will clear by afternoon."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears41(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As the smoke cleared, two fighter planes came into view."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears42(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The next day the weather cleared."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears43(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The sky cleared after the storm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears44(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The rain is clearing slowly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears45(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The muddy water slowly cleared."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears46(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As her mind cleared, she remembered what had happened."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears47(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I went for a walk to clear my head."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears48(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His face suddenly cleared as understanding dawned."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears49(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was cleared of all charges against her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears50(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Throughout his years in prison, he fought to clear his name."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears51(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears5151"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears52(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears5252"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears53(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears5353"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears54(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears5454"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears55(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears5555"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears56(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears5656"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears57(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears5757"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears58(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears5858"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears59(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears5959"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears60(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6060"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears61(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6161"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears62(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6262"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears63(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6363"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears64(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6464"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears65(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6565"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears66(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6666"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears67(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6767"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears68(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6868"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears69(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears69"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclears70(String languageCode) async {
    // DOPSUM: CHANGE speakclear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears70"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "clear"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /klɪə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclear("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /klɪr/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclear("en-US"),
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
کوردی: ڕوون، تەنک، ڕووتەنک، زوڵاڵ، ساف، ئەودیودیار،	سا، ساو، ساماڵ، تاووساو، تاووبان، تاو(کەوتوو)، بێ‌هەورهەڵا، خۆرکەوتوو،	دیار، ئاشکرا، خۆیا، ڕۆشن، ڕوون، بەرچاو، ڕاشکاو،	ڕەوان،	دڵنیا،	تەواو، ڕەبەق، گشت، هەموو،	ڕەها، ئازاد، دانەخراو، نەگیراو، بێ‌لەمپەر، بێ‌کۆسپ،	کراوە، ئاواڵە،	چۆڵ، خاڵی، بەتاڵ،	خەڵوەت،	دوور، بە دوور لە،	پوختە (خەرج‌وبار لێ‌دەرکراو)، بە ڕاشکاوی، بە ڕوونی، بەتەواوەتی، دوور، بە دوور لە، دوور لە
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) ڕوون و ئاسان بۆ تێگەشتن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She gave me clear and precise directions."),
                                    ExampleSentenceKurdish(
                                        text: "ئاراستەی ڕوون و وردی پێدام."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "clear", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears1("en-US"),
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
                                            "Are these instructions clear enough?"),
                                    ExampleSentenceKurdish(
                                        text: "ئەم ڕێنماییانە تەواو ڕوونن؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears2("en-US"),
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
                                                    "Your meaning needs to be clear."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "مەبەستت دەبێت ڕوون بێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclears3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclears3("en-US"),
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
                                                    "You'll do as you're told—is that clear?"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەوە دەکەیت کە پێت دەوترێت، ڕوونە؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclears4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclears4("en-US"),
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
                                                    "She was quite clear about her reasons for leaving."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تەواو ڕوون بوو سەبارەت بە هۆکارەکانی بۆ ڕۆشتن."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclears5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclears5("en-US"),
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
                                  "٢. (ھاوەڵناو) ڕوون و ئاشکرا، بەبێ هێشتنەوەی هیچ گومانێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "This is a clear case of fraud."),
                                    ExampleSentenceKurdish(
                                        text: "ئەمە کەسێکی ڕوونی دەستبڕییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears6("en-US"),
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
                                            "She won the election by a clear majority."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەڵبژاردنەکەی بردەوە بە زۆرینەیەکی ڕەها."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears7("en-US"),
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
                                                    "There is clear evidence that he was involved with the gang."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بەڵگەی تەواو هەیە کە بەشێک بوو لە گرووپە تاوانکارییەکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclears8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclears8("en-US"),
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
                                                    "It was quite clear to me that she was lying."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تەواو بوو ڕوون بوو بۆم کە درۆی دەکرد."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclears9("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclears9("en-US"),
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
                                  "٣. (ھاوەڵناو) بەبێ گومان، وتنی ئەوەی کە دەتەوێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "My memory is not clear on that point."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "یادەوەریم تەواو نییە سەبارەت بەو خاڵە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears10("en-US"),
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
                                            "I'm still not clear what the job involves."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هێشتا دڵنیا نیم کە کارەکە چی لەخۆدەگرێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears11("en-US"),
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
                                                    "I'm still not clear whether she wants to come or not."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "هێشتا دڵنیانیم کە دەیەوێت بێت یان نا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclears12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclears12("en-US"),
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
                                                    "Everyone must be clear about their responsibilities."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "هەموان دەبێت بەرچاوڕوون بن سەبارەت بە ئەرکەکانیان."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclears13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclears13("en-US"),
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
                              text: "٤. (ھاوەڵناو) بیرکردنەوە بە ڕوونی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "You'll need to keep a clear head for your interview."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێویستە مێشکت ساف بێت بۆ چاوپێکەوتنەکەت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ھاوەڵناو) ئاسان بۆ بینین یان تێگەشتن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "The photo wasn't very clear."),
                                    ExampleSentenceKurdish(
                                        text: "وێنەکە زۆر ڕوون نەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears15("en-US"),
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
                                            "The voice on the phone was clear and strong."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەنگی ناو تەلەفۆنەکە ڕوون و بەهێز بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ھاوەڵناو) شتێک کە دەتوانیت بە ناویدا ببینیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The water was so clear we could see the bottom of the lake."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئاوەکە هێندە ڕوون بوو کە دەتتوانی بنی دەریاچەکە ببینیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears17("en-US"),
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
                                            "Items must be carried in a clear plastic bag."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "شت دەبێت لەناو کیسەی پلاستیکی ڕووندا هەڵبگیردرێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ھاوەڵناو) ئاسمانی ساماڵ؛ بەبێ هەور و تەم"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "On a clear day, you can see the mountains in the distance."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ڕۆژێکی ساماڵدا دەتوانیت چیاکان لە دوورەوە ببینیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ھاوەڵناو) پێستێک کە برین و خاڵی پێوە نییە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Proper hydration and a balanced diet can contribute to achieving clear skin."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئاوخواردنەوەی گونجاو و نانخواردنی هاوسەنگ دەکرێت یارمەتیدەر بێت لە هەبوونی پێستێکی پاک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ھاوەڵناو) بەبێ کۆسپ و ئاستەنگ؛ بەبێ هیچ ڕێگرییەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Most roads are now clear of snow."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆرێک لە ڕێگاکان ئێستا بێ‌کۆسپن لە بەفر."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears21("en-US"),
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
                                            "You won't get a clear view of the stage from here."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دیمەنێکی ڕوونی ستەیجەکەت لێرەوە نابێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١١. (ھاوەڵناو) هەستنەکردن بە تاوان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I have no regrets, and can leave the company with a clear conscience."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هیچ داخێکم نییە، و دەتوانم کۆمپانیاکە بە دڵ‌ودەروونی ئاسوودەوە جێبهێڵم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears23("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (ھاوەڵناو) بەبێ شتێکی ناخۆش"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They were still not clear of all suspicion."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هێشتا بە تەواوی لە گومان پاکنەبووەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears24("en-US"),
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
                                        text: "We are finally clear of debt."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەکۆتاییدا لە قەرز پاکبووینەتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (ھاوەڵناو) دوور لە شتێک؛ دەستنەدان لێی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The plane climbed until it was clear of the clouds."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فڕۆکەکە بەرزبووەوە تاوەکو لە هەورەکان دوورکەوتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears26("en-US"),
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
                                            "Make sure you park your car clear of the entrance."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دڵنیابەرەوە ئۆتۆمبێلەکە دوور لە دەروازەکە دەوەستێنیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears27("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٤. (ھاوەڵناو) هەموو، تەواو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Allow three clear days for the letter to arrive."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێگە بە سێ ڕۆژی تەواو بدە بۆ نامەکە تا بگات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears28("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears28("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٥. (ناو) بڕە پارەی قازانج لە دوای ئەوەی باج، خەرجی، هتد دەردەکرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They had made a clear profit of £2 000."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "قازانجی پوختەی ٢,٠٠٠ پاوەندیان کردبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears29("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears29("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٦. (کردار) سڕینەوەی ئەو شتانەی کە نەویستراون یان پێویست نین"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It was several hours before the road was cleared after the accident."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چەند کاتژمێرێکی پێچوو تاوەکو ڕێگا پاککرایەوە لە دوای ڕووداوەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears30("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears30("en-US"),
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
                                            "It's your turn to clear the table (= to take away the dirty plates, etc. after a meal)."),
                                    ExampleSentenceKurdish(
                                        text: "نۆرەی تۆیە مێزەکە پاکبکەیتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears31("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears31("en-US"),
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
                                                    "They started clearing a path through the dense jungle."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دەستیان کرد بە پاککردنەوەی ڕێگایەک بەناو جەنگەڵە چڕەکەدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclears32("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclears32("en-US"),
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
                                                    "She cleared a space on the sofa for him to sit down."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "جێگایەکیان لەسەر قەنەفەکە کردەوە بۆ ئەو تا دابنیشێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclears33("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclears33("en-US"),
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
                                                    "I cleared my desk of papers."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "مێزەکەم لە کاغەز پاککردەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclears34("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclears34("en-US"),
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
                                                    "The streets had been cleared of snow."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "شەقامەکان لە بەفر پاککرابوونەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclears35("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclears35("en-US"),
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
                              text: "١٦. (کردار) دەرکردنی خەڵکی لە شوێنێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Security officials tried to clear the area, fearing more bomb attacks."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەرپرسانی ئاسایش هەوڵیان ناوچەکە چۆڵبکەن لە ترسی تەقینەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears36("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears36("en-US"),
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
                                            "Police were still clearing the streets when the bomb went off."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پۆلیس ‌ێشتا شەقامەکانیان چۆڵ دەکرد کە بۆمبەکە تەقییەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears37("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears37("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٧. (کردار) لابردنی ئاستەنگ و دووبارە دەستکردن بە جووڵە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The traffic took a long time to clear after the accident."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هاتووچۆ چەند کاتژمێرێکی پێچوو بۆ دووبارە دەستپێکردنەوە لە دوای ڕووداوەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears38("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears38("en-US"),
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
                                            "The boy's lungs cleared and he began to breathe more easily."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سییەکانی کوڕەکە پاکبوویەوە و دەستیکردەوە بە هەناسەدان بە ئاسانتر."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears39("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears39("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٨. (کردار) نەمانی دووکەڵ، تەم، هتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The mist will clear by afternoon."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەمەکە کۆتایی دێت تاوەکو نیوەڕۆ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears40("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears40("en-US"),
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
                                            "As the smoke cleared, two fighter planes came into view."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کە دووکەڵەکە نەما، دوو فڕۆکەی جەنگی دەرکەوتن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears41("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears41("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٩. (کردار) ئارامبوونەوەی کەشوهەوا و نەمانی هەور و باران"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The next day the weather cleared."),
                                    ExampleSentenceKurdish(
                                        text: "ڕۆی دواتر کەشەکە ئارامبوویەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears42("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears42("en-US"),
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
                                            "The sky cleared after the storm."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە دوای زریانەکە ئاسمان سایەقەی دا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears43("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears43("en-US"),
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
                                        text: "The rain is clearing slowly."),
                                    ExampleSentenceKurdish(
                                        text: "بارانەکە بەهێواشی خۆش دەکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears44("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears44("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٠. (کردار) ڕوونبوونی شلە بەشێوەیەک بەناویدا ببینیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The muddy water slowly cleared."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئاوە قوڕاوییەکە بەهێواشی ڕوونبووەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears45("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears45("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢١. (کردار) ئارامبوونەوەی مێشک هەبوونی توانای بیرکردنەوە بە ڕوونی و بەبێ نیگەرانی، یان هەبوونی کاریگەری مادەی کحولی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "As her mind cleared, she remembered what had happened."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە دوای ئەوەی مێشکی ئارامبوویەوە، کەوتەوە بیری چی ڕوویدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears46("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears46("en-US"),
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
                                            "I went for a walk to clear my head."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕۆشتم بۆ پیاسەیەک بۆ ئەوەی مێشکم ساف بکەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears47("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears47("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٣. (کردار) وەستان لە تووڕەبوون و نیگەرانی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "His face suddenly cleared as understanding dawned."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕووخساری لەناکاو هێوربوویەوە کە دەستی بە تێگەشتن کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears48("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears48("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٣. (کردار) پاککردنەوە لە تاوان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She was cleared of all charges against her."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە هەموو تاوانەکانی دژی پاککرایەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears49("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears49("en-US"),
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
                                            "Throughout his years in prison, he fought to clear his name."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ماوەی ساڵانی زیندانیی، هەوڵیدا ناوی پاکبکاتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears50("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears50("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٤. (کردار) پێدان یان وەرگرتنی مۆڵەتی فەرمی بۆ ئەوەی شتێک بکرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I'll have to clear it with the manager."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەبێت مۆڵەت لە بەڕێوبەر وەربگرم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears51("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears51("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٥. (کردار) پێدانی مۆڵەت بە کەسێک، کەشتییەک، فڕۆکەیەک، هتد بۆ جێهێشتن یان چوونە ناو شوێنێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The plane had been cleared for take-off."),
                                    ExampleSentenceKurdish(
                                        text: "فڕۆکەکە مۆڵەتی فڕینی پێدرابوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears52("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears52("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٦. (کردار) بە فەرمی بڕیاردان، لە دوای دۆزینەوەی زانیاری لەسەر کەسێک، کە دەکرێت کاری تایبەتیان پێ بدرێت یان نووسراوی نهێنی ببینن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She hasn't been cleared by security."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەلایەن بەشی پاراستنەوە ڕێگەی پێنەدراوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears53("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears53("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٧. (کردار) بەردەستبوونی پارە بۆ بەکارهێنان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Cheques usually take three working days to clear."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چەکی بانکی بەزۆری سێ ڕۆژی کارکردنیان پێدەچێت بۆ بەردەستبوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears54("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears54("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٨. (کردار) قازانجکردنی بڕە پارەیەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She cleared £1 000 on the deal."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "١,٠٠٠ پاوەندی لە ڕێککەوتنەکە قازانجکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears55("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears55("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٩. (کردار) دانەوەی قەرز"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They sold £25 million in holdings in order to clear colossal bank debts."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە بەهای ٢٥ ملیۆن دۆلار پشکیان فرۆشتووە بۆ دانەوەی قەرزی گەورەی بانکی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears56("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears56("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣٠. (کردار) بازدان بەسەر شتێکدا بەبێ دەستدان لێی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The horse cleared the fence easily."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەسپەکە بە ئاسانی بەسەر پەرژینەکەدا بازی دا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears57("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears57("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣١. (ھاوەڵکار) دوور لە شتێک؛ بەرنەکەوتوو بە شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Stand clear of the train doors."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دوور لە دەرگاکانی شەمەندەفەرەکە بوەستە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears58("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears58("en-US"),
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
                                            "By lap two Walker was two metres clear of the rest of the runners."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تاوەکو دەورانی دووەم واڵکەر دوو مەتر دوور بوو لە ڕاکەرانی دیکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears59("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears59("en-US"),
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
                                            "Make sure you park clear of the kerb."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دڵنیابەرەوە دوور لە قەراغەکە ڕابوەستیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears60("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears60("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣٢. (ھاوەڵکار) بە تەواوی تاوەکو شتێکی دوور"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She could see clear down the highway into the town."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەیتوانی لە شاڕێکەوە تاوەکو شارۆچکەکە ببینێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears61("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears61("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣٣. (ھاوەڵکار) پێنناسە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "His parents warned him to steer clear of trouble."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "باوک و دایکی ئاگاداریان کردەوە لە کێشە بە دوور بێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclears62("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclears62("en-US"),
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
- Adjective: clear (Derived forms: clearest, clearer)
1. Readily apparent to the mind
"a clear and present danger"; "a clear explanation"; "a clear case of murder"; "a clear indication that she was angry"; "gave us a clear idea of human nature"
 
2. Free from confusion or doubt
"a complex problem requiring a clear head"; "not clear about what is expected of us"
 
3. Affording free passage or view (= open)
"a clear view";
 
4. Allowing light to pass through
"clear water"; "clear plastic bags"; "clear glass"; "the air is clear and clean"
 
5. Accurately stated or described (= well-defined)
"a set of clear values";
 
6. (meteorology) free from clouds, mist or haze
"on a clear day"
 
7. Free from contact, proximity or connection
"we were clear of the danger"; "the ship was clear of the reef"
 
8. Characterized by freedom from troubling thoughts (especially guilt)
"a clear conscience"; "regarded her questioner with clear untroubled eyes"
 
9. (of sound or colour) free from anything that dulls or dims (= clean, light, unclouded)
"clear laughter like a waterfall"; "clear reds and blues";
 
10. (especially of a title) free from any encumbrance or limitation that presents a question of fact or law (= unmortgaged)
"I have clear title to this property";
 
11. Distinct to the senses; easily perceptible (= clean-cut, clear-cut)
"as clear as a whistle"; "clear footprints in the snow"; "the letter brought back a clear image of his grandfather"; "a clear-cut pattern";
 
12. Free from restrictions or qualifications (= clean)
"a clear winner";
 
13. Free from flaw, blemish or impurity
"a clear perfect diamond"; "the clear complexion of a healthy young woman"
 
14. Clear of charges or deductions
"a clear profit"
 
15. Easily read and understood (= decipherable, readable)
"James Boice provides a clear overview of Christian theology";
 
16. Freed from any question of guilt (= absolved, cleared, exculpated, exonerated, vindicated)
"was now clear of the charge of cowardice";
 
17. Characterized by ease and quickness in perceiving (= percipient)
"clear mind";

- Verb: clear (Derived forms: clearing, clears, cleared)
1. Rid of obstructions (= unclutter)
"Clear your desk";
 
2. Make a way or path by removing objects
"Clear a path through the dense forest"
 
3. Become free from clouds or less cloudy; become brighter (= clear up, light up, brighten)
"The sky cleared after the storm";
 
4. Grant authorization or clearance for (= authorize, authorise [Brit], pass)
"Clear the manuscript for publication";
 
5. Remove so as to leave tidy or unobstructed
"clear the leaves from the lawn"; "Clear snow from the road"
 
6. Go unchallenged; be approved (= pass)
"The bill cleared the House";
 
7. Be debited and credited to the proper bank accounts
"The payment should clear within 2 business days"
 
8. Go away or disappear
"The fog cleared in the afternoon"
 
9. Pass by, over, or under without making contact (= top)
"the balloon cleared the tree tops";
 
10. Make free from confusion or ambiguity; make clear (= clear up, shed light on, crystallize, crystallise [Brit], crystalize, crystalise [Brit], straighten out, sort out, enlighten, illuminate, elucidate)
"Clear up the question of who is at fault";
 
11. Free from payment of customs duties, as of a shipment
"Clear the ship and let it dock"
 
12. Clear from impurities, blemishes, pollution, etc.
"clear the water before it can be drunk"
 
13. Yield as a net profit (= net)
"This sale cleared me £1 million";
 
14. Make as a net profit (= net, sack, sack up)
"The company cleared £1 million";
 
15. Receive money in return for work; make a profit as the result of some business transaction (= gain, take in, make, earn, realize, realise [Brit], pull in [informal], bring in)
"He clears £5,000 each month";
 
16. Sell to get rid of
"We cleared a lot of the old model cars"
 
17. Pass an inspection or receive authorization
"clear customs"
 
18. Pronounce not guilty of criminal charges (= acquit, assoil [archaic], discharge, exonerate, exculpate)
"The suspect was cleared of the murder charges";
 
19. Settle, as of a debt (= solve)
"clear a debt";
 
20. Make clear, bright, light, or translucent
"The water had to be cleared through filtering"
 
21. (computing) rid of instructions or data
"clear a memory buffer"
 
22. Remove (people) from a building
"clear the patrons from the theatre after the bomb threat"
 
23. Remove the occupants of
"Clear the building"
 
24. Free (the throat) by making a rasping sound (= clear up)
"Clear the throat";

- Adverb: clear 
1. Entirely (= all the way)
"slept clear through the night"; "there were open fields clear to the horizon"; "read the book clear to the end";
 
2. In an easily perceptible manner (= clearly)
"She cried loud and clear";

- Noun: clear (Derived forms: clears)
1. The state of being free of suspicion
"investigation showed that he was in the clear"
 
2. A clear or unobstructed space or expanse of land or water (= open)
"finally broke out of the forest into the clear";
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
    videoId: 'https://youtu.be/jgNoyfryIFI?t=',
    startSeconds: 25,
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
    videoId: 'https://youtu.be/QBz2Mvp-WlE?t=',
    startSeconds: 36,
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
    videoId: 'https://youtu.be/Na8tL0Sq-rU?t=',
    startSeconds: 19,
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
    videoId: 'https://youtu.be/0UEfXsu1OVw?t=',
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
    videoId: 'https://youtu.be/UlY4TnCdL0s?t=',
    startSeconds: 117,
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
    videoId: 'https://youtu.be/hFZFjoX2cGg?t=',
    startSeconds: 51,
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
    videoId: 'https://youtu.be/_wNsZEqpKUA?t=',
    startSeconds: 1128,
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
    videoId: 'https://youtu.be/8HEfIJlcFbs?t=',
    startSeconds: 410,
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