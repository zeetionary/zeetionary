import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "break" as TYPE and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

enum TtsState { playing }

class EnglishEntrybreak extends StatelessWidget {
// blank divider
  EnglishEntrybreak({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbreak(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("break"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks1(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All the windows broke with the force of the blast."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks2(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She dropped the plate and it broke into pieces."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks3(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The boat hit a rock and broke in half."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks4(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She fell off a ladder and broke her arm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks5(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He broke the chocolate in two."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks6(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The glass broke into hundreds of pieces."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks7(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I didn't mean to break the window."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks8(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Charles is always breaking things."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks9(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My watch has broken."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks10(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I think I've broken the washing machine."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks11(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The dog bit me but didn't break the skin."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks12(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I had broken the law and deserved to be punished."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks13(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "People should not be allowed to break the rules."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks14(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was breaking the speed limit."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks15(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She had broken the conditions of her bail."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks16(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I've never broken my word; why should I do it now?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks17(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's break for lunch."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks18(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Parliament breaks for recess next week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks19(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their sleep was broken by noise from the street."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks20(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She broke the silence by coughing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks21(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The phone rang, breaking my concentration."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks22(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They decided to break their journey in Singapore."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks23(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Management has not succeeded in breaking the strike."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks24(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The thieves broke the safe open and stole the diamonds."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks25(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He broke all ties with his parents."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks26(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He finally managed to break free from his attacker."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks27(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The horse tried to break free from its stable."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks28(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The scandal broke him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks29(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She broke under questioning and confessed to everything."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks30(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Williams broke her opponent's serve five times."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks31(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The death of his wife broke him completely."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks32(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "On the third day the weather broke and they had a violent storm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks33(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The clouds broke and the sun came out."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks34(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When his head broke the surface he took in deep gulps of air."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks35(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Dawn was breaking when they finally left."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks36(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We arrived just as a storm was breaking."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks37(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There was a public outcry when the scandal broke."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks38(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Who's going to break it to her?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks39(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'm sorry to be the one to break the news to you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks40(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her voice broke as she told us the dreadful news."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks41(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His voice broke when he was 13."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks42(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The movie broke all box-office records."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks43(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A huge wave broke against the rocks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks44(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The enemy were unable to break the code."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks45(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Can you break a twenty-dollar bill?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks46(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was on her lunch break."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks47(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She worked all day without a break."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks48(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Come and see me at break."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks49(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Employees can take a career break of up to one year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks50(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The team have been taking a break in Spain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks51(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'll make us a cup of tea in the next break."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks52(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's a great city for a weekend break."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks53(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He needed to make a complete break with the past."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks54(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their decision to not name their daughter Jane was a break with family tradition."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks55(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Wait for a break in the traffic before crossing the road."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks56(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Wait for a break in the traffic before crossing the road."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks57(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We've had a few bad breaks along the way."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks58(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If you just give me a break, you won’t regret it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks59(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The X-ray showed there was no break in his leg."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks60(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Murray must get another break to win."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks61(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The champion began with breaks of 74 and 58."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks62(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6262"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks63(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6363"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks64(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6464"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks65(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6565"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks66(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6666"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks67(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6767"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks68(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6868"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks69(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks6969"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 14, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "break"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /breɪk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbreak("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /breɪk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbreak("en-US"),
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
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
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
                          const DefinitionKurdish(text: """
کوردی: شکاوی، شکان، شکست، وردوخاشی، قڵیش، کون، شەبەق، درز، دابڕاوی، پساوی، پسان، پچڕان، ھەڵوێستە، ھەڵوەستە، پشوو، وچان، ورنگ، پێندان، پشووی خوێندن، گۆھارتن، گۆڕان، گۆڕانی ناکاو، دەرچوون، دەربازبوون، ھەڵاتن، چانس، ھەل، دەرفەت، دەلیڤە

١. (کردار) شکان یان شکاندن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "All the windows broke with the force of the blast."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەموو پەنجەرەکان بە ھێزی تەقینەوەکە شکان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She dropped the plate and it broke into pieces."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەورییەکەی بەردایەوە و پارچەپارچە بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks2("en-US"),
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
                                      const ExampleSentenceEnglish(
                                          text:
                                              "The boat hit a rock and broke in half."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "بەلەمەکە لە تاشە بەردێکی دا و دووکەرت بوو."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks3("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "She fell off a ladder and broke her arm."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "لە پەیژەیەک کەوتە خوارەوە و دەستی شکا."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks4("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "He broke the chocolate in two."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "چکلێتەکەی کرد بە دوو کەرتەوە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks5("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "The glass broke into hundreds of pieces."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "شووشەکە بوو بە سەدان پارچەوە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks6("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "I didn't mean to break the window."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "مەبەستم نەبوو پەنجەرەکە بشکێنم."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks7("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "Charles is always breaking things."),
                                      const ExampleSentenceKurdish(
                                          text: "چارڵس ھەمیشە شت دەشکێنێت."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks8("en-US"),
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
                              text: "٢. (کردار) وەستان لە کارکردن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "My watch has broken."),
                              const ExampleSentenceKurdish(
                                  text: "کاتژمێرەکەم وەستاوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I think I've broken the washing machine."),
                              const ExampleSentenceKurdish(
                                  text: "پێم‌وایە جلشۆرەکەم شکاند."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) بڕینی پێست و خوێن‌لێ‌ھێنانی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The dog bit me but didn't break the skin."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سەگەکە گازی لێ گرتم بەڵام پێستمی نەدڕی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) کردنی شتێک کە دژە بە یاسا، بەڵین، ڕێککەوتن، ھتد"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I had broken the law and deserved to be punished."),
                              const ExampleSentenceKurdish(
                                  text: "یاسام شکاندبوو و شایەنی سزا بووم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "People should not be allowed to break the rules."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خەڵکی نابێت ڕێگایان پێ بدرێت یاساکان بشکێنن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks13("en-US"),
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
                                      const ExampleSentenceEnglish(
                                          text:
                                              "He was breaking the speed limit (= travelling faster than the law allows)."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "خێراتر لە خێرایی ڕێگەپێدراو دەچوو."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks14("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks14("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "She had broken the conditions of her bail."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "مەرجەکانی ئازادکردنی بە کەفالەتی پێشێلکردبوو."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks15("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks15("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "I've never broken my word; why should I do it now?"),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ھەرگیز قسەی خۆمم نەشکاندووە، بۆچی ئێستا بیکەم؟"),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks16("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks16("en-US"),
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
                                  "٥. (کردار) وەستان لە کردنی شتێک بۆ ماوەیەک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Let's break for lunch."),
                              const ExampleSentenceKurdish(
                                  text: "با پشوویەک بۆ نانی نیوەڕۆ وەربگرین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Parliament breaks for recess next week."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پەرلەمان پشووی ساڵانەی وەردەگرێت ھەفتەی داھاتوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Their sleep was broken by noise from the street."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە خەو ڕاپەڕین بە دەنگەدەنگی سەر شەقامەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) وەستاندنی شتێک لە ناکاو بەشێوەیەک کە کۆتایی پێ دێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She broke the silence by coughing."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بە کۆکەیەک کۆتایی بە بێ‌دەنگییەکە ھێنا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The phone rang, breaking my concentration."),
                              const ExampleSentenceKurdish(
                                  text: "موبایلەکە زەنگی لێدا و سەرنجمی برد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks21("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They decided to break their journey in Singapore."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بڕیاریاندا لە سەنگاپوورە کۆتایی بە گەشتەکەیان بێنن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) کۆتایی ھێنانی شتێک بە ھێز"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Management has not succeeded in breaking the strike."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەڕێوبەرایەتییەکە نەیتوانی مانگرتنەکە کۆتایی پێ‌بھێنێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks23("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The thieves broke the safe open and stole the diamonds."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دزەکان قاسەکەیان شکاندبوو و ئەڵماسەکانیان دزی بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks24("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) پچڕانی پەیوەندی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He broke all ties with his parents."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەموو پەیوەندییەکی لەگەڵ دایک و باوکی پچڕاند."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) ھەڵھاتن لە شوێنێک یان لەدەست کەسێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He finally managed to break free from his attacker."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە کۆتاییدا توانی لەدەست ھێرشکارەکەی ھەڵبێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks26("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The horse tried to break free from its stable."),
                              const ExampleSentenceKurdish(
                                  text: "ئەسپەکە ھەوڵیدا لە تەویلەکە ھەڵبێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks27("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) لاوازکردن یان لاوازبوون؛ وێرانبوون یان وێرانکردن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The scandal broke him (= ruined his reputation and destroyed his confidence)."),
                              const ExampleSentenceKurdish(
                                  text: "ئابڕووچوونەکە کۆتایی پێھێنا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks28("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks28("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She broke under questioning (= was no longer able to bear it) and confessed to everything."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "شەکەت بوو بەدەست پرسیارەوە و دانی بە ھەموو شتێکدا نا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks29("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks29("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) لە تێنسدا بردنەوەی یارییەکەیە لەکاتێکدا ڕکابەرەکە یەکەم سێرڤ لێدەدات"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Williams broke her opponent's serve five times."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ولیام پێنج جار وەڵامی سێرڤی بەرامبەرەکەی دایەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks30("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks30("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (کردار) وا لە کەسێک بکەیت ھەست بە بێزاری، تەنھایی، ھتد بکات و ژیانێکی ئاسایی نەژی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The death of his wife broke him completely."),
                              const ExampleSentenceKurdish(
                                  text: "مردنی ھاوژینەکەی بەتەواوی تێکیشکاند."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks31("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks31("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (کردار) کەشوھەوایەک کە دەگۆڕێت، بەتایبەتی لەدوای ماوەیەک لە باشبوون"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "On the third day the weather broke and they had a violent storm."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە ڕۆژی سێیەمدا کەشەکە گۆڕا و زریانێکی بەھێز ھات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks32("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks32("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٤. (کردار) ھەورێک کە شەقێکی تێدەکەوێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The clouds broke and the sun came out."),
                              const ExampleSentenceKurdish(
                                  text: "ھەورەکان شەقبوون و خۆرەکە دەرکەوت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks33("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks33("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٥. (کردار) ھاتنە دەرەوە لە دەریایەک، مەلەوانگەیەک، ھتد"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "When his head broke the surface he took in deep gulps of air."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کە سەری دەرکرد لە ئاوەکە ھەناسەی قووڵی ھەڵمژی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks34("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks34("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٦. (کردار) کە ڕۆژ، بەیانی، یان زریانێک دەستپێ دەکات"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Dawn was breaking when they finally left."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەرەبەیان دەستی‌‌پێکرد کە لەکۆتاییدا ڕۆشتن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks35("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks35("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We arrived just as a storm was breaking."),
                              const ExampleSentenceKurdish(
                                  text: "گەشتین کە زریانێک دەستی‌پێدەکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks36("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks36("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٧. (کردار) ئاشکراکردنی ھەواڵێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There was a public outcry when the scandal broke."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ناڕەزاییەکی زۆر ھەبوو کە ئابڕووچوونەکە ئاشکرابوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks37("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks37("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٨. (کردار) بوون بە یەکەم کەس ھەواڵێکی ناخۆش بە کەسێک بڵێیت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Who's going to break it to her?"),
                              const ExampleSentenceKurdish(
                                  text: "کێ ھەواڵەکەی پێ‌ دەڵێت؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks38("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks38("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I'm sorry to be the one to break the news to you."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەداخەوەم کە دەبم بەو کەسەی ھەواڵەکەت پێ ڕادەگەیەنم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks39("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks39("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٩. (کردار) گۆڕانی تۆنی دەنگ بەھۆی ھەستو سۆزەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Her voice broke as she told us the dreadful news."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەنگی دەلەرزی کە ھەواڵە ناخۆشەکەی پێ گوتین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks40("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks40("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٠. (کردار) کە دەنگی کوڕێک وەک دەنگی پیاوی لێ دێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "His voice broke when he was 13."),
                              const ExampleSentenceKurdish(
                                  text: "دەنگی گڕ بوو کە ١٣ ساڵان بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks41("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks41("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢١. (کردار) شکاندنی ڕیکۆردێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The movie broke all box-office records."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "فیلمەکە ھەموو ڕیکۆردەکانی بۆکس ئۆفیسی شکاند."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks42("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks42("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٢. (کردار) کە شەپۆلێک دەکێشێت بە شتێکدا، و دەکەوێت و نامێنێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "A huge wave broke against the rocks."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "شەپۆلێکی گەورە کێشای بە تاشە بەردەکاندا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks43("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks43("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٣. (کردار) زانینی واتای شتێکی نھێنی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The enemy were unable to break the code (= understand it and so make it useless)."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دووژمن نەیانتوانی واتای کۆدەکە بزانن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks44("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks44("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٤. (کردار) دراوێکی دۆلار بگۆڕیت بۆ دراو"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Can you break a twenty-dollar bill?"),
                              const ExampleSentenceKurdish(
                                  text: "دەتوانیت ٢٠ دۆلارییەک ورد بکەیتەوە؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks45("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks45("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٥. (ناو) وچانێکی کەم بۆ حەسانەوە، نان خواردن، ھتد"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She was on her lunch break."),
                              const ExampleSentenceKurdish(
                                  text: "لە پشووی نانی نیوەڕۆی بوو؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks46("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks46("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She worked all day without a break."),
                              const ExampleSentenceKurdish(
                                  text: "تەواوی ڕۆژەکە بەبێ پشوو کاری کرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks47("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks47("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٦. (ناو) پشووی نێوان وانەکانی خوێندنگە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Come and see me at break."),
                              const ExampleSentenceKurdish(
                                  text: "لە پشووەکەدا وەرە بۆ لام."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks48("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks48("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٧. (ناو) ماوەیەک کە شتێک دەوەستێت پێش ئەوەی دووبارە دەستپێ‌بکاتەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Employees can take a career break of up to one year."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کارمەندان دەتوانن دابڕانک لە کارکردن وەربگرن بۆ ماوەی یەک ساڵ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks49("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks49("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The team have been taking a break in Spain."),
                              const ExampleSentenceKurdish(
                                  text: "تیمەکە پشوو لە ئیسپانیا وەردەگرن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks50("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks50("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٨. (ناو) ماوەیەکی کەم کە پڕۆگرامێکی تەلەفیزیۆنی یان ڕادیۆ دەوەستێت بۆ پیشاندانی سپۆنسەر"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I'll make us a cup of tea in the next break."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پێڵایەک چا بۆ ھەردووکمان ئامادە دەکەم لە وچانی دواتردا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks51("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks51("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٩. (ناو) پشوویەکی کورت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It's a great city for a weekend break."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "شارێکی خۆشە بۆ پشوویەکی کۆتایی ھەفتە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks52("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks52("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣٠. (ناو) ئەو ساتەی کە دۆخێک یان پەیوەندییەک کە بۆ ماوەیەکی درێژە بوونی ھەیە دەگۆڕێت، کۆتایی دێت، یان دەپچڕێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He needed to make a complete break with the past."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پێویستی بوو دابڕانێکی تەواو لە ڕابردوو وەربگرێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks53("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks53("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Their decision to not name their daughter Jane was a break with family tradition."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بڕیارەکەیان کە منداڵەکەیان ناو نەنێن جەین دابڕانێک بوو لە نەریتی خێزانەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks54("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks54("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣١. (ناو) شەقێک یان بۆشاییەک لە نێوان دوو شت یان زیاتر"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We could see the moon through a break in the clouds."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەمانتوانی مانگ ببینین لە شەقێکەوە لە ھەورەکاندا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks55("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks55("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Wait for a break in the traffic before crossing the road."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بوەستە بەینێک بکەوێتە ترافیکەوە پێش ئەوەی بپەڕیتەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks56("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks56("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣٢. (ناو) بەختێک، دەرفەتێک بۆ کردنی شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We've had a few bad breaks (= pieces of bad luck) along the way."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تووشی ھەندێک بەختی خراپ بووین لە پڕۆسەکەدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks57("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks57("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "If you just give me a break, you won’t regret it."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەگەر دەرفەتێکم پێ بدەیت پەشیمان نابی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks58("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks58("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣٣. (ناو) شوێنی شکان، بەتایبەتی لە ئێسکی جەستەدا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The X-ray showed there was no break in his leg."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تیشکە ئێکسەکە دەریخست ھیچ شکانێک لە لاقیدا نییە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks59("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks59("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣٤. (ناو) لە تێنسدا بردنەوە لە یارییەکە کە ڕکابەرەکەت یەکەم سێرڤ لێ دەدات"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Murray must get another break to win."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "مۆرای دەبێت بردنەوەیەکی دیکەی ھەبێت بۆ ئەوەی بباتەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks60("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks60("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣٥. (ناو) لە بلیارددا ژمارەی ئەو خاڵانەیە کە بە زنجیرەیەک لە لێدانی سەرکەوتووانە لەلایەن یاریزانێکەوە لە یەک نۆرەدا بەدەست دێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The champion began with breaks of 74 and 58."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پاڵەوانەکە دەستی پێکرد بە بردنەوەی خاڵی ٧٤ و ٥٨ی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks61("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks61("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten(),
                    YoutubeEmbeddedeleven(),
                    YoutubeEmbeddedtwelve(),
                    // YoutubeEmbeddedthirteen(),
                    // YoutubeEmbeddeddfourteen(),
                    // YoutubeEmbeddedfifteen(),
                    // YoutubeEmbeddeddsixteen(),
                    // YoutubeEmbeddeddseventeen(),
                    // YoutubeEmbeddeddeighteen(),
                    // YoutubeEmbeddeddnineteen(),
                    // YoutubeEmbeddedtwenty(),
                    // YoutubeEmbeddedmulti(),
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
- Verb: break (derived forms: broken, breaking, breaks, broke)
1. Destroy the integrity of; usually by force; cause to separate into pieces or fragments
"He broke the glass plate"; "She broke the match"
 
2. Become separated into pieces or fragments (= separate, split up, fall apart, come apart)
"The figurine broke";

3. Render inoperable or ineffective (= hose [N. Amer, informal])
"You broke the alarm clock when you took it apart!";
 
4. Ruin completely (= bust [informal])
 
5. Terminate or end (= interrupt)
"break a lucky streak"; "break the cycle of poverty";
 
6. Act in disregard of laws, rules, contracts, or promises (= transgress, offend, infract, violate, go against, breach)
"break a law";

7. Move away or escape suddenly (= break out, break away)
"The horses broke from the stable"; "Three inmates broke jail"; "Nobody can break out--this prison is high security"; "The horses broke away from the stable";
 
8. Scatter or part
"The clouds broke after the heavy downpour"
 
9. Force out or release suddenly and often violently something pent up (= burst, erupt)
"break into tears";

10. Prevent completion (= break off, discontinue, stop)
"break off the negotiations";
 
11. Enter someone's (virtual or real) property in an unauthorized manner, usually with the intent to steal or commit a violent act (= break in)
"Someone broke in while I was on vacation"; "They broke into my car and stole my radio!"; "who broke into my account last night?";
 
12. Make submissive, obedient, or useful (= break in)
"The horse was tough to break"; "I broke in the new intern";
 
13. Fail to agree with; be in violation of; as of rules or patterns (= violate, go against)
"This sentence breaks the rules of syntax";

14. Surpass in excellence (= better)
"break a record";

15. Make known to the public information that was previously known only to a few people or that was meant to be kept a secret (= unwrap, disclose, let on, bring out, reveal, discover, expose, divulge, give away, let out, uncover, lay bare)
"he broke the news to her";

16. Come into being
"light broke over the horizon"; "Voices broke in the air"
 
17. Stop operating or functioning (= fail, go bad, give way, die, give out, conk out [informal], go, break down, pack up [Brit, informal])
"The bus we travelled in broke down on the way to town"; "The coffee maker broke";
 
18. Interrupt a continued activity (= break away)
 
19. (military) make a rupture in the ranks of the enemy or one's own by quitting or fleeing
"The ranks broke"
 
20. Curl over and fall apart in surf or foam, of waves
"The surf broke"
 
21. Lessen in force or effect (= dampen, damp, soften, weaken)
"break a fall";

22. Be broken in
"If the new teacher won't break, we'll add some stress"
 
23. Come to an end
"The heat wave finally broke yesterday"
 
24. Vary or interrupt a uniformity or continuity
 
25. Cause to give up a habit
"She finally broke herself of smoking cigarettes"
 
26. Give up
"break cigarette smoking"
 
27. Come forth or begin from a state of latency
"The first winter storm broke over New York"
 
28. Happen or take place
"Things have been breaking pretty well for us in the past few months"
 
29. Cause the failure or ruin of
"His peccadilloes finally broke his marriage"; "This play will either make or break the playwright"
 
30. Invalidate by judicial action
 
31. Discontinue an association or relation; go different ways (= separate, part, split up, split, break up)
"The business partners broke over a tax question"; "The couple broke up after 25 years of marriage";
 
32. Assign to a lower position; reduce in rank (= demote, bump, relegate, kick downstairs)
 
33. Reduce to bankruptcy (= bankrupt, ruin, smash)
"My daughter's fancy wedding is going to break me!";
 
34. Change directions suddenly
 
35. Emerge from the surface of a body of water
"The whales broke"
 
36. Break down, literally or metaphorically (= collapse, fall in, cave in, give, give way, founder)
"The dam broke";
 
37. Do a break dance (= break dance, break-dance)
"Kids were break-dancing at the street corner";
 
38. Exchange for smaller units of money
"I had to break a £100 bill just to buy the candy"
 
39. Destroy the completeness of a set of related items (= break up)
"The book dealer would not break the set";

40. (billiards) make the opening shot that scatters the balls
 
41. Separate from a clinch, in boxing
"The referee broke the boxers"
 
42. Go to pieces (= wear, wear out, bust [informal], fall apart)
"The lawn mower finally broke";
 
43. Break a piece from a whole (= break off, snap off)
"break a branch from a tree";

44. Become punctured or penetrated
"The skin broke"
 
45. Pierce or penetrate
"The blade broke her skin"
 
46. Be released or become known; of news (= get out, get around)
"News of her death broke in the morning";
 
47. Cease an action temporarily (= pause, intermit)
"let's break for lunch";

48. Interrupt the flow of current in
"break a circuit"
 
49. Undergo breaking
"The simple vowels broke in many Germanic languages"
 
50. Find a flaw in
"break an alibi"; "break down a proof"
 
51. Find the solution or key to
"break the code"
 
52. Change suddenly from one tone quality or register to another
"Her voice broke to a whisper when she started to talk about her children"
 
53. Happen (= recrudesce, develop)
"These political movements break from time to time";
 
54. Become fractured; break or crack on the surface only (= crack, check)
"The glass broke when it was heated";

55. Crack; of the male voice in puberty
"his voice is breaking--he should no longer sing in the choir"
 
56. Fall sharply
"stock prices broke"
 
57. Fracture a bone of (= fracture)
"I broke my foot while playing hockey";
 
58. Diminish or discontinue abruptly
"The patient's fever broke last night"
 
59. Weaken or destroy in spirit or body
 
60. Yield information under interrogation or torture (= crack)
"They managed to break him on the third day";
 
61. Successfully decipher a code (= crack)

- Noun: break (derived forms: breaks)
1. A pause from doing something (as work) (= respite, recess, time out)
"we took a 10-minute break";

2. Some abrupt occurrence that interrupts an ongoing activity (= interruption)
"there was a break in the action when a player was hurt";
 
3. An unexpected piece of good luck (= good luck, happy chance)
"he finally got his big break";
 
4. (geology) a crack in the earth's crust resulting from the displacement of one side with respect to the other (= fault, faulting, geological fault, shift, fracture)
"they built it right over a geological break";

5. A personal or social separation (as between opposing factions) (= rupture, breach, severance, rift, falling out)
"they hoped to avoid a break in relations";

6. The act of breaking something (= breakage, breaking)
"the break was unavoidable";

7. A time interval during which there is a temporary cessation of something (= pause, intermission, interruption, suspension)
 
8. Breaking of hard tissue such as bone (= fracture)
"the break seems to have been caused by a fall";
 
9. The occurrence of breaking
"the break in the dam threatened the valley"
 
10. An abrupt change in the tone or register of the voice (as at puberty or due to emotion)
"then there was a break in her voice"
 
11. The opening shot that scatters the balls in billiards or pool
 
12. (tennis) a score consisting of winning a game when your opponent was serving (= break of serve)
"he was up two breaks in the second set";

13. An act of delaying or interrupting the continuity (= interruption, disruption, gap)
"it was presented without commercial breaks";

14. A sudden dash
"he made a break for the open door"
 
15. Any frame in which a bowler fails to make a strike or spare (= open frame)
"the break in the eighth frame cost him the match";

16. An escape from jail (= breakout, jailbreak, gaolbreak, prisonbreak, prison-breaking)
"the break was carefully planned";
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

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '_spuxXnul0U',
    startSeconds: 904,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'e09xig209cQ',
    startSeconds: 195,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'aHBLOkfJSYI',
    startSeconds: 48,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'PGk3qLxwmDQ',
    startSeconds: 665,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'k3aAl92_VDE',
    startSeconds: 265,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'LAOoF2gyQaA',
    startSeconds: 30,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'C_MDnd7px-I',
    startSeconds: 6,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'MnExgQ81fhU',
    startSeconds: 544,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'D-2799Y07Zc',
    startSeconds: 371,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '03VAIrkmrD0',
    startSeconds: 24,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'zqllxbPWKNI',
    startSeconds: 836,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'FmEJkU6r_Rs',
    startSeconds: 62,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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

// more than one video, only first autoplay

// /breɪk/
// end break
