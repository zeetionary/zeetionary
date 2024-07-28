import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclose extends StatelessWidget {
  // blank divider
  EnglishEntryclose({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclose(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("close");
  }

  Future<void> speakcloses1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He closed the door firmly.");
  }

  Future<void> speakcloses2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Would anyone mind if I closed the window?");
  }

  Future<void> speakcloses3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's dark now—let's close the curtains.");
  }

  Future<void> speakcloses4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I closed my eyes against the bright light.");
  }

  Future<void> speakcloses5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The doors open and close automatically.");
  }

  Future<void> speakcloses6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She closed her eyes and fell asleep immediately.");
  }

  Future<void> speakcloses7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He ate greedily, without closing his mouth.");
  }

  Future<void> speakcloses8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He stopped reading and closed the book.");
  }

  Future<void> speakcloses9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He opened his umbrella when it started raining.");
  }

  Future<void> speakcloses10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The school was closed because of the heavy snow.");
  }

  Future<void> speakcloses11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The museum has been closed for renovation.");
  }

  Future<void> speakcloses12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The road was closed to traffic for two days.");
  }

  Future<void> speakcloses13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What time does the bank close?");
  }

  Future<void> speakcloses14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The hospital closed at the end of last year.");
  }

  Future<void> speakcloses15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The club was closed by the police.");
  }

  Future<void> speakcloses16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They are closing their Liverpool factory.");
  }

  Future<void> speakcloses17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company has announced plans to close three factories and lay off 600 workers.");
  }

  Future<void> speakcloses18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The meeting will close at 10.00 p.m.");
  }

  Future<void> speakcloses19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The offer closes at the end of the week.");
  }

  Future<void> speakcloses20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I will close with a few words about future events.");
  }

  Future<void> speakcloses21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The subject is now closed.");
  }

  Future<void> speakcloses22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A police spokesman said that the case was now closed.");
  }

  Future<void> speakcloses23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Counting of votes will begin when the polls close.");
  }

  Future<void> speakcloses24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Right now we are trying to close the deal with our sponsors.");
  }

  Future<void> speakcloses25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We closed a deal with a major supermarket.");
  }

  Future<void> speakcloses26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company acted quickly to close a security hole in its online systems.");
  }

  Future<void> speakcloses27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Congressional leaders have agreed to close a loophole that gave small businesses a big tax break.");
  }

  Future<void> speakcloses28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Once I got a few apps closed, it started working again.");
  }

  Future<void> speakcloses29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The pound closed at \$1.47 at the end of the day's trading.");
  }

  Future<void> speakcloses30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These measures are aimed at closing the gap between rich and poor.");
  }

  Future<void> speakcloses31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The gap between the two top teams is closing all the time.");
  }

  Future<void> speakcloses32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His life was drawing to a close.");
  }

  Future<void> speakcloses33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can we bring this meeting to a close?");
  }

  Future<void> speakcloses34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This chapter of her life had come to a close.");
  }

  Future<void> speakcloses35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "At the close of trading, he had lost thousands of pounds on the stock market.");
  }

  Future<void> speakcloses36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She gave her speech at the close of the conference.");
  }

  Future<void> speakcloses37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The door's close was gentle.");
  }

  Future<void> speakcloses38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I had no idea the beach was so close.");
  }

  Future<void> speakcloses39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Our new house is close to the school.");
  }

  Future<void> speakcloses40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She is looking for a job closer to home.");
  }

  Future<void> speakcloses41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The tables were too close together.");
  }

  Future<void> speakcloses42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Victory was tantalizingly close.");
  }

  Future<void> speakcloses43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She is very close to her father.");
  }

  Future<void> speakcloses44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Jo is a very close friend.");
  }

  Future<void> speakcloses45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We're a very close family.");
  }

  Future<void> speakcloses46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The two sisters seemed very close.");
  }

  Future<void> speakcloses47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The groom and his close family took their places.");
  }

  Future<void> speakcloses48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There weren't many people at the funeral - just close family.");
  }

  Future<void> speakcloses49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Only close relatives were invited.");
  }

  Future<void> speakcloses50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She has kept in close contact with the victims' families.");
  }

  Future<void> speakcloses51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They have forged a close working relationship.");
  }

  Future<void> speakcloses52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The college has close links with many other institutions.");
  }

  Future<void> speakcloses53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Even their closest allies were shocked by the move.");
  }

  Future<void> speakcloses54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He is one of the prime minister's closest advisers.");
  }

  Future<void> speakcloses55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Take a close look at this photograph.");
  }

  Future<void> speakcloses56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("On closer examination, the painting proved to be a fake.");
  }

  Future<void> speakcloses57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Pay close attention to what I am telling you.");
  }

  Future<void> speakcloses58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Police are paying close attention to the situation.");
  }

  Future<void> speakcloses59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The airline is close to collapse.");
  }

  Future<void> speakcloses60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The species is dangerously close to extinction.");
  }

  Future<void> speakcloses61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The new library is close to completion.");
  }

  Future<void> speakcloses62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She knew she was close to death.");
  }

  Future<void> speakcloses63(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's a close resemblance between them.");
  }

  Future<void> speakcloses64(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This movie is about as close to perfect as you could wish for.");
  }

  Future<void> speakcloses65(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Their chances of winning are close to zero.");
  }

  Future<void> speakcloses66(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His feeling for her was close to hatred.");
  }

  Future<void> speakcloses67(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We tried to match the colours, but this is the closest we could get.");
  }

  Future<void> speakcloses68(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was pretty close but we lost.");
  }

  Future<void> speakcloses69(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("No one expected such a close finish.");
  }

  Future<void> speakcloses70(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The result is going to be too close to call.");
  }

  Future<void> speakcloses71(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Phew! That was close—that car nearly hit us.");
  }

  Future<void> speakcloses72(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The soldiers advanced in close formation.");
  }

  Future<void> speakcloses73(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A close haircut is ideal for hot weather.");
  }

  Future<void> speakcloses74(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The donor's identity is a close secret.");
  }

  Future<void> speakcloses75(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It’s very close today—I think there’s going to be a storm.");
  }

  Future<void> speakcloses76(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was close about his past.");
  }

  Future<void> speakcloses77(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's always been very close with her money.");
  }

  Future<void> speakcloses78(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They sat close together.");
  }

  Future<void> speakcloses79(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A second police car followed close behind.");
  }

  Future<void> speakcloses80(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They are edging closer to an agreement.");
  }

  Future<void> speakcloses81(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't come too close!");
  }

  Future<void> speakcloses82(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He moved closer so that he could hear her better.");
  }

  Future<void> speakcloses83(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I couldn't get close enough to see.");
  }

  Future<void> speakcloses84(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Stay close to me!");
  }

  Future<void> speakcloses85(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She held Tom close and pressed her cheek to his.");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
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
                            EntryTitle(word: "close"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kləʊzd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclose("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kləʊzd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclose("en-US"),
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
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: نزیک،	گەرم‌گوڕ، گیانی‌گیانی، بستە،	پێوەدراو، داخراو، گیراو، بەسراو، گرتی،	پێک‌نزیک، پاڵ‌بەپاڵ، لەپاڵ‌یەک‌دا، پۆڕ، کەڵەکەبڕک، سیکەنەسەرخان، چڕ، بە تەنگی یەکەوە، پێکەوەنووساو، پێکەوەچەسپاو، نزیک بە یەک،	چکۆلە، تەنگ‌وتەسک، بەرتەنگ،	بۆخاو، خاو، گەرم، قورس، ناخۆش، گنخاو، خەفە (ھەوا)،	شاراوە، نادیار، نھێنی،	بەرچاوتەنگ، لەچەر، بەغیل، ڕژد،	سەخت، ڕشت، مجد، شێلگیر، لە پاڵ‌یەک‌دا، نزیک بە یەک، زۆر کورت، بەتەواوەتی، دەوروبەری، نزیکەی،	جێگای دەوردراو، دەوروبەر، حەوشە (کلێسا)،	بن‌بەست، بێ‌سەرەدەر، کوچکە (کۆڵان)
"""),
                          const DefinitionKurdish(text: "١. (کردار) داخستن"),
                          SentencesRow(
                            englishText: "He closed the door firmly.",
                            kurdishText: "دەرگاکەی بە قایمی گرت.", // close",
                            onPressedBritish: () => speakcloses1("en-GB"),
                            onPressedAmerican: () => speakcloses1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Would anyone mind if I closed the window?",
                            kurdishText: "کەس گرنگە لای ئەگەر دەرگاکە بگرم؟",
                            onPressedBritish: () => speakcloses2("en-GB"),
                            onPressedAmerican: () => speakcloses2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "It's dark now—let's close the curtains.",
                                    kurdishText:
                                        "تاریکە ئێستا، با پەردەکان دابخەین.",
                                    onPressedBritish: () =>
                                        speakcloses3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "I closed my eyes against the bright light.",
                                    kurdishText:
                                        "چاوم داخست لە بەرامبەر ڕۆشناییە زەقەکە.",
                                    onPressedBritish: () =>
                                        speakcloses4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The doors open and close automatically.",
                                    kurdishText:
                                        "دەرگاکان خۆکارانە دەکرێتەوە و دادەخرێت.",
                                    onPressedBritish: () =>
                                        speakcloses5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She closed her eyes and fell asleep immediately.",
                                    kurdishText:
                                        "چاوەکانی داخست و دەستبەجێ خەوت.",
                                    onPressedBritish: () =>
                                        speakcloses6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) لکاندنی بەشە جیاوازەکانی شتێک پێکەوە بۆ ئەوەی چی دیکە کراوە نەبێت"),
                          SentencesRow(
                            englishText:
                                "He ate greedily, without closing his mouth.",
                            kurdishText: "چڵێسانە دەیخوارد بەبێ داخستنی دەمی.",
                            onPressedBritish: () => speakcloses7("en-GB"),
                            onPressedAmerican: () => speakcloses7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He stopped reading and closed the book.",
                            kurdishText: "لە خوێندنەوە وەستا و کتێبەکەی داخست.",
                            onPressedBritish: () => speakcloses8("en-GB"),
                            onPressedAmerican: () => speakcloses8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He opened his umbrella when it started raining.",
                            kurdishText: "چەترەکەی کردەوە کە باران دەستیپێکرد.",
                            onPressedBritish: () => speakcloses9("en-GB"),
                            onPressedAmerican: () => speakcloses9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) داخستنی فرۆشگایەک، کۆمپانیایەک، ھتد بۆ ماوەیەک"),
                          SentencesRow(
                            englishText:
                                "The school was closed because of the heavy snow.",
                            kurdishText:
                                "قوتابخانەکە داخرا بەھۆی بەفربارینی دژوار.",
                            onPressedBritish: () => speakcloses10("en-GB"),
                            onPressedAmerican: () => speakcloses10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The museum has been closed for renovation.",
                            kurdishText: "مۆزەخانەکە بۆ نۆژەنکردنەوە داخراوە.",
                            onPressedBritish: () => speakcloses11("en-GB"),
                            onPressedAmerican: () => speakcloses11("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The road was closed to traffic for two days.",
                                    kurdishText:
                                        "ڕێگاکە بۆ دوو ڕۆژ بە ڕووی ھاتوچۆدا داخرا.",
                                    onPressedBritish: () =>
                                        speakcloses12("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses12("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "What time does the bank close?",
                                    kurdishText:
                                        "بانکەکە لا کاتژمێر چەند دادەخرێت؟",
                                    onPressedBritish: () =>
                                        speakcloses13("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) وەستانی کۆمپانیایەک، فرۆشگایەک، ھتد لە کارکردن"),
                          SentencesRow(
                            englishText:
                                "The hospital closed at the end of last year.",
                            kurdishText:
                                "نەخۆشخانەکە داخرا لە کۆتایی ساڵی پار.",
                            onPressedBritish: () => speakcloses14("en-GB"),
                            onPressedAmerican: () => speakcloses14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The club was closed by the police.",
                            kurdishText: "یانەکە لەلایەن پۆلیسەوە داخرا.",
                            onPressedBritish: () => speakcloses15("en-GB"),
                            onPressedAmerican: () => speakcloses15("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "They are closing their Liverpool factory.",
                                    kurdishText:
                                        "کارگەکەی لیڤەرپولیان دادەخەن.",
                                    onPressedBritish: () =>
                                        speakcloses16("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses16("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The company has announced plans to close three factories and lay off 600 workers.",
                                    kurdishText:
                                        "کۆمپانیاکە پلانی ڕاگەیاند بۆ داخستنی سێ کارگە و دەرکردنی ٦٠٠ کرێکار.",
                                    onPressedBritish: () =>
                                        speakcloses17("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) کۆتایی ھاتن یان کۆتایی پێھێنان"),
                          SentencesRow(
                            englishText: "The meeting will close at 10.00 p.m.",
                            kurdishText:
                                "چاوپێکەوتنەکە لە ١٠.٠٠ ـی شەو کۆتایی دێت.",
                            onPressedBritish: () => speakcloses18("en-GB"),
                            onPressedAmerican: () => speakcloses18("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The offer closes at the end of the week.",
                            kurdishText:
                                "ئۆفەرەکە لە کۆتایی ھەفتە تەواو دەبێت.",
                            onPressedBritish: () => speakcloses19("en-GB"),
                            onPressedAmerican: () => speakcloses19("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "I will close with a few words about future events.",
                                    kurdishText:
                                        "بە چەند وتەیەکی کەم سەبارەت بە بۆنەکانی داھاتوو کۆتایی پێدێنم.",
                                    onPressedBritish: () =>
                                        speakcloses20("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses20("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The subject is now closed (= we will not discuss it again).",
                                    kurdishText: "بابەتەکە لە ئێستادا داخراوە.",
                                    onPressedBritish: () =>
                                        speakcloses21("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses21("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "A police spokesman said that the case was now closed.",
                                    kurdishText:
                                        "وتەبێژێکی پۆلیس وتی بابەتەکە لە ئێستادا داخراوە.",
                                    onPressedBritish: () =>
                                        speakcloses22("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses22("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Counting of votes will begin when the polls close.",
                                    kurdishText:
                                        "ژماردنی دەنگەکان دەست پێدەکات کە سندووقەکان دادەخرێن.",
                                    onPressedBritish: () =>
                                        speakcloses23("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses23("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) ئامادەکردن و بەستنی ڕێککەوتنێکی بازرگانی"),
                          SentencesRow(
                            englishText:
                                "Right now we are trying to close the deal with our sponsors.",
                            kurdishText:
                                "لە ئێستادا ھەوڵ دەدەین ڕێککەوتنەکە لەگەڵ سپۆنسەرەکانمان کۆتایی پێبێنین.",
                            onPressedBritish: () => speakcloses24("en-GB"),
                            onPressedAmerican: () => speakcloses24("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We closed a deal with a major supermarket.",
                            kurdishText:
                                "ڕێککەوتنێکمان لەگەڵ سوپەرمارکێتێکی گەورە بەست.",
                            onPressedBritish: () => speakcloses25("en-GB"),
                            onPressedAmerican: () => speakcloses25("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) کۆتایی ھێنان بە ھەڵەیەک لە شتێکدا کە مەترسی لە سەلامتیدا درووست دەکات یان دژ بە کەسێک دەبێت"),
                          SentencesRow(
                            englishText:
                                "The company acted quickly to close a security hole in its online systems.",
                            kurdishText:
                                "کۆمپانیاکە بە خێرایی ھەنگاوی نا بۆ چارەسەری کێشەیەکی سەلامەتی لە سیستەمی ئۆنلاینیدا.",
                            onPressedBritish: () => speakcloses26("en-GB"),
                            onPressedAmerican: () => speakcloses26("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Congressional leaders have agreed to close a loophole that gave small businesses a big tax break.",
                            kurdishText:
                                "بەرپرسانی کۆنگرێس ڕێککەوتن کۆتایی بە دەروویەک بێنن کە داشکانێکی گەورەی لە بادان دەدا بە بازرگانییە بچووکەکان.",
                            onPressedBritish: () => speakcloses27("en-GB"),
                            onPressedAmerican: () => speakcloses27("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) وەستان لە بەکارھێنانی پڕۆگرامێک یان فایلێکی کۆمپیوتەرێک"),
                          SentencesRow(
                            englishText:
                                "Once I got a few apps closed, it started working again.",
                            kurdishText:
                                "کە چەند ئەپێکم داخست، دووبارە دەستی بە کارکردن کردەوە.",
                            onPressedBritish: () => speakcloses28("en-GB"),
                            onPressedAmerican: () => speakcloses28("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (کردار) نرخی شتێک لە کۆتایی ڕۆژێکدا"),
                          SentencesRow(
                            englishText:
                                "The pound closed at (= was worth) \$1.47 at the end of the day's trading.",
                            kurdishText:
                                "پاوەند یەکسان بوو بە ١,٤٧ دۆلار لە کۆتایی مامەڵەی ڕۆژەکەدا.",
                            onPressedBritish: () => speakcloses29("en-GB"),
                            onPressedAmerican: () => speakcloses29("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) کەمبوونی مەودای نێوان دوو کەس یان شت"),
                          SentencesRow(
                            englishText:
                                "These measures are aimed at closing the gap between rich and poor.",
                            kurdishText:
                                "ئەم ھەنگاوانە ئامانج لێیانە کە مەودای نێوان دەوڵەمەند و ھەژار کەم بکاتەوە.",
                            onPressedBritish: () => speakcloses30("en-GB"),
                            onPressedAmerican: () => speakcloses30("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The gap between the two top teams is closing all the time.",
                            kurdishText:
                                "جیاوازی نێوان دوو تیمەکە ھەموو کات کەم دەبێتەوە.",
                            onPressedBritish: () => speakcloses31("en-GB"),
                            onPressedAmerican: () => speakcloses31("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (ناو) کۆتایی ماوەیەک، کاتێک، یان چالاکییەک"),
                          SentencesRow(
                            englishText: "His life was drawing to a close.",
                            kurdishText: "ژیانی بە کۆتا دەگەشت.",
                            onPressedBritish: () => speakcloses32("en-GB"),
                            onPressedAmerican: () => speakcloses32("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Can we bring this meeting to a close?",
                            kurdishText: "دەکرێت کۆتایی بەم گفتوگۆیە بێنین.",
                            onPressedBritish: () => speakcloses33("en-GB"),
                            onPressedAmerican: () => speakcloses33("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "This chapter of her life had come to a close.",
                                    kurdishText:
                                        "ئەم بەشەی ژیانی گەشت بوو بە کۆتایەک.",
                                    onPressedBritish: () =>
                                        speakcloses34("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses34("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "At the close of trading, he had lost thousands of pounds on the stock market.",
                                    kurdishText:
                                        "لە کۆتایی مامەڵەدا، ھەزاران پاوەندی لە بازاڕی پشکەکاندا زەرەرکردبوو.",
                                    onPressedBritish: () =>
                                        speakcloses35("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses35("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She gave her speech at the close of the conference.",
                                    kurdishText:
                                        "وتارەکەی پێشکەشکرد لە کۆتایی کۆنفرانسەکەدا.",
                                    onPressedBritish: () =>
                                        speakcloses36("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses36("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٢. (ناو) داخران"),
                          SentencesRow(
                            englishText: "The door's close was gentle.",
                            kurdishText: "داخرانی دەرگاکە لەسەرخۆ بوو.",
                            onPressedBritish: () => speakcloses37("en-GB"),
                            onPressedAmerican: () => speakcloses37("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٣. (ھاوەڵناو) نزیک"),
                          SentencesRow(
                            englishText:
                                "I had no idea the beach was so close.",
                            kurdishText:
                                "ھیچ زانیارییەکم نەبوو کەناراوەکە ھێندە نزیک بوو.",
                            onPressedBritish: () => speakcloses38("en-GB"),
                            onPressedAmerican: () => speakcloses38("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Our new house is close to the school.",
                            kurdishText:
                                "خانووە تازەکەمان نزیکە لە قوتابخانەکەوە.",
                            onPressedBritish: () => speakcloses39("en-GB"),
                            onPressedAmerican: () => speakcloses39("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "She is looking for a job closer to home.",
                                    kurdishText:
                                        "بۆ کارێک دەگەڕێت نزیکتر بێت لە ماڵەوە.",
                                    onPressedBritish: () =>
                                        speakcloses40("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses40("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The tables were too close together.",
                                    kurdishText:
                                        "مێزەکان زۆر لە یەکەوە نزیک بوون.",
                                    onPressedBritish: () =>
                                        speakcloses41("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses41("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Victory was tantalizingly close.",
                                    kurdishText:
                                        "سەرکەوتن دیق‌پێ‌کەرانە نزیک بوو.",
                                    onPressedBritish: () =>
                                        speakcloses42("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses42("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٤. (ناو) ناسی کەسێک زۆر بە باشی و خۆشویستنیان"),
                          SentencesRow(
                            englishText: "She is very close to her father.",
                            kurdishText: "زۆر نزیکە لە باوکی.",
                            onPressedBritish: () => speakcloses43("en-GB"),
                            onPressedAmerican: () => speakcloses43("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Jo is a very close friend.",
                            kurdishText: "جۆ ھاوڕێیەکی گیانی بە گیانییە.",
                            onPressedBritish: () => speakcloses44("en-GB"),
                            onPressedAmerican: () => speakcloses44("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText: "We're a very close family.",
                                    kurdishText: "خێزانێکی گەرم‌وگوڕین.",
                                    onPressedBritish: () =>
                                        speakcloses45("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses45("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The two sisters seemed very close.",
                                    kurdishText:
                                        "دوو خوشکەکە زۆر نزیک لە یەک دیاربوون.",
                                    onPressedBritish: () =>
                                        speakcloses46("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses46("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٥. (ھاوەڵناو) نزیک لە پەیوەندی خێزانیدا"),
                          SentencesRow(
                            englishText:
                                "The groom and his close family took their places.",
                            kurdishText:
                                "زاوا و ئەندامانی نزیکی خێزەنەکەی چوونە شوێنەکانیان.",
                            onPressedBritish: () => speakcloses47("en-GB"),
                            onPressedAmerican: () => speakcloses47("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There weren't many people at the funeral - just close family.",
                            kurdishText:
                                "زۆر کەس لە مەراسیمی ناشتنەکە نەبوون، تەنھا ئەندامانی نزیکی خێزان بوون.",
                            onPressedBritish: () => speakcloses48("en-GB"),
                            onPressedAmerican: () => speakcloses48("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Only close relatives were invited.",
                                    kurdishText:
                                        "تەنھا خزمانی نزیک بانگھێشتکران.",
                                    onPressedBritish: () =>
                                        speakcloses49("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses49("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٦. (ناو) زۆر بەژدار لە کار و چالاکی کەسێکی دیکە و بەردەوام بینین و قسەکردن لەگەڵیان"),
                          SentencesRow(
                            englishText:
                                "She has kept in close contact with the victims' families.",
                            kurdishText:
                                "پەیوەندی نزیکی ڕاگرتووە لەگەڵ خێزانی قوربانییەکە.",
                            onPressedBritish: () => speakcloses50("en-GB"),
                            onPressedAmerican: () => speakcloses50("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They have forged a close working relationship.",
                            kurdishText:
                                "پەیوەندییەکی نزیکی کارکردنیان درووستکردووە.",
                            onPressedBritish: () => speakcloses51("en-GB"),
                            onPressedAmerican: () => speakcloses51("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The college has close links with many other institutions.",
                                    kurdishText:
                                        "کۆلێژەکە پەیوەندیی نزیکی ھەیە لەگەڵ ژمارەیەکی زۆری دیکە لە پەیمانگا.",
                                    onPressedBritish: () =>
                                        speakcloses52("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses52("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Even their closest allies were shocked by the move.",
                                    kurdishText:
                                        "تەنانەت نزیکترین ھاوپەیمانەکانیشیان شۆک بوون بە جوڵەکە.",
                                    onPressedBritish: () =>
                                        speakcloses53("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses53("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He is one of the prime minister's closest advisers.",
                                    kurdishText:
                                        "یەکێک لە ڕاوێژکارە نزیکەکانی سەرۆک وەزیرانە.",
                                    onPressedBritish: () =>
                                        speakcloses54("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses54("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٧. (ھاوەڵناو) بە وریایی و تەواوی"),
                          SentencesRow(
                            englishText:
                                "Take a close look at this photograph.",
                            kurdishText: "چاوێکی ورد بنۆڕە لەم وێنەیە.",
                            onPressedBritish: () => speakcloses55("en-GB"),
                            onPressedAmerican: () => speakcloses55("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "On closer examination, the painting proved to be a fake.",
                            kurdishText:
                                "لە دوای وردبوونەوەی وردتر، تابلۆکە وادەرچوو ساختە بێت.",
                            onPressedBritish: () => speakcloses56("en-GB"),
                            onPressedAmerican: () => speakcloses56("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Pay close attention to what I am telling you.",
                                    kurdishText:
                                        "سەرنجی ورد بدە بەوەی پێت دەڵێم.",
                                    onPressedBritish: () =>
                                        speakcloses57("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses57("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Police are paying close attention to the situation.",
                                    kurdishText:
                                        "پۆلیس سەرنجی ورد دەدەن بە دۆخەکە.",
                                    onPressedBritish: () =>
                                        speakcloses58("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses58("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٨. (ناو) نزیک لە دۆخێکی دیاریکراو؛ نزیک لە کردنی شتێک"),
                          SentencesRow(
                            englishText: "The airline is close to collapse.",
                            kurdishText: "ھێڵە ئاسمانییەکە نزیکە لە داڕمان.",
                            onPressedBritish: () => speakcloses59("en-GB"),
                            onPressedAmerican: () => speakcloses59("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The species is dangerously close to extinction.",
                            kurdishText:
                                "چەشنەکە بەشێوەیەکی مەترسیدار نزیکە لە لەناوچوون.",
                            onPressedBritish: () => speakcloses60("en-GB"),
                            onPressedAmerican: () => speakcloses60("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The new library is close to completion.",
                                    kurdishText:
                                        "کتێبخانەکە تازەکە نزیکە لە تەواوبوون.",
                                    onPressedBritish: () =>
                                        speakcloses61("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses61("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She knew she was close to death.",
                                    kurdishText: "دەیزانی لەسەر لێواری مەرگە.",
                                    onPressedBritish: () =>
                                        speakcloses62("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses62("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٩. (ھاوەڵناو) زۆر نزیک لە شتێک یان بڕێک"),
                          SentencesRow(
                            englishText:
                                "There's a close resemblance between them (= they look very similar).",
                            kurdishText: "لێکچوونێکی زۆر ھەیە لە نێوانیان.",
                            onPressedBritish: () => speakcloses63("en-GB"),
                            onPressedAmerican: () => speakcloses63("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This movie is about as close to perfect as you could wish for.",
                            kurdishText:
                                "فیلمەکە تا بەرزترین ئاست کە ھیوای پێ بخوازیت نزیکە لە بێ‌خەوشییەوە.",
                            onPressedBritish: () => speakcloses64("en-GB"),
                            onPressedAmerican: () => speakcloses64("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Their chances of winning are close to zero.",
                                    kurdishText:
                                        "شانسی بردنەوەیان نزیکە لە سفرەوە.",
                                    onPressedBritish: () =>
                                        speakcloses65("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses65("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "His feeling for her was close to hatred.",
                                    kurdishText:
                                        "ھەستەکانی بۆی لە ڕقەوە نزیک بوو.",
                                    onPressedBritish: () =>
                                        speakcloses66("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses66("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We tried to match the colours, but this is the closest we could get.",
                                    kurdishText:
                                        "ھەوڵماندا ڕەنگەکان بگونجێنین، بەڵام ئەمە نزیکترینە کە توانیمان بەدەستی بێنین.",
                                    onPressedBritish: () =>
                                        speakcloses67("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses67("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٢٠. (ناو) بردنەوە بە مەودایەک یان بڕێکی کەم"),
                                  SentencesRow(
                                    englishText:
                                        "It was pretty close but we lost.",
                                    kurdishText:
                                        "زۆر نزیک بوو بەڵام دۆڕاندمان.",
                                    onPressedBritish: () =>
                                        speakcloses68("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses68("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "No one expected such a close finish.",
                                    kurdishText:
                                        "ھیچ کەس پێشبینی کۆتاییەکی وەھا سەختی نەدەکرد.",
                                    onPressedBritish: () =>
                                        speakcloses69("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses69("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The result is going to be too close to call (= either side may win).",
                                    kurdishText:
                                        "ئەنجامەکان زۆر لە یەک نزیک دەبن کە پێشبینی بکرێن.",
                                    onPressedBritish: () =>
                                        speakcloses70("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses70("en-US"),
                                  ),
                                  // const DividerDefinition(),
                                  // const DefinitionKurdish(text: "٢١. (ھاوەڵناو) بۆ باسکردنی دۆخێک کە زۆرجار ناخۆش یان ترسناکە و نزیکە لە ڕوودان"),
                                  // Row(
                                  // children: [
                                  // const Expanded(
                                  // child: Column(
                                  // children: [
                                  // ExampleSentenceEnglish(
                                  // text:
                                  // "Phew! That was close—that car nearly hit us."),
                                  // ExampleSentenceKurdish(
                                  // text: "وەی! ."),
                                  // ],
                                  // ),
                                  // ),
                                  // const CustomSizedBoxForTTS(),
                                  // Column(
                                  // children: [
                                  // CustomIconButtonBritish(
                                  // onPressed: () => speakcloses71("en-GB"),
                                  // ),
                                  // CustomIconButtonAmerican(
                                  // onPressed: () => speakcloses71("en-US"),
                                  // ),
                                  // ],
                                  // ),
                                  // ],
                                  // ),
                                  // skipped_meaning
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٢١. (ناو) بەبێ بۆشایی لە نێواندا، یان بە بۆشاییەکی کەمەوە"),
                                  SentencesRow(
                                    englishText:
                                        "The soldiers advanced in close formation.",
                                    kurdishText:
                                        "سەربازەکان بۆ پێشەوە دەچوون بە ڕێکخستنێکی چکۆلە.",
                                    onPressedBritish: () =>
                                        speakcloses72("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses72("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text: "٢٢. (ناو) زۆر کورت بڕاو"),
                                  SentencesRow(
                                    englishText:
                                        "A close haircut is ideal for hot weather.",
                                    kurdishText:
                                        "قژێکی کوڵ زۆر باشە بۆ کەشێ گەرم.",
                                    onPressedBritish: () =>
                                        speakcloses73("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses73("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٢٣. (ناو) زۆر بە توندی پاسەوانیکراو"),
                                  SentencesRow(
                                    englishText:
                                        "The donor's identity is a close secret.",
                                    kurdishText:
                                        "ناسنامەی بەخشەرەکە نھێنییەکی پارێزراوە.",
                                    onPressedBritish: () =>
                                        speakcloses74("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses74("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٢٤. (ھاوەڵناو) گەرم بەشێوەیەکی ناخۆش بەھۆی ئەوەی زۆر ھەوای خۆش نییە"),
                                  SentencesRow(
                                    englishText:
                                        "It’s very close today—I think there’s going to be a storm.",
                                    kurdishText:
                                        "ئەمڕۆ زۆر بۆخاوە، پێم‌وایە زریانێک دەبێت.",
                                    onPressedBritish: () =>
                                        speakcloses75("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses75("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٢٥. (ھاوەڵناو) کەسێک کە ئامادە نییە زانیاری لەسەر خۆی ئاشکرا بکات"),
                                  SentencesRow(
                                    englishText: "He was close about his past.",
                                    kurdishText:
                                        "زۆر داخراو بوو سەبارەت بە ڕابردووی.",
                                    onPressedBritish: () =>
                                        speakcloses76("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses76("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text: "٢٦. (ھاوەڵناو) ڕەزیل؛ چرووک"),
                                  SentencesRow(
                                    englishText:
                                        "She's always been very close with her money.",
                                    kurdishText:
                                        "ھەمیشە چڕووک بووە سەبارەت بە پارەکانی.",
                                    onPressedBritish: () =>
                                        speakcloses77("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses77("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text: "٢٧. (ھاوەڵکار) نزیک"),
                                  SentencesRow(
                                    englishText: "They sat close together.",
                                    kurdishText: "نزیک لە یەک پێکەوە دانیشتن.",
                                    onPressedBritish: () =>
                                        speakcloses78("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses78("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "A second police car followed close behind.",
                                    kurdishText:
                                        "دووەمین ئۆتۆمبێلی پۆلیس نزیک لە دواوە کەوتە شوێنی.",
                                    onPressedBritish: () =>
                                        speakcloses79("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcloses79("en-US"),
                                  ),
                                  Column(
                                    children: [
                                      MyExpansionTile(
                                        children: [
                                          SentencesRow(
                                            englishText:
                                                "They are edging closer to an agreement.",
                                            kurdishText:
                                                "نزیک دەبنەوە لە ڕێککەوتنێک.",
                                            onPressedBritish: () =>
                                                speakcloses80("en-GB"),
                                            onPressedAmerican: () =>
                                                speakcloses80("en-US"),
                                          ),
                                          const DividerSentences(),
                                          SentencesRow(
                                            englishText:
                                                "Don't come too close!",
                                            kurdishText: "زۆر نزیک مەبەوە!",
                                            onPressedBritish: () =>
                                                speakcloses81("en-GB"),
                                            onPressedAmerican: () =>
                                                speakcloses81("en-US"),
                                          ),
                                          const DividerSentences(),
                                          SentencesRow(
                                            englishText:
                                                "He moved closer so that he could hear her better.",
                                            kurdishText:
                                                "نزیک بووەوە بۆ ئەوەی باشتر گوێی لێی بێت.",
                                            onPressedBritish: () =>
                                                speakcloses82("en-GB"),
                                            onPressedAmerican: () =>
                                                speakcloses82("en-US"),
                                          ),
                                          const DividerSentences(),
                                          SentencesRow(
                                            englishText:
                                                "I couldn't get close enough to see.",
                                            kurdishText:
                                                "ھێندە نزیک نەبوومەوە کە بیبینم.",
                                            onPressedBritish: () =>
                                                speakcloses83("en-GB"),
                                            onPressedAmerican: () =>
                                                speakcloses83("en-US"),
                                          ),
                                          const DividerSentences(),
                                          SentencesRow(
                                            englishText: "Stay close to me!",
                                            kurdishText: "نزیک لێم بمێنەوە!",
                                            onPressedBritish: () =>
                                                speakcloses84("en-GB"),
                                            onPressedAmerican: () =>
                                                speakcloses84("en-US"),
                                          ),
                                          const DividerSentences(),
                                          SentencesRow(
                                            englishText:
                                                "She held Tom close and pressed her cheek to his.",
                                            kurdishText:
                                                "تۆمی لە نزیکی ڕاگرت و گۆنای نا بە گۆنایەوە.",
                                            onPressedBritish: () =>
                                                speakcloses85("en-GB"),
                                            onPressedAmerican: () =>
                                                speakcloses85("en-US"),
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
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

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
- Verb: close (derived forms: closing, closed, closes)
1. Move so that an opening or passage is obstructed; make shut (= shut)
"Close the door";
 
2. Stop being open; become shut or obstructed (= shut)
"The windows closed with a loud bang";
 
3. Cease to operate or cause to cease operating (= close up, fold, shut down, close down)
"The owners decided to move and to close the factory"; "My business closes every night at 8 P.M."; "close up the shop"; "close down the shop";
 
4. Finish or terminate (meetings, speeches, etc.)
"The meeting was closed with a charge by the chairman of the board"
 
5. Finish in a particular way or with a particular event (= conclude)
"The concert closed with a nocturne by Chopin";
 
6. Complete a business deal, negotiation, or an agreement
"We closed on the house on Friday"; "They closed the deal on the building"
 
7. Be priced or listed when trading stops
"The stock market closed high this Friday"; "My new stocks closed at £59 last night"
 
8. Engage at close quarters
"close with the enemy"
 
9. Cause a window or an application to disappear on a computer desktop
 
10. (ball game) change one's body stance so that the forward shoulder and foot are closer to the intended point of impact
 
11. Come together, as if in an embrace
"Her arms came together around her long lost relative"; "Her arms closed around her long lost relative"
 
12. Draw near
"The probe closed with the space station"
 
13. Bring together all the elements or parts of
"Management closed ranks"
 
14. Bar access to
"Due to the accident, the road had to be closed for several hours"
 
15. Fill or stop up (= fill up)
"Can you close the cracks with caulking?";
 
16. Unite or bring into contact or bring together the edges of (= close up)
"close the circuit"; "close a wound"; "close up an umbrella";
 
17. Finish a game in baseball by protecting a lead
"The relief pitcher closed with two runs in the second inning"

- Adjective: close (derived forms: closest, closer)
1. At or within a short distance in space or time or having elements near each other
"close to noon"; "how close are we to town?"; "a close formation of ships"
 
2. Close in relevance or relationship
"a close family"; "we are all...in close sympathy with..."; "close kin"; "a close resemblance"
 
3. Not far distant in time, space, degree or circumstances (= near, nigh)
"she was close to tears"; "had a close call";
 
4. Rigorously attentive; strict and thorough
"close supervision"; "paid close attention"; "a close study"; "kept a close watch on expenditures"
 
5. Marked by fidelity to an original (= faithful)
"a close translation";
 
6. (of a contest or contestants) evenly matched (= tight)
"a close contest";
 
7. In close proximity; crowded (= confining)
"close quarters";
 
8. Lacking fresh air (= airless, stuffy, unaired)
"the dreadfully close atmosphere";
 
9. (of textiles) having little space between threads; dense (= tight)
"a close weave";
 
10. Strictly confined or guarded
"kept under close custody"
 
11. Confined to specific persons
"a close secret"
 
12. Fitting closely but comfortably (= snug, close-fitting)
"a close fit";
 
13. Used of hair or haircuts
"a close military haircut"
 
14. Giving or spending with reluctance (= cheeseparing, near, penny-pinching, skinny)
"very close with his money";
 
15. Inclined to secrecy or reticence about divulging information (= closelipped, closemouthed, secretive, tightlipped)
"although they knew her whereabouts her friends kept close about it";

- Adverb: close 
1. Not far away in position, relationship or time (= near, nigh)
"the bullet didn't come close"; "don't get too close to the fire";
 
2. In an attentive manner (= closely, tight)
"he remained close on his guard";

- Noun: close (derived forms: closes)
1. The temporal end; the concluding time (= stopping point, finale, finis, finish, last, conclusion)
"they were playing better at the close of the season";
 
2. The last section of a communication (= conclusion, end, closing, ending)
 
3. The concluding part of any performance (= finale, closing curtain, finis)
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),

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
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'WI-vVCS-0jo';
  final double _startSeconds = 10;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'G7bDft7-_Rc';
  final double _startSeconds = 6;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'lQG3Bc7bui4';
  final double _startSeconds = 9;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'Bft-AHwfKbU';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = '6bTcFTRoqcw';
  final double _startSeconds = 5;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 595;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 1036;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'FHJ3CMWnVxY';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB