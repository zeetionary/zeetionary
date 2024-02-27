import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryclose extends StatelessWidget {
  // blank divider
  EnglishEntryclose({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclose(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("close"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses1(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He closed the door firmly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses2(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Would anyone mind if I closed the window?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses3(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's dark now—let's close the curtains."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses4(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I closed my eyes against the bright light."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses5(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The doors open and close automatically."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses6(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She closed her eyes and fell asleep immediately."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses7(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He ate greedily, without closing his mouth."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses8(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He stopped reading and closed the book."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses9(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He opened his umbrella when it started raining."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses10(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The school was closed because of the heavy snow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses11(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The museum has been closed for renovation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses12(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The road was closed to traffic for two days."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses13(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("What time does the bank close?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses14(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The hospital closed at the end of last year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses15(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The club was closed by the police."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses16(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They are closing their Liverpool factory."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses17(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company has announced plans to close three factories and lay off 600 workers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses18(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The meeting will close at 10.00 p.m."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses19(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The offer closes at the end of the week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses20(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I will close with a few words about future events."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses21(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The subject is now closed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses22(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A police spokesman said that the case was now closed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses23(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Counting of votes will begin when the polls close."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses24(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Right now we are trying to close the deal with our sponsors."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses25(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We closed a deal with a major supermarket."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses26(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company acted quickly to close a security hole in its online systems."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses27(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Congressional leaders have agreed to close a loophole that gave small businesses a big tax break."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses28(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Once I got a few apps closed, it started working again."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses29(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The pound closed at \$1.47 at the end of the day's trading."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses30(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These measures are aimed at closing the gap between rich and poor."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses31(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The gap between the two top teams is closing all the time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses32(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His life was drawing to a close."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses33(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Can we bring this meeting to a close?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses34(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This chapter of her life had come to a close."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses35(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "At the close of trading, he had lost thousands of pounds on the stock market."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses36(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She gave her speech at the close of the conference."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses37(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The door's close was gentle."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses38(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I had no idea the beach was so close."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses39(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Our new house is close to the school."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses40(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is looking for a job closer to home."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses41(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The tables were too close together."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses42(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Victory was tantalizingly close."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses43(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She is very close to her father."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses44(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Jo is a very close friend."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses45(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We're a very close family."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses46(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The two sisters seemed very close."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses47(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The groom and his close family took their places."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses48(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There weren't many people at the funeral - just close family."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses49(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Only close relatives were invited."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses50(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has kept in close contact with the victims' families."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses51(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They have forged a close working relationship."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses52(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The college has close links with many other institutions."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses53(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Even their closest allies were shocked by the move."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses54(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He is one of the prime minister's closest advisers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses55(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Take a close look at this photograph."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses56(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "On closer examination, the painting proved to be a fake."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses57(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Pay close attention to what I am telling you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses58(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Police are paying close attention to the situation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses59(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The airline is close to collapse."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses60(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The species is dangerously close to extinction."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses61(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The new library is close to completion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses62(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She knew she was close to death."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses63(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There's a close resemblance between them."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses64(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This movie is about as close to perfect as you could wish for."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses65(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their chances of winning are close to zero."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses66(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His feeling for her was close to hatred."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses67(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We tried to match the colours, but this is the closest we could get."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses68(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was pretty close but we lost."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses69(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("No one expected such a close finish."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses70(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The result is going to be too close to call."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses71(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Phew! That was close—that car nearly hit us."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses72(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The soldiers advanced in close formation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses73(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A close haircut is ideal for hot weather."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses74(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The donor's identity is a close secret."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses75(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It’s very close today—I think there’s going to be a storm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses76(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was close about his past."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses77(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's always been very close with her money."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses78(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They sat close together."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses79(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A second police car followed close behind."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses80(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They are edging closer to an agreement."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses81(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't come too close!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses82(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He moved closer so that he could hear her better."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses83(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I couldn't get close enough to see."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses84(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Stay close to me!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses85(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She held Tom close and pressed her cheek to his."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses86(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses8600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses87(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses8700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses88(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses8800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses89(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses8900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcloses90(String languageCode) async {
    // DOPSUM: CHANGE speakclose
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcloses9000"); // DOPSUM: CHANGE TEXT
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: نزیک،	گەرم‌گوڕ، گیانی‌گیانی، بستە،	پێوەدراو، داخراو، گیراو، بەسراو، گرتی،	پێک‌نزیک، پاڵ‌بەپاڵ، لەپاڵ‌یەک‌دا، پۆڕ، کەڵەکەبڕک، سیکەنەسەرخان، چڕ، بە تەنگی یەکەوە، پێکەوەنووساو، پێکەوەچەسپاو، نزیک بە یەک،	چکۆلە، تەنگ‌وتەسک، بەرتەنگ،	بۆخاو، خاو، گەرم، قورس، ناخۆش، گنخاو، خەفە (هەوا)،	شاراوە، نادیار، نهێنی،	بەرچاوتەنگ، لەچەر، بەغیل، ڕژد،	سەخت، ڕشت، مجد، شێلگیر، لە پاڵ‌یەک‌دا، نزیک بە یەک، زۆر کورت، بەتەواوەتی، دەوروبەری، نزیکەی،	جێگای دەوردراو، دەوروبەر، حەوشە (کلێسا)،	بن‌بەست، بێ‌سەرەدەر، کوچکە (کۆڵان)
"""),
                          const DefinitionKurdish(text: "١. (کردار) داخستن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "He closed the door firmly."),
                                    ExampleSentenceKurdish(
                                        text: "دەرگاکەی بە قایمی گرت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "close", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses1("en-US"),
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
                                            "Would anyone mind if I closed the window?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەس گرنگە لای ئەگەر دەرگاکە بگرم؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses2("en-US"),
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
                                                    "It's dark now—let's close the curtains."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تاریکە ئێستا، با پەردەکان دابخەین."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses3("en-US"),
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
                                                    "I closed my eyes against the bright light."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "چاوم داخست لە بەرامبەر ڕۆشناییە زەقەکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses4("en-US"),
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
                                                    "The doors open and close automatically."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دەرگاکان خۆکارانە دەکرێتەوە و دادەخرێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses5("en-US"),
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
                                                    "She closed her eyes and fell asleep immediately."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "چاوەکانی داخست و دەستبەجێ خەوت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses6("en-US"),
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
                                  "٢. (کردار) لکاندنی بەشە جیاوازەکانی شتێک پێکەوە بۆ ئەوەی چی دیکە کراوە نەبێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He ate greedily, without closing his mouth."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چڵێسانە دەیخوارد بەبێ داخستنی دەمی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses7("en-US"),
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
                                            "He stopped reading and closed the book."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە خوێندنەوە وەستا و کتێبەکەی داخست."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses8("en-US"),
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
                                            "He opened his umbrella when it started raining."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چەترەکەی کردەوە کە باران دەستیپێکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) داخستنی فرۆشگایەک، کۆمپانیایەک، هتد بۆ ماوەیەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The school was closed because of the heavy snow."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "قوتابخانەکە داخرا بەهۆی بەفربارینی دژوار."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses10("en-US"),
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
                                            "The museum has been closed for renovation."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مۆزەخانەکە بۆ نۆژەنکردنەوە داخراوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses11("en-US"),
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
                                                    "The road was closed to traffic for two days."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ڕێگاکە بۆ دوو ڕۆژ بە ڕووی هاتوچۆدا داخرا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses12("en-US"),
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
                                                    "What time does the bank close?"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بانکەکە لا کاتژمێر چەند دادەخرێت؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses13("en-US"),
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
                                  "٤. (کردار) وەستانی کۆمپانیایەک، فرۆشگایەک، هتد لە کارکردن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The hospital closed at the end of last year."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نەخۆشخانەکە داخرا لە کۆتایی ساڵی پار."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses14("en-US"),
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
                                            "The club was closed by the police."),
                                    ExampleSentenceKurdish(
                                        text: "یانەکە لەلایەن پۆلیسەوە داخرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses15("en-US"),
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
                                                    "They are closing their Liverpool factory."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کارگەکەی لیڤەرپولیان دادەخەن."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses16("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses16("en-US"),
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
                                                    "The company has announced plans to close three factories and lay off 600 workers."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کۆمپانیاکە پلانی ڕاگەیاند بۆ داخستنی سێ کارگە و دەرکردنی ٦٠٠ کرێکار."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses17("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses17("en-US"),
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
                                  "٥. (کردار) کۆتایی هاتن یان کۆتایی پێهێنان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The meeting will close at 10.00 p.m."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چاوپێکەوتنەکە لە ١٠.٠٠ ـی شەو کۆتایی دێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses18("en-US"),
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
                                            "The offer closes at the end of the week."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئۆفەرەکە لە کۆتایی هەفتە تەواو دەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses19("en-US"),
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
                                                    "I will close with a few words about future events."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بە چەند وتەیەکی کەم سەبارەت بە بۆنەکانی داهاتوو کۆتایی پێدێنم."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses20("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses20("en-US"),
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
                                                    "The subject is now closed (= we will not discuss it again)."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بابەتەکە لە ئێستادا داخراوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses21("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses21("en-US"),
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
                                                    "A police spokesman said that the case was now closed."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "وتەبێژێکی پۆلیس وتی بابەتەکە لە ئێستادا داخراوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses22("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses22("en-US"),
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
                                                    "Counting of votes will begin when the polls close."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ژماردنی دەنگەکان دەست پێدەکات کە سندووقەکان دادەخرێن."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses23("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses23("en-US"),
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
                                  "٦. (کردار) ئامادەکردن و بەستنی ڕێککەوتنێکی بازرگانی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Right now we are trying to close the deal with our sponsors."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ئێستادا هەوڵ دەدەین ڕێککەوتنەکە لەگەڵ سپۆنسەرەکانمان کۆتایی پێبێنین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses24("en-US"),
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
                                            "We closed a deal with a major supermarket."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێککەوتنێکمان لەگەڵ سوپەرمارکێتێکی گەورە بەست."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) کۆتایی هێنان بە هەڵەیەک لە شتێکدا کە مەترسی لە سەلامتیدا درووست دەکات یان دژ بە کەسێک دەبێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The company acted quickly to close a security hole in its online systems."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆمپانیاکە بە خێرایی هەنگاوی نا بۆ چارەسەری کێشەیەکی سەلامەتی لە سیستەمی ئۆنلاینیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses26("en-US"),
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
                                            "Congressional leaders have agreed to close a loophole that gave small businesses a big tax break."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەرپرسانی کۆنگرێس ڕێککەوتن کۆتایی بە دەروویەک بێنن کە داشکانێکی گەورەی لە بادان دەدا بە بازرگانییە بچووکەکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses27("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) وەستان لە بەکارهێنانی پڕۆگرامێک یان فایلێکی کۆمپیوتەرێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Once I got a few apps closed, it started working again."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کە چەند ئەپێکم داخست، دووبارە دەستی بە کارکردن کردەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses28("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses28("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (کردار) نرخی شتێک لە کۆتایی ڕۆژێکدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The pound closed at (= was worth) \$1.47 at the end of the day's trading."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پاوەند یەکسان بوو بە ١,٤٧ دۆلار لە کۆتایی مامەڵەی ڕۆژەکەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses29("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses29("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) کەمبوونی مەودای نێوان دوو کەس یان شت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "These measures are aimed at closing the gap between rich and poor."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم هەنگاوانە ئامانج لێیانە کە مەودای نێوان دەوڵەمەند و هەژار کەم بکاتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses30("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses30("en-US"),
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
                                            "The gap between the two top teams is closing all the time."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جیاوازی نێوان دوو تیمەکە هەموو کات کەم دەبێتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses31("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses31("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (ناو) کۆتایی ماوەیەک، کاتێک، یان چالاکییەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "His life was drawing to a close."),
                                    ExampleSentenceKurdish(
                                        text: "ژیانی بە کۆتا دەگەشت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses32("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses32("en-US"),
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
                                            "Can we bring this meeting to a close?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەکرێت کۆتایی بەم گفتوگۆیە بێنین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses33("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses33("en-US"),
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
                                                    "This chapter of her life had come to a close."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەم بەشەی ژیانی گەشت بوو بە کۆتایەک."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses34("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses34("en-US"),
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
                                                    "At the close of trading, he had lost thousands of pounds on the stock market."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لە کۆتایی مامەڵەدا، هەزاران پاوەندی لە بازاڕی پشکەکاندا زەرەرکردبوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses35("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses35("en-US"),
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
                                                    "She gave her speech at the close of the conference."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "وتارەکەی پێشکەشکرد لە کۆتایی کۆنفرانسەکەدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses36("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses36("en-US"),
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
                          const DefinitionKurdish(text: "١٢. (ناو) داخران"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "The door's close was gentle."),
                                    ExampleSentenceKurdish(
                                        text: "داخرانی دەرگاکە لەسەرخۆ بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses37("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses37("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٣. (ھاوەڵناو) نزیک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I had no idea the beach was so close."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هیچ زانیارییەکم نەبوو کەناراوەکە هێندە نزیک بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses38("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses38("en-US"),
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
                                            "Our new house is close to the school."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خانووە تازەکەمان نزیکە لە قوتابخانەکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses39("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses39("en-US"),
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
                                                    "She is looking for a job closer to home."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بۆ کارێک دەگەڕێت نزیکتر بێت لە ماڵەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses40("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses40("en-US"),
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
                                                    "The tables were too close together."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "مێزەکان زۆر لە یەکەوە نزیک بوون."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses41("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses41("en-US"),
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
                                                    "Victory was tantalizingly close."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "سەرکەوتن دیق‌پێ‌کەرانە نزیک بوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses42("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses42("en-US"),
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
                                  "١٤. (ناو) ناسی کەسێک زۆر بە باشی و خۆشویستنیان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She is very close to her father."),
                                    ExampleSentenceKurdish(
                                        text: "زۆر نزیکە لە باوکی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses43("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses43("en-US"),
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
                                        text: "Jo is a very close friend."),
                                    ExampleSentenceKurdish(
                                        text: "جۆ هاوڕێیەکی گیانی بە گیانییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses44("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses44("en-US"),
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
                                                    "We're a very close family."),
                                            ExampleSentenceKurdish(
                                                text: "خێزانێکی گەرم‌وگوڕین."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses45("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses45("en-US"),
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
                                                    "The two sisters seemed very close."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دوو خوشکەکە زۆر نزیک لە یەک دیاربوون."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses46("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses46("en-US"),
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
                              text: "١٥. (ھاوەڵناو) نزیک لە پەیوەندی خێزانیدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The groom and his close family took their places."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زاوا و ئەندامانی نزیکی خێزەنەکەی چوونە شوێنەکانیان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses47("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses47("en-US"),
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
                                            "There weren't many people at the funeral - just close family."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆر کەس لە مەراسیمی ناشتنەکە نەبوون، تەنها ئەندامانی نزیکی خێزان بوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses48("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses48("en-US"),
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
                                                    "Only close relatives were invited."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تەنها خزمانی نزیک بانگهێشتکران."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses49("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses49("en-US"),
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
                                  "١٦. (ناو) زۆر بەژدار لە کار و چالاکی کەسێکی دیکە و بەردەوام بینین و قسەکردن لەگەڵیان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She has kept in close contact with the victims' families."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پەیوەندی نزیکی ڕاگرتووە لەگەڵ خێزانی قوربانییەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses50("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses50("en-US"),
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
                                            "They have forged a close working relationship."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پەیوەندییەکی نزیکی کارکردنیان درووستکردووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses51("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses51("en-US"),
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
                                                    "The college has close links with many other institutions."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کۆلێژەکە پەیوەندیی نزیکی هەیە لەگەڵ ژمارەیەکی زۆری دیکە لە پەیمانگا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses52("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses52("en-US"),
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
                                                    "Even their closest allies were shocked by the move."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تەنانەت نزیکترین هاوپەیمانەکانیشیان شۆک بوون بە جوڵەکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses53("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses53("en-US"),
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
                                                    "He is one of the prime minister's closest advisers."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "یەکێک لە ڕاوێژکارە نزیکەکانی سەرۆک وەزیرانە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses54("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses54("en-US"),
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
                              text: "١٧. (ھاوەڵناو) بە وریایی و تەواوی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Take a close look at this photograph."),
                                    ExampleSentenceKurdish(
                                        text: "چاوێکی ورد بنۆڕە لەم وێنەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses55("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses55("en-US"),
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
                                            "On closer examination, the painting proved to be a fake."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە دوای وردبوونەوەی وردتر، تابلۆکە وادەرچوو ساختە بێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses56("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses56("en-US"),
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
                                                    "Pay close attention to what I am telling you."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "سەرنجی ورد بدە بەوەی پێت دەڵێم."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses57("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses57("en-US"),
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
                                                    "Police are paying close attention to the situation."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پۆلیس سەرنجی ورد دەدەن بە دۆخەکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses58("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses58("en-US"),
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
                                  "١٨. (ناو) نزیک لە دۆخێکی دیاریکراو؛ نزیک لە کردنی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The airline is close to collapse."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هێڵە ئاسمانییەکە نزیکە لە داڕمان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses59("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses59("en-US"),
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
                                            "The species is dangerously close to extinction."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چەشنەکە بەشێوەیەکی مەترسیدار نزیکە لە لەناوچوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses60("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses60("en-US"),
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
                                                    "The new library is close to completion."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کتێبخانەکە تازەکە نزیکە لە تەواوبوون."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses61("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses61("en-US"),
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
                                                    "She knew she was close to death."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دەیزانی لەسەر لێواری مەرگە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses62("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses62("en-US"),
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
                              text: "١٩. (ھاوەڵناو) زۆر نزیک لە شتێک یان بڕێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "There's a close resemblance between them (= they look very similar)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لێکچوونێکی زۆر هەیە لە نێوانیان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses63("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses63("en-US"),
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
                                            "This movie is about as close to perfect as you could wish for."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فیلمەکە تا بەرزترین ئاست کە هیوای پێ بخوازیت نزیکە لە بێ‌خەوشییەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses64("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses64("en-US"),
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
                                                    "Their chances of winning are close to zero."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "شانسی بردنەوەیان نزیکە لە سفرەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses65("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses65("en-US"),
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
                                                    "His feeling for her was close to hatred."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "هەستەکانی بۆی لە ڕقەوە نزیک بوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses66("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses66("en-US"),
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
                                                    "We tried to match the colours, but this is the closest we could get."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "هەوڵماندا ڕەنگەکان بگونجێنین، بەڵام ئەمە نزیکترینە کە توانیمان بەدەستی بێنین."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses67("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses67("en-US"),
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
                                  "٢٠. (ناو) بردنەوە بە مەودایەک یان بڕێکی کەم"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It was pretty close but we lost."),
                                    ExampleSentenceKurdish(
                                        text: "زۆر نزیک بوو بەڵام دۆڕاندمان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses68("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses68("en-US"),
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
                                            "No one expected such a close finish."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هیچ کەس پێشبینی کۆتاییەکی وەها سەختی نەدەکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses69("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses69("en-US"),
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
                                            "The result is going to be too close to call (= either side may win)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەنجامەکان زۆر لە یەک نزیک دەبن کە پێشبینی بکرێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses70("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses70("en-US"),
                                  ),
                                ],
                              ),
                            ],
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
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The soldiers advanced in close formation."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەربازەکان بۆ پێشەوە دەچوون بە ڕێکخستنێکی چکۆلە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses72("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses72("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٢. (ناو) زۆر کورت بڕاو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "A close haircut is ideal for hot weather."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "قژێکی کوڵ زۆر باشە بۆ کەشێ گەرم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses73("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses73("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٣. (ناو) زۆر بە توندی پاسەوانیکراو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The donor's identity is a close secret."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناسنامەی بەخشەرەکە نهێنییەکی پارێزراوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses74("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses74("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٤. (ھاوەڵناو) گەرم بەشێوەیەکی ناخۆش بەهۆی ئەوەی زۆر هەوای خۆش نییە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It’s very close today—I think there’s going to be a storm."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەمڕۆ زۆر بۆخاوە، پێم‌وایە زریانێک دەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses75("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses75("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٥. (ھاوەڵناو) کەسێک کە ئامادە نییە زانیاری لەسەر خۆی ئاشکرا بکات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "He was close about his past."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆر داخراو بوو سەبارەت بە ڕابردووی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses76("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses76("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٦. (ھاوەڵناو) ڕەزیل؛ چرووک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She's always been very close with her money."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەمیشە چڕووک بووە سەبارەت بە پارەکانی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses77("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses77("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢٧. (ھاوەڵکار) نزیک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "They sat close together."),
                                    ExampleSentenceKurdish(
                                        text: "نزیک لە یەک پێکەوە دانیشتن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses78("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses78("en-US"),
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
                                            "A second police car followed close behind."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دووەمین ئۆتۆمبێلی پۆلیس نزیک لە دواوە کەوتە شوێنی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcloses79("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcloses79("en-US"),
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
                                                    "They are edging closer to an agreement."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "نزیک دەبنەوە لە ڕێککەوتنێک."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses80("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses80("en-US"),
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
                                                text: "Don't come too close!"),
                                            ExampleSentenceKurdish(
                                                text: "زۆر نزیک مەبەوە!"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses81("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses81("en-US"),
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
                                                    "He moved closer so that he could hear her better."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "نزیک بووەوە بۆ ئەوەی باشتر گوێی لێی بێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses82("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses82("en-US"),
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
                                                    "I couldn't get close enough to see."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "هێندە نزیک نەبوومەوە کە بیبینم."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses83("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses83("en-US"),
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
                                                text: "Stay close to me!"),
                                            ExampleSentenceKurdish(
                                                text: "نزیک لێم بمێنەوە!"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses84("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcloses84("en-US"),
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
                                                    "She held Tom close and pressed her cheek to his."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تۆمی لە نزیکی ڕاگرت و گۆنای نا بە گۆنایەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcloses85("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
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
- Verb: close (Derived forms: closing, closed, closes)
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

- Adjective: close (Derived forms: closest, closer)
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

- Noun: close (Derived forms: closes)
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
    videoId: 'https://youtu.be/WI-vVCS-0jo?t=',
    startSeconds: 10,
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
    videoId: 'https://youtu.be/G7bDft7-_Rc?t=',
    startSeconds: 6,
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
    videoId: 'https://youtu.be/lQG3Bc7bui4?t=',
    startSeconds: 9,
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
    videoId: 'https://youtu.be/Bft-AHwfKbU',
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
    videoId: 'https://youtu.be/6bTcFTRoqcw?t=',
    startSeconds: 5,
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
    startSeconds: 595,
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
    videoId: 'https://youtu.be/VrKW58MS12g?t=',
    startSeconds: 1036,
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
    videoId: 'https://youtu.be/FHJ3CMWnVxY?t=',
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

// end WORD_WEB