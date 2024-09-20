import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryget extends StatefulWidget {
  const EnglishEntryget({super.key});

  @override
  State<EnglishEntryget> createState() => _EnglishEntrygetState();
}

class _EnglishEntrygetState extends State<EnglishEntryget> {
  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    flutterTts.setLanguage("en-US");
    fetchSentences();
  }

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

  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: get (derived forms: gets, getting, gotten)
1. Come into the possession of something concrete or abstract (= acquire)
"She got a lot of paintings from her uncle"; "Get your results the next day"; "Get permission to take a few days off from work";
 
2. Enter or assume a certain state or condition (= become, go)
"It must be getting more serious"; "Get going!";
 
3. Cause to move; cause to be in a certain position or condition (= let, have)
"He got his squad on the ball"; "He got a girl into trouble";
 
4. Be subject to a specified treatment or analysis (= receive, find, obtain, incur)
"I got nothing but trouble for my good intentions";
 
5. Reach a destination by movement or progress (= arrive, come)
"She didn't get to Chicago until after midnight";
 
6. Go or come after and bring or take back (= bring, convey, fetch)
"Get me those books over there, please";
 
7. Go through (mental or physical states or experiences) (= experience, receive, have)
"get an idea"; "get nauseous";
 
8. Take vengeance on or get even (= pay back, pay off, fix [informal])
"We'll get them!"; "This time I got him";
 
9. Achieve a point or goal (= have, make)
"The Brazilian team got 4 goals";
 
10. Make someone or something act in a particular way or do a particular thing (= induce, stimulate, cause, have, make)
"My children finally got me to buy a computer";
 
11. Succeed in catching or seizing, especially after a chase (= catch, capture)
"We finally got the suspect";
 
12. Come to have or undergo a change of (physical features and attributes) (= grow, develop, produce, acquire)
"I got funny spots all over my body";
 
13. Be stricken by an illness, fall victim to an illness (= contract, take)
"He got AIDS";
 
14. Communicate with a place or person; establish communication with, as if by telephone
"Bill called this number and he got Mary"; "The operator couldn't get Kobe because of the earthquake"
 
15. Give certain properties to something (= make)
"get someone mad";
 
16. Move into a desired direction of discourse (= drive, aim)
"What are you getting at?";
 
17. Grasp with the mind or develop an understanding of (= catch)
"did you get it?"; "She didn't get the joke"; "I just don't get him";
 
18. Attract and fix (= catch, arrest)
"His look got her";
 
19. Reach with a blow or hit in a particular spot (= catch)
"The blow got him in the back";
 
20. Reach by calculation
"What do you get when you add up these numbers?"
 
21. Acquire as a result of some effort or action
"You cannot get water out of a stone"; "Where did she get The news?"
 
22. Purchase
"What did you get at the toy store?"
 
23. Perceive by hearing (= catch)
"She didn't get his name when they met the first time";
 
24. Suffer from the receipt of (= catch)
"She will get hell for this behaviour!";
 
25. Receive as a retribution or punishment (= receive)
"He got 5 years in prison";
 
26. Reach and board
"She got the bus just as it was leaving"
 
27. Irritate (= get under one's skin)
"Her childish behaviour really get to me"; "His lying really gets me";
 
28. Evoke an emotional response
"Brahms's 'Requiem' gets me every time"
 
29. Apprehend and reproduce accurately (= catch)
"She got the mood just right in her photographs";
 
30. (baseball) earn or achieve a base by being walked by the pitcher (= draw)
 
31. Overcome or destroy
"The ice storm got my hibiscus"; "the cat got the goldfish"
 
32. Confuse or leave at a loss because of something complex or difficult to understand (= confuse, throw, fox, befuddle, fuddle, bedevil, confound, discombobulate [informal], perplex, vex, stick, puzzle, mystify, baffle, beat, pose, bewilder, flummox, stupefy, nonplus, gravel, dumbfound)
"Got me--I don't know the answer!";
 
33. Take the first step or steps in carrying out an action (= get down, begin, start out, start, set about, set out, commence)
"Get working as soon as the sun rises!"; "Let's get down to work now";
 
34. Undergo (as of injuries and illnesses) (= suffer, sustain, have)
"She got a bruise on her leg"; "He got his arm broken in the scuffle";
 
35. Make (offspring) by reproduction (= beget [archaic], engender, father, mother, sire, generate, bring forth)
"Abraham got Isaac";

- Noun: get (derived forms: gets)
1. A return on a shot that seemed impossible to reach and would normally have resulted in a point for the opponent
""",
  );

  final String keyword = "get";
  List<Map<String, dynamic>> filteredSentences = [];

  Future<void> fetchSentences() async {
    final sentences =
        await DatabaseUtils.instance.fetchFilteredSentences(keyword: keyword);
    setState(() {
      filteredSentences = sentences;
    });
  }

  void speakEnglish(String text, {String? languageCode}) async {
    await flutterTts.setLanguage(languageCode ?? "en-GB");
    await flutterTts.speak(text);
  }

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""get""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I got a call from Dave this morning.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""What did you get for your birthday?""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He gets about £40 000 a year.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This room gets very little sunshine.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I got a shock when I saw the bill.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I will report back when I get a chance.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I get the impression that he is bored with his job.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Where did you get the idea from?""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She got great satisfaction from seeing his embarrassment.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He has just got a new job.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'll get the money somehow.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She opened the door wider to get a better look.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Try to get some sleep.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I think someone's trying to get your attention.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She really knows how to get results.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Where did you get that skirt?""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Did you manage to get tickets for the concert?""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Can I get a Coke?""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Did you get a present for your mother?""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Why don't you get yourself a car?""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""£100 will get you the basic model.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We got £420 000 for the house.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""How much did you get for your car?""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Quick—go and get a cloth!""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Somebody get a doctor!""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She went to get help.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I have to go and get my mother from the airport.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Get a drink for John.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's gone to get a few more chairs.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Could you go upstairs and get my wallet for me, please?""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He got a ‘C’ in Chemistry and a ‘B’ in English.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I got this cold off (= from) you!""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I think I'm getting a cold.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She gets really bad headaches.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He got ten years for armed robbery.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We can't get Channel 5 in our area.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I couldn't get any mobile phone reception.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I wanted to speak to the manager but I got his secretary instead.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We got to San Diego at 7 o'clock.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We're aiming to get to the party at about nine.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I got back an hour ago.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Wait till we get home.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""What time did you get here?""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Let me know when you get there.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I haven't got very far with the book I'm reading.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The bridge was destroyed so we couldn't get across the river.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She got into bed.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He got down from the ladder.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Where do we get on the bus?""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm getting off at the next station.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Where do we get on the bus?""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Where have they got to?""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We must be getting home; it's past midnight.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We couldn't get the piano through the door.""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The general had to get his troops across the river.""");
  }

  Future<void> speaksentence56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""How can we get to the other side of town?""");
  }

  Future<void> speaksentence57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I usually get the bus to work.""");
  }

  Future<void> speaksentence58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We're going to be late—let's get a taxi.""");
  }

  Future<void> speaksentence59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Get a train to Newport and then get a bus from the station.""");
  }

  Future<void> speaksentence60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He got the next plane home.""");
  }

  Future<void> speaksentence61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I ran all the way to the station and just managed to get my train.""");
  }

  Future<void> speaksentence62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """You won't be able to get a plane there—there's no airport.""");
  }

  Future<void> speaksentence63(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You'll soon get used to the climate here.""");
  }

  Future<void> speaksentence64(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We ought to go; it's getting late.""");
  }

  Future<void> speaksentence65(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They plan to get married in the summer.""");
  }

  Future<void> speaksentence66(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's upstairs getting ready.""");
  }

  Future<void> speaksentence67(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""As he's got older his tastes have changed.""");
  }

  Future<void> speaksentence68(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was getting sick of hearing him complain.""");
  }

  Future<void> speaksentence69(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There's nothing to get excited about.""");
  }

  Future<void> speaksentence70(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He got drunk and passed out.""");
  }

  Future<void> speaksentence71(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I was starting to get tired.""");
  }

  Future<void> speaksentence72(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My car got stolen at the weekend.""");
  }

  Future<void> speaksentence73(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He got his fingers caught in the door.""");
  }

  Future<void> speaksentence74(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She soon got the children ready for school.""");
  }

  Future<void> speaksentence75(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't get your dress dirty!""");
  }

  Future<void> speaksentence76(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """After a time you get to realize that these things don't matter.""");
  }

  Future<void> speaksentence77(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You'll like her once you get to know her.""");
  }

  Future<void> speaksentence78(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His drinking is getting to be a problem.""");
  }

  Future<void> speaksentence79(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's getting to be an old lady now.""");
  }

  Future<void> speaksentence80(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I must get my hair cut.""");
  }

  Future<void> speaksentence81(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'll never get all this work finished.""");
  }

  Future<void> speaksentence82(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She has a reputation for getting things done.""");
  }

  Future<void> speaksentence83(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I couldn't get the car to start this morning.""");
  }

  Future<void> speaksentence84(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He got his sister to help him with his homework.""");
  }

  Future<void> speaksentence85(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You'll never get him to understand.""");
  }

  Future<void> speaksentence86(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It's not hard to get him talking—the problem is stopping him!""");
  }

  Future<void> speaksentence87(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Can you really get that old car going again?""");
  }

  Future<void> speaksentence88(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I finally got Michael to talk to them and he explained everything.""");
  }

  Future<void> speaksentence89(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We had trouble getting enough people to sign up.""");
  }

  Future<void> speaksentence90(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We need to get going soon.""");
  }

  Future<void> speaksentence91(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I got talking to her.""");
  }

  Future<void> speaksentence92(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He got to try out all the new software.""");
  }

  Future<void> speaksentence93(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's not fair—I never get to go first.""");
  }

  Future<void> speaksentence94(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Who's getting the lunch?""");
  }

  Future<void> speaksentence95(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I must go home and get tea for the kids.""");
  }

  Future<void> speaksentence96(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Will you get the phone?""");
  }

  Future<void> speaksentence97(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He was on the run for a week before the police got him.""");
  }

  Future<void> speaksentence98(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'll get you for that!""");
  }

  Future<void> speaksentence99(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He thinks everybody is out to get him.""");
  }

  Future<void> speaksentence100(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The bullet got him in the neck.""");
  }

  Future<void> speaksentence101(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I don't get you.""");
  }

  Future<void> speaksentence102(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She didn't get the joke.""");
  }

  Future<void> speaksentence103(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I don't get it—why would she do a thing like that?""");
  }

  Future<void> speaksentence104(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I get the message—you don't want me to come.""");
  }

  Future<void> speaksentence105(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They still get cases of typhoid there.""");
  }

  Future<void> speaksentence106(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""You get all these kids hanging around in the street.""");
  }

  Future<void> speaksentence107(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""‘What's the capital of Bhutan?’ ‘You've got me there!’""");
  }

  Future<void> speaksentence108(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""What gets me is having to do the same thing all day long.""");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """get""",
                      // alsoEnglishWord: "also: get",
                      britshText: """IpaUK: /ɡet/""",
                      americanText: """IpaUS: /ɡet/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const CustomTabBarNew(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    SentencesIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EnglishButtonTTS(
                      onBritishPressed: (languageCode) =>
                          startSpeaking(languageCode, englishMeaningConst),
                      onAmericanPressed: (languageCode) =>
                          startSpeaking(languageCode, englishMeaningConst),
                      onStopPressed: stopSpeaking,
                    ),
                    englishMeaningConst,
                  ],
                ),
              ),
              SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
//                     const KurdishVocabulary(text: """
// کوردی:
// """),
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) وەرگرتنی شتێک؛ ئەوەی شتێکت پێ بگات"""),
                    SentencesRow(
                      englishText: """I got a call from Dave this morning.""",
                      kurdishText:
                          """ئەم بەیانییە پەیوەندییەکم لە دەیڤەوە پێگەشت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """What (= What presents) did you get for your birthday?""",
                              kurdishText:
                                  """چیت وەرگرت بۆ ڕۆژی لەدایکبوونت؟""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He gets (= earns) about £40 000 a year.""",
                              kurdishText:
                                  """نزیکەی ٤٠٠٠٠ پاوەندی ساڵانە وەردەگرێت.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """This room gets very little sunshine.""",
                              kurdishText:
                                  """ژوورەکە تیشکی خۆری کەمی بەردەکەوێت.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I got a shock when I saw the bill.""",
                              kurdishText: """شۆک بووم کە پسووڵەکەم وەرگرت.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I will report back when I get a chance.""",
                              kurdishText:
                                  """ھەواڵت لێ دەگێڕمەوە کە کاتێکم ھەبێت.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I get the impression that he is bored with his job.""",
                              kurdishText:
                                  """ئەو تێگەشتنەم ھەیە کە لە کارەکەیدا بێزارە.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Where did you get the idea from?""",
                              kurdishText: """لە کوێوە بیرۆکەکەت وەرگرت؟""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She got great satisfaction from seeing his embarrassment.""",
                              kurdishText:
                                  """خۆشحاڵی زۆری وەرگرت لە شەرمەزاربوونی.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (کردار) بەدەستھێنانی شتێک"""),
                    SentencesRow(
                      englishText: """He has just got a new job.""",
                      kurdishText: """تازەگی کارێکی تازەی وەرگرتووە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """I'll get the money somehow.""",
                              kurdishText:
                                  """بە شێوەیەک پارەکە بەدەست دەھێنم.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She opened the door wider to get a better look.""",
                              kurdishText:
                                  """دەرگاکەی زیاتر کردەوە بۆ ئەوەی بینینێکی باشتری ھەبێت.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Try to get some sleep.""",
                              kurdishText: """ھەوڵ بدە کەمێک بخەوە.""",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I think someone's trying to get your attention.""",
                              kurdishText:
                                  """پێموایە کەسێک ھەوڵ دەدات سەرنجت ڕابکێشێت.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She really knows how to get results.""",
                              kurdishText:
                                  """بەڕاستی دەزانێت چۆن ئەنجام بەدەست بھێنێت.""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٣. (کردار) کڕینی شتێک"""),
                    SentencesRow(
                      englishText: """Where did you get that skirt?""",
                      kurdishText: """ئەو تەنوورەت لە کوێ کڕی؟""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Did you manage to get tickets for the concert?""",
                              kurdishText:
                                  """توانیت بلیتەکان بۆ کۆنسێرتەکە بکڕیت؟""",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Can I get a Coke?""",
                              kurdishText:
                                  """دەتوانێت کۆلایەکم بدەیتێ (بۆ ئەوەی بیکڕم)؟""",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Did you get a present for your mother?""",
                              kurdishText: """دیاریت بۆ دایکت کڕی؟""",
                              englishNote:
                                  """Also: Did you get your mother a present?""",
                              onPressedBritish: () => speaksentence19("en-GB"),
                              onPressedAmerican: () => speaksentence19("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Why don't you get yourself a car?""",
                              kurdishText: """بۆچی ئۆتۆمبێلێک ناکڕیت؟""",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """£100 will get you the basic model.""",
                              kurdishText:
                                  """بە ١٠٠ پاوەند دەتوانیت جۆرە سەرەتاییەکە بکڕیت.""",
                              englishNote:
                                  "Also: You can get yourself the basic model for £100.",
                              onPressedBritish: () => speaksentence21("en-GB"),
                              onPressedAmerican: () => speaksentence21("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) بەدەستھێنانی بڕە پارەیەک بە فرۆشتنی شتێک"""),
                    SentencesRow(
                      englishText: """We got £420 000 for the house.""",
                      kurdishText: """٤٢٠٠٠٠ پاوەندمان بۆ خانووەکە وەرگرت.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """How much did you get for your car?""",
                      kurdishText: """چەندە پارەت وەرگرت بۆ ئۆتۆمبێلەکەت؟""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) چوونە شوێنێک بۆ ھێنانی کەسێک/شتێک"""),
                    const AlsoEnglishckb(word: "ھەروەھا: fetch"),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Quick—go and get a cloth!""",
                      kurdishText: """زوو ـ بچۆ و جلێک بھێنە!""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """Somebody get a doctor!""",
                              kurdishText: """کەسێک پزیشکێک بھێنێت.""",
                              onPressedBritish: () => speaksentence25("en-GB"),
                              onPressedAmerican: () => speaksentence25("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """She went to get help.""",
                              kurdishText: """چوو یارمەتی بھێنێت.""",
                              onPressedBritish: () => speaksentence26("en-GB"),
                              onPressedAmerican: () => speaksentence26("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I have to go and get my mother from the airport (= collect her).""",
                              kurdishText:
                                  """پێویست بوو بچم و دایکم لە فڕۆکەخانە بھێنمەوە.""",
                              onPressedBritish: () => speaksentence27("en-GB"),
                              onPressedAmerican: () => speaksentence27("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Get a drink for John.""",
                              kurdishText: """خواردنەوەیەک بۆ جۆن بھێنە.""",
                              englishNote: """Also: Get John a drink.""",
                              onPressedBritish: () => speaksentence28("en-GB"),
                              onPressedAmerican: () => speaksentence28("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She's gone to get a few more chairs.""",
                              kurdishText:
                                  """چووە بۆ ئەوەی ژمارەیەک کورسی دیکە بھێنێت.""",
                              onPressedBritish: () => speaksentence29("en-GB"),
                              onPressedAmerican: () => speaksentence29("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Could you go upstairs and get my wallet for me, please?""",
                              kurdishText:
                                  """تکایە دەتوانیت بچیتە سەرەوە و جزدانەکەمم بۆ بھێنیت؟""",
                              onPressedBritish: () => speaksentence30("en-GB"),
                              onPressedAmerican: () => speaksentence30("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) بەدەستھێنانی نمرەیەک لە تاقیکردنەوەیەک"""),
                    SentencesRow(
                      englishText:
                          """He got a ‘C’ in Chemistry and a ‘B’ in English.""",
                      kurdishText: """لە کیمیا C ـی ھێنا لە ئینگلیزی B.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (کردار) گرتنی نەخۆشی"""),
                    SentencesRow(
                      englishText: """I got this cold off (= from) you!""",
                      kurdishText: """ئەم ھەڵامەتەم لۆ تۆوە گرت!""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I think I'm getting a cold.""",
                      kurdishText: """پێموایە خەریکە ھەڵامەت دەگرم.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She gets (= often suffers from) really bad headaches.""",
                      kurdishText: """سەرێشەی بەڕاستی خراپ دەگرێت.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) وەرگرتنی سزا"""),
                    SentencesRow(
                      englishText:
                          """He got ten years (= was sent to prison for ten years) for armed robbery.""",
                      kurdishText:
                          """١٠ ساڵ سزای زیندانی وەرگرت بۆ دزیکردن بە چەکەوە.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) پەیوەستبوون بە ئینتەرنێت یان تۆڕی موبایل؛ وەرگرتنی پەخشی تەلەفیزیۆن یان ڕادیۆ"""),
                    SentencesRow(
                      englishText: """We can't get Channel 5 in our area.""",
                      kurdishText:
                          """ناتوانین کەناڵ ٥ لە ناوچەکەمان وەربگرین.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I couldn't get any mobile phone reception.""",
                      kurdishText: """نەمدەتوانی ھیچ شەبەکەی موبایل وەربگرم.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (کردار) پەیوەندی کردن بە کەسێکەوە بە موبایل"""),
                    SentencesRow(
                      englishText:
                          """I wanted to speak to the manager but I got his secretary instead.""",
                      kurdishText:
                          """ویستم لەگەڵ بەڕێوەبەر قسە بکەم بەڵام سکرتێرەکەیم وەرگرت لە جیاتیدا.""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (کردار) گەشتنە شوێنێک"""),
                    SentencesRow(
                      englishText: """We got to San Diego at 7 o'clock.""",
                      kurdishText: """لە کاتژمێر ٧ گەشتینە سان دیێگۆ.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """We're aiming to get to the party at about nine.""",
                              kurdishText:
                                  """ئامانجمانە لە نزیکەی نۆ بگەینە ئاھەەنگەکە.""",
                              onPressedBritish: () => speaksentence40("en-GB"),
                              onPressedAmerican: () => speaksentence40("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """I got back an hour ago.""",
                              kurdishText: """کاتژمێرێک پێش ئێستا گەڕامەوە.""",
                              onPressedBritish: () => speaksentence41("en-GB"),
                              onPressedAmerican: () => speaksentence41("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Wait till we get home.""",
                              kurdishText: """بوەستە تا دەگەینە ماڵەوە.""",
                              onPressedBritish: () => speaksentence42("en-GB"),
                              onPressedAmerican: () => speaksentence42("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """What time did you get here?""",
                              kurdishText: """کەی گەشتیتە ئێرە؟""",
                              onPressedBritish: () => speaksentence43("en-GB"),
                              onPressedAmerican: () => speaksentence43("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Let me know when you get there.""",
                              kurdishText: """پێم بڵێ کەی دەگەیتە ئەوێ.""",
                              onPressedBritish: () => speaksentence44("en-GB"),
                              onPressedAmerican: () => speaksentence44("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I haven't got very far with the book I'm reading.""",
                              kurdishText:
                                  """زۆر نەگەشتووم لەو کتێبەی دەیخوێنمەوە.""",
                              onPressedBritish: () => speaksentence45("en-GB"),
                              onPressedAmerican: () => speaksentence45("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (کردار) ڕۆشتن لە شوێنێکەوە یان بۆ شوێنێک بە ئاراستەیەکی دیاریکراودا"""),
                    SentencesRow(
                      englishText:
                          """The bridge was destroyed so we couldn't get across the river.""",
                      kurdishText:
                          """پردەکە ڕووخێندرا بۆ ئەوەی لە ڕووبارەکە نەپەڕینەوە.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """She got into bed.""",
                              kurdishText: """چووە جێخەوەکەی.""",
                              onPressedBritish: () => speaksentence47("en-GB"),
                              onPressedAmerican: () => speaksentence47("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """He got down from the ladder.""",
                              kurdishText: """لە دەرەجەکە دابەزی.""",
                              onPressedBritish: () => speaksentence48("en-GB"),
                              onPressedAmerican: () => speaksentence48("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Where do we get on the bus?""",
                              kurdishText: """کەی دەچینە ناو پاسەکە؟""",
                              onPressedBritish: () => speaksentence49("en-GB"),
                              onPressedAmerican: () => speaksentence49("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I'm getting off (= leaving the train) at the next station.""",
                              kurdishText: """لە وێستگەی دواتر دادەبەزین.""",
                              onPressedBritish: () => speaksentence50("en-GB"),
                              onPressedAmerican: () => speaksentence50("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Where do we get on the bus?""",
                              kurdishText: """کەی سەردەکەوینە ناو پاسەکە.""",
                              onPressedBritish: () => speaksentence51("en-GB"),
                              onPressedAmerican: () => speaksentence51("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Where have they got to (= where are they)?""",
                              kurdishText: """بۆ کوێ چوونە؟""",
                              onPressedBritish: () => speaksentence52("en-GB"),
                              onPressedAmerican: () => speaksentence52("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We must be getting home; it's past midnight.""",
                              kurdishText:
                                  """دەبێت بچینەوە ماڵەوە؛ لە نیوەشەو لایداوە.""",
                              onPressedBritish: () => speaksentence53("en-GB"),
                              onPressedAmerican: () => speaksentence53("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We couldn't get the piano through the door.""",
                              kurdishText:
                                  """نەمانتوانی پیانۆکە بە دەرگاکەدا ببەین.""",
                              onPressedBritish: () => speaksentence54("en-GB"),
                              onPressedAmerican: () => speaksentence54("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The general had to get his troops across the river.""",
                              kurdishText:
                                  """ژەنەڕاڵەکە پێویست بوو سەربازەکانی بە ڕووبارەکەدا .""",
                              onPressedBritish: () => speaksentence55("en-GB"),
                              onPressedAmerican: () => speaksentence55("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """How can we get to the other side of town?""",
                              kurdishText:
                                  """چۆن دەتوانین بگەین بە لایەکەی دیکەی شارۆچکەکە؟.""",
                              onPressedBritish: () => speaksentence56("en-GB"),
                              onPressedAmerican: () => speaksentence56("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (کردار) بەکارھێنانی پاس، تەکسی، فڕۆکە، ھتد"""),
                    SentencesRow(
                      englishText: """I usually get the bus to work.""",
                      kurdishText: """زۆرجار بە پاس دەچم بۆ سەر.""",
                      onPressedBritish: () => speaksentence57("en-GB"),
                      onPressedAmerican: () => speaksentence57("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """We're going to be late—let's get a taxi.""",
                              kurdishText:
                                  """درەنگ دەکەوین ـ با تەکسییەک بگرین.""",
                              onPressedBritish: () => speaksentence58("en-GB"),
                              onPressedAmerican: () => speaksentence58("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Get a train to Newport and then get a bus from the station.""",
                              kurdishText:
                                  """شەمەندەفەرێک بگرە بۆ نوپۆرت و دواتر لە وێستگەکەوە پاسێک بگرە.""",
                              onPressedBritish: () => speaksentence59("en-GB"),
                              onPressedAmerican: () => speaksentence59("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """He got the next plane home.""",
                              kurdishText: """فڕۆکەی دواتری بۆ ماڵەوە گرت.""",
                              onPressedBritish: () => speaksentence60("en-GB"),
                              onPressedAmerican: () => speaksentence60("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I ran all the way to the station and just managed to get my train.""",
                              kurdishText:
                                  """بە تەواوی ڕێگاکە بۆ وێستگەکە ڕامکرد و بە ئاستەنگ توانیم شەمەندەفەرەکە بگرم.""",
                              onPressedBritish: () => speaksentence61("en-GB"),
                              onPressedAmerican: () => speaksentence61("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """You won't be able to get a plane there—there's no airport.""",
                              kurdishText:
                                  """ناتوانیت ھیچ فڕۆکەیەک بگریت لەوێ ـ ھیچ فڕۆکەخانەیەک نییە.""",
                              onPressedBritish: () => speaksentence62("en-GB"),
                              onPressedAmerican: () => speaksentence62("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٤. (کردار) گەشتنە دۆخێکی دیاریکراو"""),
                    SentencesRow(
                      englishText:
                          """You'll soon get used to the climate here.""",
                      kurdishText: """زوو بە کەشەکەی ئێرە ڕادێیت.""",
                      onPressedBritish: () => speaksentence63("en-GB"),
                      onPressedAmerican: () => speaksentence63("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """We ought to go; it's getting late.""",
                              kurdishText: """دەبێت بچین؛ درەنگ دەکات.""",
                              onPressedBritish: () => speaksentence64("en-GB"),
                              onPressedAmerican: () => speaksentence64("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They plan to get married in the summer.""",
                              kurdishText:
                                  """پلانیان ھەیە ھاوین ھاوسەرگیری بکەن.""",
                              onPressedBritish: () => speaksentence65("en-GB"),
                              onPressedAmerican: () => speaksentence65("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """She's upstairs getting ready.""",
                              kurdishText: """لە سەرەوەیە خۆی ئامادە دەکات.""",
                              onPressedBritish: () => speaksentence66("en-GB"),
                              onPressedAmerican: () => speaksentence66("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """As he's got older his tastes have changed.""",
                              kurdishText:
                                  """کە دەجێتە تەمەندا حەزەکانی گۆڕاوە.""",
                              englishNote:
                                  """This means as he has aged, his preferences and likes have become different.""",
                              onPressedBritish: () => speaksentence67("en-GB"),
                              onPressedAmerican: () => speaksentence67("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She was getting sick of hearing him complain.""",
                              kurdishText:
                                  """بێزار دەبوو لێی بەدەست ڕەخنەکانی.""",
                              onPressedBritish: () => speaksentence68("en-GB"),
                              onPressedAmerican: () => speaksentence68("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """There's nothing to get excited about.""",
                              kurdishText: """ھیچ نییە کە پێی بەجۆش بیت.""",
                              onPressedBritish: () => speaksentence69("en-GB"),
                              onPressedAmerican: () => speaksentence69("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """He got drunk and passed out.""",
                              kurdishText: """سەرخۆش بوو و بوورایەوە.""",
                              onPressedBritish: () => speaksentence70("en-GB"),
                              onPressedAmerican: () => speaksentence70("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """I was starting to get tired.""",
                              kurdishText: """دەستم دەکرد بەوەی ماندووبم.""",
                              onPressedBritish: () => speaksentence71("en-GB"),
                              onPressedAmerican: () => speaksentence71("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """My car got (= was) stolen at the weekend.""",
                              kurdishText:
                                  """ئۆتۆمبێلەکەم ھەفتەی ڕابردوو دزرا.""",
                              onPressedBritish: () => speaksentence72("en-GB"),
                              onPressedAmerican: () => speaksentence72("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He got his fingers caught in the door.""",
                              kurdishText: """پەنجەکانی لە دەرگاکە گیربوون.""",
                              onPressedBritish: () => speaksentence73("en-GB"),
                              onPressedAmerican: () => speaksentence73("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She soon got the children ready for school.""",
                              kurdishText:
                                  """زوو منداڵەکانی بۆ قوتابخانە ئامادە کرد.""",
                              onPressedBritish: () => speaksentence74("en-GB"),
                              onPressedAmerican: () => speaksentence74("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Don't get your dress dirty!""",
                              kurdishText: """جلەکەت پیس مەکە!""",
                              onPressedBritish: () => speaksentence75("en-GB"),
                              onPressedAmerican: () => speaksentence75("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٥. (کردار) گەشتن بەو خاڵەی کە تێیدا ھەست بە شتێک دەکەیت، بە شتێک دەزانیت، دەبیت بە شتێک، ھتد"""),
                    SentencesRow(
                      englishText:
                          """After a time you get to realize that these things don't matter.""",
                      kurdishText:
                          """دوای ماوەیەک دەزانیت ئەم شتانە گرنگیان نییە.""",
                      onPressedBritish: () => speaksentence76("en-GB"),
                      onPressedAmerican: () => speaksentence76("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """You'll like her once you get to know her.""",
                              kurdishText:
                                  """حەزی لێ دەکەیت ئەوکاتەی کە دەیناسیت.""",
                              onPressedBritish: () => speaksentence77("en-GB"),
                              onPressedAmerican: () => speaksentence77("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """His drinking is getting to be a problem.""",
                              kurdishText:
                                  """خواردنەوەکەی خەریکە دەبێت بە کێشە.""",
                              onPressedBritish: () => speaksentence78("en-GB"),
                              onPressedAmerican: () => speaksentence78("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She's getting to be an old lady now.""",
                              kurdishText: """دەبێت بە خانمێکی پێگەشتوو.""",
                              onPressedBritish: () => speaksentence79("en-GB"),
                              onPressedAmerican: () => speaksentence79("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٦. (کردار) بوون بە ھۆکاری ئەوەی شتێک ڕووبدات یان بکرێت"""),
                    SentencesRow(
                      englishText: """I must get my hair cut.""",
                      kurdishText: """دەبێت قژم چاک بکەم.""",
                      onPressedBritish: () => speaksentence80("en-GB"),
                      onPressedAmerican: () => speaksentence80("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'll never get all this work finished.""",
                      kurdishText: """ھەرگیز ھەموو ئەم ئیشە تەواو ناکەم.""",
                      onPressedBritish: () => speaksentence81("en-GB"),
                      onPressedAmerican: () => speaksentence81("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She has a reputation for getting things done.""",
                      kurdishText: """ناوبانگی ھەیە بۆ تەواوکردنی شت.""",
                      onPressedBritish: () => speaksentence82("en-GB"),
                      onPressedAmerican: () => speaksentence82("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٧. (کردار) درووستکردن، ڕازیکردن، ھتد ـی کەسێک/شتێک بۆ کردنی شتێک‌‌"""),
                    SentencesRow(
                      englishText:
                          """I couldn't get the car to start this morning.""",
                      kurdishText:
                          """نەمتوانی ئەم بەیانییە ئۆتۆمبێلەکە بخەمە ئیش.""",
                      onPressedBritish: () => speaksentence83("en-GB"),
                      onPressedAmerican: () => speaksentence83("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """He got his sister to help him with his homework.""",
                              kurdishText:
                                  """خوشکەکەی ھێنا یارمەتی بدات لە ئەرکی ماڵەوەدا.""",
                              onPressedBritish: () => speaksentence84("en-GB"),
                              onPressedAmerican: () => speaksentence84("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """You'll never get him to understand.""",
                              kurdishText:
                                  """ھەرگیز وەھای لێ ناکەیت تێ بگات.""",
                              onPressedBritish: () => speaksentence85("en-GB"),
                              onPressedAmerican: () => speaksentence85("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It's not hard to get him talking—the problem is stopping him!""",
                              kurdishText:
                                  """سەخت نییە بیخەیتە قسە ـ کێشە وەستاندنیەتی.""",
                              onPressedBritish: () => speaksentence86("en-GB"),
                              onPressedAmerican: () => speaksentence86("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Can you really get that old car going again?""",
                              kurdishText:
                                  """ئەتوانیت ئەو ئۆتۆمبێلە کۆنە بخەیتەوە کار؟""",
                              onPressedBritish: () => speaksentence87("en-GB"),
                              onPressedAmerican: () => speaksentence87("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I finally got Michael to talk to them and he explained everything.""",
                              kurdishText:
                                  """لە کۆتاییدا وەھام لە مایکڵ کرد قسەیان لەگەڵ بکات و ھەموو شتێکی ڕوونکردەوە.""",
                              onPressedBritish: () => speaksentence88("en-GB"),
                              onPressedAmerican: () => speaksentence88("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We had trouble getting enough people to sign up.""",
                              kurdishText:
                                  """کێشەمان ھەبوو لەوەی وا لە خەڵکی پێویست بکەین بەژدار بن.""",
                              onPressedBritish: () => speaksentence89("en-GB"),
                              onPressedAmerican: () => speaksentence89("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٨. (کردار) دەستپێکردنی کردنی شتێک"""),
                    SentencesRow(
                      englishText: """We need to get going soon.""",
                      kurdishText: """دەبێت زوو دەست بە چوون بکەین.""",
                      onPressedBritish: () => speaksentence90("en-GB"),
                      onPressedAmerican: () => speaksentence90("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I got talking to her.""",
                      kurdishText: """دەستم کرد بە قسەکردن لەگەڵی.""",
                      onPressedBritish: () => speaksentence91("en-GB"),
                      onPressedAmerican: () => speaksentence91("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٩. (کردار) ھەبوونی ھەلی کردنی شتێک"""),
                    SentencesRow(
                      englishText:
                          """He got to try out all the new software.""",
                      kurdishText:
                          """ھەلی ئەوەی ھەبوو ھەموو نەرمامێرێک تاقیبکاتەوە.""",
                      onPressedBritish: () => speaksentence92("en-GB"),
                      onPressedAmerican: () => speaksentence92("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It's not fair—I never get to go first.""",
                      kurdishText:
                          """دادپەروەری نییە ـ ھەرگیز نەمتوانی سەرەتا بچم.""",
                      onPressedBritish: () => speaksentence93("en-GB"),
                      onPressedAmerican: () => speaksentence93("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٠. (کردار) ئامادەکردنی خواردن"""),
                    SentencesRow(
                      englishText: """Who's getting the lunch?""",
                      kurdishText: """کێ نانی نیوەڕۆ ئامادە دەکات.""",
                      onPressedBritish: () => speaksentence94("en-GB"),
                      onPressedAmerican: () => speaksentence94("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I must go home and get tea for the kids.""",
                      kurdishText:
                          """دەبێت بچمە ماڵەوە چا بۆ منداڵەکان لێ بنێم.""",
                      englishNote:
                          """Also: I must go home and get the kids their tea.""",
                      onPressedBritish: () => speaksentence95("en-GB"),
                      onPressedAmerican: () => speaksentence95("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢١. (کردار) وەلامدانەوەی تەلەفۆن یان کردنەوەی دەرگا کە کەسێک پەیوەندی دەکات"""),
                    SentencesRow(
                      englishText: """Will you get the phone?""",
                      kurdishText: """وەڵامی تەلەفۆنەکە دەدەیتەوە؟""",
                      onPressedBritish: () => speaksentence96("en-GB"),
                      onPressedAmerican: () => speaksentence96("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢٢. (کردار) گرتنی شتێک، بە تایبەتی بۆ گەیاندنی زیان پێی"""),
                    SentencesRow(
                      englishText:
                          """He was on the run for a week before the police got him.""",
                      kurdishText:
                          """بۆ ماوەی ھەفتەیەک ھەڵھاتوو بوو پێش ئەوەی پۆلیس بیگرن.""",
                      onPressedBritish: () => speaksentence97("en-GB"),
                      onPressedAmerican: () => speaksentence97("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'll get you for that!""",
                      kurdishText: """سزات دەدەم بۆ ئەوە!""",
                      onPressedBritish: () => speaksentence98("en-GB"),
                      onPressedAmerican: () => speaksentence98("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He thinks everybody is out to get him (= trying to harm him).""",
                      kurdishText:
                          """پێی وایە ھەموان مەبەستی ئازاردانییان ھەیە.""",
                      onPressedBritish: () => speaksentence99("en-GB"),
                      onPressedAmerican: () => speaksentence99("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٣. (کردار) لێدان یان بریندارکردنی کەسێک"""),
                    SentencesRow(
                      englishText: """The bullet got him in the neck.""",
                      kurdishText: """فیشەکەکە لە ملیی دا.""",
                      onPressedBritish: () => speaksentence100("en-GB"),
                      onPressedAmerican: () => speaksentence100("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٤. (کردار) تێگەشتن لە شتێک"""),
                    SentencesRow(
                      englishText: """I don't get you.""",
                      kurdishText: """لێت تێناگەم.""",
                      onPressedBritish: () => speaksentence101("en-GB"),
                      onPressedAmerican: () => speaksentence101("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She didn't get the joke.""",
                      kurdishText: """لە نوکتەکە تێنەگەشت.""",
                      onPressedBritish: () => speaksentence102("en-GB"),
                      onPressedAmerican: () => speaksentence102("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I don't get it—why would she do a thing like that?""",
                      kurdishText: """تێ ناگەم > بۆچی دەبێت شتێکی وەھا بکات.""",
                      onPressedBritish: () => speaksentence103("en-GB"),
                      onPressedAmerican: () => speaksentence103("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I get the message—you don't want me to come.""",
                      kurdishText: """لە پەیامەکە تێدەگەم ـ ناتەوێت بێم.""",
                      onPressedBritish: () => speaksentence104("en-GB"),
                      onPressedAmerican: () => speaksentence104("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢٥. (کردار) بۆ گوتنی ئەوەی شتێک ڕوودەدات یان بوونی ھەیە"""),
                    SentencesRow(
                      englishText: """They still get cases of typhoid there.""",
                      kurdishText: """ھێستا حاڵەتی تایفۆیدیان ھەیە لەوێ.""",
                      onPressedBritish: () => speaksentence105("en-GB"),
                      onPressedAmerican: () => speaksentence105("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You get (= There are) all these kids hanging around in the street.""",
                      kurdishText:
                          """ئەم ھەموو منداڵانە دەبینیت لەسەر شەقام یاری دەکەن.""",
                      onPressedBritish: () => speaksentence106("en-GB"),
                      onPressedAmerican: () => speaksentence106("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢٦. (کردار) ئەوەی سەر لە کەسێک بشێوێنیت بەھۆی ئەوەی شتێک نازانێت"""),
                    SentencesRow(
                      englishText:
                          """‘What's the capital of Bhutan?’ ‘You've got me there!’ (= I don't know)""",
                      kurdishText: """'پایتەختی بۆتان کوێیە؟' 'نایزانم!'""",
                      onPressedBritish: () => speaksentence107("en-GB"),
                      onPressedAmerican: () => speaksentence107("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٧. (کردار) بێزارکردنی کەسێک"""),
                    SentencesRow(
                      englishText:
                          """What gets me is having to do the same thing all day long.""",
                      kurdishText:
                          """ئەوەی بێزارم دەکات ئەوەیە تەواوی ڕۆژەکە ھەمان شت بکەم.""",
                      onPressedBritish: () => speaksentence108("en-GB"),
                      onPressedAmerican: () => speaksentence108("en-US"),
                    ),
                  ],
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  if (filteredSentences.isEmpty) {
                    return const NoSentencesFromDatabase();
                  } else {
                    return ListView.builder(
                      itemCount: filteredSentences.length,
                      itemBuilder: (context, index) {
                        final sentence = filteredSentences[index];
                        final showDivider = filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1;
                        return CustomSentenceWidget(
                          englishText: sentence['english'].toString(),
                          frenchText: sentence['french'].toString(),
                          keyword: keyword,
                          onPressedBritish: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-GB",
                          ),
                          onPressedAmerican: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-US",
                          ),
                          showDivider: showDivider,
                        );
                      },
                    );
                  }
                },
              ),
              const YouTubeScroller(
                children: [
                  YoutubeEmbeddedone(),
                  YoutubeEmbeddedtwo(),
                  YoutubeEmbeddedthree(),
                  YoutubeEmbeddedfour(),
                  YoutubeEmbeddedfive(),
                  // YoutubeEmbeddedsix(),
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
      ),
    );
  }
}

const String _videoIdend = '21Z4RIOFhMA';
const double _startSecondsend = 407;
const String _videoIdone = 'Vtos9gw1HJI';
const double _startSecondsone = 26;
const String _videoIdtwo = 'rPe4yziWiOg';
const double _startSecondstwo = 136;
const String _videoIdthree = 'hTqtGJwsJVE';
const double _startSecondsthree = 309;
const String _videoIdfour = 'wizgxRBfVTY';
const double _startSecondsfour = 0;
const String _videoIdfive = 'r8E1Hq5tktg';
const double _startSecondsfive = 176;

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdend,
      startSeconds: _startSecondsend,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdend,
        startSeconds: _startSecondsend,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdone,
      startSeconds: _startSecondsone,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdone,
        startSeconds: _startSecondsone,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdtwo,
      startSeconds: _startSecondstwo,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdtwo,
        startSeconds: _startSecondstwo,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdthree,
      startSeconds: _startSecondsthree,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdthree,
        startSeconds: _startSecondsthree,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfour,
      startSeconds: _startSecondsfour,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfour,
        startSeconds: _startSecondsfour,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfive,
      startSeconds: _startSecondsfive,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfive,
        startSeconds: _startSecondsfive,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB
