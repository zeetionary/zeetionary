import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygo extends StatefulWidget {
  const EnglishEntrygo({super.key});

  @override
  State<EnglishEntrygo> createState() => _EnglishEntrygoState();
}

class _EnglishEntrygoState extends State<EnglishEntrygo> {
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
- Verb: go (Derived forms: goes, going, gone)
1. Change location; proceed; also used metaphorically (- travel, move, locomote)
"How fast does your new car go?"; "The policemen went from door to door looking for the suspect";
 
2. Follow a procedure or take a course (- proceed, move)
"She went through a lot of trouble"; "go about the world in a certain manner"; "Messages must go through diplomatic channels"; "We should go farther in this matter";
 
3. Move away from a place into another direction (- go away, depart)
"Go away before I start to cry";
 
4. Enter or assume a certain state or condition (- become, get)
"her face went red with anger"; "She went into ecstasy"; "Get going!";
 
5. Be awarded; be allotted
"The first prize goes to Mary"; "Her money went on clothes"
 
6. Have a particular form (- run)
"as the saying goes...";
 
7. Stretch out over a distance, space, time, or scope; run or extend between two points or beyond a certain point (- run, pass, lead, extend)
"His knowledge doesn't go very far";
 
8. Follow a certain course (- proceed)
"The inauguration went well"; "how did your interview go?";
 
9. Be abolished or discarded
"These ugly billboards have to go!"; "These luxuries all had to go under the Khmer Rouge"
 
10. Be or continue to be in a certain condition
"The children went hungry that day"
 
11. Make a certain noise or sound (- sound)
"She went 'Mmmmm'"; "The gun went 'bang'";
 
12. Perform as expected when applied (- function, work, operate, run)
"The washing machine won't go unless it's plugged in";
 
13. To be spent or finished (- run low, run short)
"Gas is going at the gas stations in the Midwest";
 
14. Progress by being changed (- move, run)
"The speech has to go through several more drafts";
 
15. Continue to live and avoid dying (- survive, last, live, live on, endure, hold up, hold out)
"We went without water and food for 3 days";
 
16. Pass, fare, or elapse; of a certain state of affairs or action
"How is it going?"; "The day went well until I got your call"
 
17. Cease to live; lose all bodily attributes and functions necessary to sustain life (- die, decease [archaic], perish, exit, pass away, expire, pass, kick the bucket [informal], cash in one's chips [informal], buy the farm [N. Amer, informal], conk [informal], give-up the ghost [informal], drop dead, pop off [informal], choke, croak [informal], snuff it [informal], flatline [informal], cop it [Brit, informal], cash in [informal], pop one's clogs [informal])
"The patient went peacefully";
 
18. Be in the right place or situation (- belong)
"Where do these books go?";
 
19. Be ranked or compare
"This violinist is as good as Juilliard-trained violinists go"
 
20. Begin or set in motion (- start, get going)
"Ready, set, go!"; "I get going at eight in the morning";
 
21. Have a turn; make one's move in a game (- move)
"Can I go now?";
 
22. Be contained in
"How many times does 18 go into 54?"
 
23. Be sounded, played, or expressed
"How does this song go again?"
 
24. Fit in well or harmonize (- blend, blend in)
"This sofa won't go with the chairs";
 
25. Provide access; extend (in the direction of something) (- lead)
"This door goes to the basement";
 
26. Be the right size or shape; fit correctly or as desired (- fit)
"This piece won't go into the puzzle";
 
27. Go through in search of something; search through someone's belongings in an unauthorized way (- rifle)
"Who went through my desk drawers?";
 
28. Be spent
"All my money went for food and rent"
 
29. Give support (to) or make a choice (of) one out of a group or number (- plump)
 
30. Stop operating or functioning (- fail, go bad, give way, die, give out, conk out [informal], break, break down, pack up [Brit, informal])
"The engine finally went"; "her eyesight went after the accident"; "The engine went bad on the way to town";

- Noun: go (Derived forms: goes)
1. A time period for working (after which you will be relieved by someone else) (- spell, tour, turn)
"it's my go";
 
2. A usually brief attempt (- crack, fling, pass, whirl [informal], offer, bash [Brit, informal])
"he took a go at it";
 
3. A board game for two players who place counters on a grid; the object is to surround and so capture the opponent's counters (- go game)
 
4. A turn at something
 
5. [slang] A street name for methylenedioxymethamphetamine (- Adam [slang], ecstasy [slang], XTC [slang], disco biscuit [slang], X [slang], hug drug [slang], molly [US, slang])

- Adjective: go
1. Functioning correctly and ready for action
"all systems are go"
""",
  );

  final String keyword = "go";
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
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""go""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""She went into her room and shut the door behind her.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I have to go to Rome on business.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She has gone to China.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She has been to China.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Are you going home for Christmas?""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She has gone to see her sister this weekend.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I'll go and answer the door.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Go and get me a drink!""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Go ask your mom!""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Could you go and get me a towel?""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I'm going to Spain this year.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She's gone to Brazil on vacation.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Are you going to Dave's party?""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Who else is going?""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""His dog goes everywhere with him.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He invited her to go with him to the concert.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He's going too fast.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""They went farther north into the mountains.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""We had gone about fifty miles when the car broke down.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Slow down—you're going too fast.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""We had gone many miles without seeing another car.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """She crashed into a waiter and his tray of drinks went flying.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The car went skidding off the road into a ditch.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She went sobbing up the stairs.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I tripped and went tumbling down the stairs.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I must be going now.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""They came at six and went at nine.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Has she gone yet?""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He's been gone an hour.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""When does the train go?""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Don't go—I want to talk to you.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Here's a list of things to remember before you go.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The train goes in a few minutes' time.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""What time did they go?""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Richard has gone on leave for two weeks.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She saved money all year to go on vacation.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I have to go to hospital for an operation.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I have to go to the hospital.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He goes to work by bus.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Do you go to church?""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I always go to the gym before work.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""She went on Facebook and removed her as a friend.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""To find out what the terms mean, go to the glossary.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Shall we go for a drink after work?""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I have to go shopping this afternoon.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We went walking on the beach.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I want this memo to go to all managers.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Hasn't the time gone quickly?""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Half an hour went past while we were sitting there.""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Has your headache gone yet?""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """I left my bike outside the library and when I came out again it had gone.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Where does this road go?""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The trail goes north at this point.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """I want a rope that will go from the top window to the ground.""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""This dictionary goes on the top shelf.""");
  }

  Future<void> speaksentence56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Where do you want the piano to go?""");
  }

  Future<void> speaksentence57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""My clothes won't all go in that one suitcase.""");
  }

  Future<void> speaksentence58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """He tried to push his hand through the gap but it wouldn't go.""");
  }

  Future<void> speaksentence59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Did everything go smoothly?""");
  }

  Future<void> speaksentence60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""How's it going?""");
  }

  Future<void> speaksentence61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The way things are going, the company will be bankrupt by the end of the year.""");
  }

  Future<void> speaksentence62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She went to sleep.""");
  }

  Future<void> speaksentence63(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The US and Mexico went to war in 1846.""");
  }

  Future<void> speaksentence64(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The law went into effect on 1 August.""");
  }

  Future<void> speaksentence65(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Shares went on sale this morning.""");
  }

  Future<void> speaksentence66(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""They're threatening to go on strike again.""");
  }

  Future<void> speaksentence67(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""That colour has gone out of fashion.""");
  }

  Future<void> speaksentence68(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She's beginning to go blind.""");
  }

  Future<void> speaksentence69(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He suddenly went quiet.""");
  }

  Future<void> speaksentence70(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The company went bankrupt last year.""");
  }

  Future<void> speaksentence71(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Her hair is going grey.""");
  }

  Future<void> speaksentence72(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""I can't believe I'm going bald—I'm only thirty!""");
  }

  Future<void> speaksentence73(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""She cannot bear the thought of children going hungry.""");
  }

  Future<void> speaksentence74(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He prefers to go naked at home when alone.""");
  }

  Future<void> speaksentence75(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""They went for two weeks without receiving any news.""");
  }

  Future<void> speaksentence76(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Pippa's absence went unnoticed.""");
  }

  Future<void> speaksentence77(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Police are worried that many crimes go unreported.""");
  }

  Future<void> speaksentence78(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Customer service calls went unanswered.""");
  }

  Future<void> speaksentence79(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She went like this with her hand.""");
  }

  Future<void> speaksentence80(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The gun went ‘bang’.""");
  }

  Future<void> speaksentence81(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The whistle went for the end of the game.""");
  }

  Future<void> speaksentence82(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""3 into 12 goes 4 times.""");
  }

  Future<void> speaksentence83(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""7 into 15 won’t go.""");
  }

  Future<void> speaksentence84(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Does this jacket go with this skirt?""");
  }

  Future<void> speaksentence85(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Those colours don’t really go (together).""");
  }

  Future<void> speaksentence86(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""That tie goes well with that shirt.""");
  }

  Future<void> speaksentence87(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""How does that song go?""");
  }

  Future<void> speaksentence88(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I forget how the next line goes.""");
  }

  Future<void> speaksentence89(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The story goes that she's been married five times.""");
  }

  Future<void> speaksentence90(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """I asked ‘How much?’ and he goes, ‘Fifty’ and I go, ‘Fifty? You must be joking!’""");
  }

  Future<void> speaksentence91(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""As soon as he gets here we're ready to go.""");
  }

  Future<void> speaksentence92(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""This clock doesn't go.""");
  }

  Future<void> speaksentence93(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""What makes it go?""");
  }

  Future<void> speaksentence94(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The old sofa will have to go.""");
  }

  Future<void> speaksentence95(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He's useless—he'll have to go.""");
  }

  Future<void> speaksentence96(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Her sight is beginning to go.""");
  }

  Future<void> speaksentence97(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Her sight is beginning to go.""");
  }

  Future<void> speaksentence98(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""His mind is going.""");
  }

  Future<void> speaksentence99(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I was driving home when my brakes went.""");
  }

  Future<void> speaksentence100(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""You can't take your money with you when you go.""");
  }

  Future<void> speaksentence101(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I don't know where the money goes!""");
  }

  Future<void> speaksentence102(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Most of my salary goes on the rent.""");
  }

  Future<void> speaksentence103(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The money will go to finance a new community centre.""");
  }

  Future<void> speaksentence104(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""We won't let the house go for less than £200 000.""");
  }

  Future<void> speaksentence105(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """There was usually some bread going cheap at the end of the day.""");
  }

  Future<void> speaksentence106(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I'll go to £1 000 but that's my limit.""");
  }

  Future<void> speaksentence107(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """He's offered £3 000 for the car and I don't think he'll go any higher.""");
  }

  Future<void> speaksentence108(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""This all goes to prove my theory.""");
  }

  Future<void> speaksentence109(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """It just goes to show you can't always tell how people are going to react.""");
  }

  Future<void> speaksentence110(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""There just aren't any jobs going in this area.""");
  }

  Future<void> speaksentence111(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Do you need to go, Billy?""");
  }

  Future<void> speaksentence112(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Whose go is it?""");
  }

  Future<void> speaksentence113(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""It's your go.""");
  }

  Future<void> speaksentence114(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Can I have a go on your new bike?""");
  }

  Future<void> speaksentence115(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""It took three goes to get it right.""");
  }

  Future<void> speaksentence116(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """I doubt if he'll listen to advice from me, but I'll give it a go.""");
  }

  Future<void> speaksentence117(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Mary's always got plenty of go.""");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """go""",
                      // alsoEnglishWord: "also: go",
                      britshText: """IpaUK: /ɡəʊ/""",
                      americanText: """IpaUS: /ɡəʊ/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                automaticallyImplyLeading: false,
                bottom: const TabBar(
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
                    const DividerDefinition(),
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
                    const DividerDefinition(),
                    const KurdishVocabulary(text: """
کوردی: ھێزی ڕۆیشتن، جم‌وجۆڵ، گورجی، وزە، ھەڵسووڕان، چالاکی، بەگوڕی، بەگوژمی، وزە، گوژم، تەوژم، تین‌وگوڕ، تامەزرۆیی،	ڕووداو، بوویەر، قەومین،	حەول، تێکۆشان، بزاڤ،	نۆبە، نۆرە، جار، کەشە، چین،	(پزشکی) لێھاتن، گرتن،	مۆد یان باوی ڕۆژ، بابەتی ڕۆژ
"""),
// With short examples define "go", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (کردار) چوونە شوێنێک"""),
                    SentencesRow(
                      englishText:
                          """She went into her room and shut the door behind her.""",
                      kurdishText:
                          """چووە ژوورەکەی و دەرگاکەی لە دوای خۆی گرت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """I have to go to Rome on business.""",
                              kurdishText: """دەبێت بۆ کار بچمە ڕۆما.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She has gone to China (= is now in China or is on her way there).""",
                              kurdishText: """چووە بۆ چین.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She has been to China (= she went to China and has now returned).""",
                              kurdishText: """چووەتە چین.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Are you going home for Christmas?""",
                              kurdishText: """بۆ کریسمس دەچیتە ماڵەوە؟""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She has gone to see her sister this weekend.""",
                              kurdishText:
                                  """ئەم کۆتایی ھەفتەیە چووە بۆ بینینی خوشکەکەی.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """I'll go and answer the door.""",
                              kurdishText: """دەچم دەرگاکە دەکەمەوە.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Go and get me a drink!""",
                              kurdishText: """بچۆ و خواردنەوەیەکم بۆ بھێنە!""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Go ask your mom!""",
                              kurdishText: """بچۆ و لە دایکت بپرسە!""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Could you go and get me a towel?""",
                              kurdishText:
                                  """دەتوانیت بچیت خاولییەکم بۆ بھێنیت؟""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """I'm going to Spain this year.""",
                              kurdishText: """ئەمساڵ دەچمە ئیسپانیا.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She's gone to Brazil on vacation.""",
                              kurdishText: """بە گەشت چووە بۆ بەرازیل.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) چوونە شوێنێکی دیاریکراو لەگەڵ کەسێکی دیکە بۆ ئەوەی ئامادە بیت لە بۆنەیەک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Are you going to Dave's party?""",
                      kurdishText: """دەچیتە ئاھەنگەکەی دەیڤ؟""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """Who else is going?""",
                              kurdishText: """کێی تر دەچێت؟""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """His dog goes everywhere with him.""",
                              kurdishText:
                                  """سەگەکەی بۆ ھەموو شوێنێک لەگەڵی دەچێت.""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He invited her to go with him to the concert.""",
                              kurdishText:
                                  """بانگھێشتی کرد بۆ ئەوەی لەگەڵی بچێتە کۆنسێرت.""",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) چوون بە ئاراستەیەکی دیاریکراو یان بە مەودایەکی دیاریکراودا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He's going too fast.""",
                      kurdishText: """زۆر خێرا دەچێت.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They went farther north into the mountains.""",
                              kurdishText:
                                  """زیاتر بەرەو باکوور چوون بۆ ناو چیاکان.""",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We had gone about fifty miles when the car broke down.""",
                              kurdishText:
                                  """نزیکەی پەنجا میل ڕۆشتبوو کە ئۆتۆمبێلەکە لەکار کەوت.""",
                              onPressedBritish: () => speaksentence19("en-GB"),
                              onPressedAmerican: () => speaksentence19("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Slow down—you're going too fast.""",
                              kurdishText: """ھێواش بەرەوە ـ زۆر خێرا دەچیت.""",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We had gone many miles without seeing another car.""",
                              kurdishText:
                                  """چەندین میل چووبووین بە بێ بینینی ھیچ ئۆتۆمبێلێکی دیکە.""",
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
                            """٤. (کردار) ڕۆشتن بە شێوەیەکی دیاریکراو، یان لە کاتی کردنی شتێکدا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She crashed into a waiter and his tray of drinks went flying.""",
                      kurdishText:
                          """کێسای بە گارسۆنێکدا و سینییە خواردنەوەکەی چوو بە حەوادا.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The car went skidding off the road into a ditch.""",
                              kurdishText:
                                  """ئۆتۆمبێلەکە لە ڕێگاکە خلیسکا بەرەو ناو چاڵێک.""",
                              onPressedBritish: () => speaksentence23("en-GB"),
                              onPressedAmerican: () => speaksentence23("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She went sobbing up the stairs.""",
                              kurdishText:
                                  """بە پلەکانەکاندا چووە سەرەوە کە دەگریا.""",
                              onPressedBritish: () => speaksentence24("en-GB"),
                              onPressedAmerican: () => speaksentence24("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I tripped and went tumbling down the stairs.""",
                              kurdishText:
                                  """پێم ھەڵکەوت و بە پلەکانەکاندا کەوتمە خوارەوە.""",
                              onPressedBritish: () => speaksentence25("en-GB"),
                              onPressedAmerican: () => speaksentence25("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) جێھێشتنی شوێنێک بۆ گەشتن بە یەکێکی دیکە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: depart"),
                    SentencesRow(
                      englishText: """I must be going now.""",
                      kurdishText: """ئێستا دەبێت بچم.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """They came at six and went at nine.""",
                              kurdishText: """لە شەش ھاتن و لە نۆ چوون.""",
                              onPressedBritish: () => speaksentence27("en-GB"),
                              onPressedAmerican: () => speaksentence27("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Has she gone yet?""",
                              kurdishText: """ئ.""",
                              onPressedBritish: () => speaksentence28("en-GB"),
                              onPressedAmerican: () => speaksentence28("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He's been gone an hour (= he left an hour ago).""",
                              kurdishText: """کاتژمێرێک پێش ئێستا چوو.""",
                              onPressedBritish: () => speaksentence29("en-GB"),
                              onPressedAmerican: () => speaksentence29("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """When does the train go?""",
                              kurdishText: """شەمەندەفەرەکە کەی دەچێت؟""",
                              onPressedBritish: () => speaksentence30("en-GB"),
                              onPressedAmerican: () => speaksentence30("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Don't go—I want to talk to you.""",
                              kurdishText:
                                  """مەچۆ ـ دەمەوێت لەگەڵت قسە بکەم.""",
                              onPressedBritish: () => speaksentence31("en-GB"),
                              onPressedAmerican: () => speaksentence31("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Here's a list of things to remember before you go.""",
                              kurdishText:
                                  """ئەمە لیستێکی ئەو شتانەیە کە لەبیرت بێت پێش ئەوەی بچیت.""",
                              onPressedBritish: () => speaksentence32("en-GB"),
                              onPressedAmerican: () => speaksentence32("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The train goes in a few minutes' time.""",
                              kurdishText:
                                  """شەمەندەفەرەکە لە چەند خولەکێکی کەمدا دەچێت.""",
                              onPressedBritish: () => speaksentence33("en-GB"),
                              onPressedAmerican: () => speaksentence33("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """What time did they go?""",
                              kurdishText: """کەی چوون؟""",
                              onPressedBritish: () => speaksentence34("en-GB"),
                              onPressedAmerican: () => speaksentence34("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) جێھێشتنی شوێنێک و کردنی شتێکی جیاوازتر"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Richard has gone on leave for two weeks.""",
                      kurdishText: """ڕیچارد بۆ دوو ھەفتە پشووی وەرگرتووە.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She saved money all year to go on vacation.""",
                      kurdishText:
                          """تەواوی ساڵەکە پارەی پاشەکەوت کرد بۆ چوونە گەشت.""",
                      englishNote:
                          """British: She saved money all year to go on holiday.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) چوونە شوێنێک بە مەبەستێکی دیاریکراو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I have to go to hospital for an operation.""",
                      kurdishText: """دەبێت بۆ نەشتەرگەری بچمە نەخۆشخانە.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """I have to go to the hospital.""",
                              kurdishText: """دەبێت بچمە نەخۆشخانە.""",
                              onPressedBritish: () => speaksentence38("en-GB"),
                              onPressedAmerican: () => speaksentence38("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """He goes to work by bus.""",
                              kurdishText: """بە پاس دەچێتە سەر کار.""",
                              onPressedBritish: () => speaksentence39("en-GB"),
                              onPressedAmerican: () => speaksentence39("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Do you go to church (= regularly attend church services)?""",
                              kurdishText: """دەچیت بۆ کڵێسا؟""",
                              onPressedBritish: () => speaksentence40("en-GB"),
                              onPressedAmerican: () => speaksentence40("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I always go to the gym before work.""",
                              kurdishText: """ھەمیشە پێش کار دەچمە جیم.""",
                              onPressedBritish: () => speaksentence41("en-GB"),
                              onPressedAmerican: () => speaksentence41("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) سەردانکردنی لاپەڕە یان وێبسایتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She went on Facebook and removed her as a friend.""",
                      kurdishText: """چووە سەر فەیسبووک و وەک ھاوڕێ سڕییەوە.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """To find out what the terms mean, go to the glossary.""",
                      kurdishText:
                          """بۆ زانینی ئەوەی وشەکان واتایان چییە، بچۆ سەر فەرھەنگۆکە.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) جێھێشتنی شوێنێک یان چوونە شوێنێک بۆ بەژداری لە چالاکییەک یان وەرزشێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Shall we go for a drink (= at a pub or bar) after work?""",
                      kurdishText: """لە دوای کار بچین بخۆینەوە؟""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    SentencesRow(
                      englishText: """I have to go shopping this afternoon.""",
                      kurdishText: """ئەم دوا نیوەڕۆیە دەبێت بچمە بازاڕکردن.""",
                      onPressedBritish: () => speaksentence45("en-GB"),
                      onPressedAmerican: () => speaksentence45("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We went walking on the beach.""",
                      kurdishText: """چوین بۆ پیاسە لە کەناراوەکە.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (کردار) ئەوەی شتێک بنێردرێت بۆ شوێنێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I want this memo to go to all managers.""",
                      kurdishText:
                          """دەمەوێت ئەم میمۆیە بنێردرێت بۆ ھەموو بەڕێوەبەران.""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (کردار) بۆ باسکردنی تێپەڕینی کات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Hasn't the time gone quickly?""",
                      kurdishText: """کات زوو تێنەپەڕیوە؟""",
                      onPressedBritish: () => speaksentence48("en-GB"),
                      onPressedAmerican: () => speaksentence48("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Half an hour went past while we were sitting there.""",
                      kurdishText:
                          """نیو کاتژمێر تێپەڕی کە لەوێ دانیشتبووین.""",
                      onPressedBritish: () => speaksentence49("en-GB"),
                      onPressedAmerican: () => speaksentence49("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (کردار) ئەوەی شتێک ون ببێت یان نەمێنێت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: disappear"),
                    SentencesRow(
                      englishText: """Has your headache gone yet?""",
                      kurdishText: """سەرێشەکەت ھێشتا ماوە؟""",
                      onPressedBritish: () => speaksentence50("en-GB"),
                      onPressedAmerican: () => speaksentence50("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I left my bike outside the library and when I came out again it had gone.""",
                      kurdishText:
                          """پاسکیلەکەم لە دەرەوەی کتێبخانەکە دانا و کە گەڕامەوە نەمابوو.""",
                      onPressedBritish: () => speaksentence51("en-GB"),
                      onPressedAmerican: () => speaksentence51("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (کردار) چوون یان درێژبوونەوە بە ئاراستەیەکدا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Where does this road go?""",
                      kurdishText: """ئەم ڕێگایە بۆ کوێ دەچێت؟""",
                      onPressedBritish: () => speaksentence52("en-GB"),
                      onPressedAmerican: () => speaksentence52("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The trail goes north at this point.""",
                              kurdishText:
                                  """ڕێگاکە لەم خاڵەوە بۆ باکوور دەچێت.""",
                              onPressedBritish: () => speaksentence53("en-GB"),
                              onPressedAmerican: () => speaksentence53("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I want a rope that will go from the top window to the ground.""",
                              kurdishText:
                                  """حەبلێکم دەوێت کە لە پەنجەرەی سەرەوە بۆ زەوییەکە درێژدەبێتەوە.""",
                              onPressedBritish: () => speaksentence54("en-GB"),
                              onPressedAmerican: () => speaksentence54("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٤. (کردار) ئەوەی لە شوێنی خۆی دابندرێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """This dictionary goes on the top shelf.""",
                      kurdishText: """فەرھەنگەکە ھی ڕەفەی سەرەوەیە.""",
                      onPressedBritish: () => speaksentence55("en-GB"),
                      onPressedAmerican: () => speaksentence55("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Where do you want the piano to go (= be put)?""",
                      kurdishText: """دەتەوێت پیانۆکە لە کوێ بێت؟""",
                      onPressedBritish: () => speaksentence56("en-GB"),
                      onPressedAmerican: () => speaksentence56("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٥. (کردار) بۆ گوتنی ئەوەی شتێک لە جێگایەک جێی نابێتەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """My clothes won't all go in that one suitcase.""",
                      kurdishText:
                          """جلەکانم ھەموو لەو یەک جانتایە جێگایان نابێتەوە.""",
                      onPressedBritish: () => speaksentence57("en-GB"),
                      onPressedAmerican: () => speaksentence57("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He tried to push his hand through the gap but it wouldn't go.""",
                      kurdishText:
                          """ھەوڵیدا دەستی بکات بە بۆشاییەکەدا بەڵام جێی نەبوویەوە.""",
                      onPressedBritish: () => speaksentence58("en-GB"),
                      onPressedAmerican: () => speaksentence58("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٦. (کردار) بۆ باسکردنی بەرەوپێشچوونی شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Did everything go smoothly?""",
                      kurdishText: """ھەموو شت بێ کێشە تێپەڕی؟""",
                      onPressedBritish: () => speaksentence59("en-GB"),
                      onPressedAmerican: () => speaksentence59("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """How's it going (= is your life enjoyable, successful, etc. at the moment)?""",
                              kurdishText: """چی باسە؟""",
                              onPressedBritish: () => speaksentence60("en-GB"),
                              onPressedAmerican: () => speaksentence60("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The way things are going, the company will be bankrupt by the end of the year.""",
                              kurdishText:
                                  """بەو شێوەیەی شتەکان دەچنە پێشەوە کۆمپانیاکە مایەپووج دەبێت تاوەکو کۆتایی ساڵ.""",
                              onPressedBritish: () => speaksentence61("en-GB"),
                              onPressedAmerican: () => speaksentence61("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٧. (کردار) بۆ گوتنی ئەوەی کەسێک/شتێک چووەتە دۆخێکی دیاریکراو یان لێی دەرچووە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She went to sleep.""",
                      kurdishText: """خەوی لێکەوت.""",
                      onPressedBritish: () => speaksentence62("en-GB"),
                      onPressedAmerican: () => speaksentence62("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """The US and Mexico went to war in 1846.""",
                              kurdishText:
                                  """ئەمریکا و مەکسیک کەوتنە جەنگ لە ١٨٤٦.""",
                              onPressedBritish: () => speaksentence63("en-GB"),
                              onPressedAmerican: () => speaksentence63("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The law went into effect on 1 August.""",
                              kurdishText: """یاساکە کەوتە کار لە ١ ــی ئاب.""",
                              onPressedBritish: () => speaksentence64("en-GB"),
                              onPressedAmerican: () => speaksentence64("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Shares went on sale this morning.""",
                              kurdishText:
                                  """پشکەکان بەردەست بوون بۆ فرۆشتن ئەم بەیانییە.""",
                              onPressedBritish: () => speaksentence65("en-GB"),
                              onPressedAmerican: () => speaksentence65("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They're threatening to go on strike again.""",
                              kurdishText:
                                  """ھەڕەشەی ئەوە دەکەن دووبرە مان بگرن.""",
                              onPressedBritish: () => speaksentence66("en-GB"),
                              onPressedAmerican: () => speaksentence66("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """That colour has gone out of fashion.""",
                              kurdishText: """ئەو ڕەنگە وەک مۆدە نەماوە.""",
                              onPressedBritish: () => speaksentence67("en-GB"),
                              onPressedAmerican: () => speaksentence67("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٨. (کردار) ئەوەی گۆڕان ڕووبدات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She's beginning to go blind.""",
                      kurdishText: """خەریکە کوێر دەبێت.""",
                      onPressedBritish: () => speaksentence68("en-GB"),
                      onPressedAmerican: () => speaksentence68("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """He suddenly went quiet.""",
                              kurdishText: """لەناکاو بێدەنگ بوو.""",
                              onPressedBritish: () => speaksentence69("en-GB"),
                              onPressedAmerican: () => speaksentence69("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The company went bankrupt last year.""",
                              kurdishText:
                                  """کۆمپانیاکە ساڵی ڕابردوو مایەپووج.""",
                              onPressedBritish: () => speaksentence70("en-GB"),
                              onPressedAmerican: () => speaksentence70("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Her hair is going grey.""",
                              kurdishText: """قژی بەرەو خۆڵەمێشی دەچێت.""",
                              onPressedBritish: () => speaksentence71("en-GB"),
                              onPressedAmerican: () => speaksentence71("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I can't believe I'm going bald—I'm only thirty!""",
                              kurdishText:
                                  """ناتوانم باوەڕ بەوە بکەم کەچەڵ دەبم ـ تەنھا سی ساڵم.""",
                              onPressedBritish: () => speaksentence72("en-GB"),
                              onPressedAmerican: () => speaksentence72("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٩. (کردار) ژیانکردن بە شێوەیەکی دیاریکراو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She cannot bear the thought of children going hungry.""",
                      kurdishText:
                          """ناتوانێت بەرگەی بیرکردنەوەی ئەوە بگرێت منداڵان برسی بن.""",
                      onPressedBritish: () => speaksentence73("en-GB"),
                      onPressedAmerican: () => speaksentence73("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He prefers to go naked at home when alone.""",
                      kurdishText:
                          """کە لە ماڵەوە تەنھایە پێی خۆشترە کە ڕووت بێت.""",
                      onPressedBritish: () => speaksentence74("en-GB"),
                      onPressedAmerican: () => speaksentence74("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢٠. (کردار) بەسەربردنی کاتێکی دیاریکراو بە شێوەیەک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They went for two weeks without receiving any news.""",
                      kurdishText:
                          """دوو ھەفتەیان تێپەڕاند بە بێ وەرگرتنی ھیچ ھەواڵێک.""",
                      onPressedBritish: () => speaksentence75("en-GB"),
                      onPressedAmerican: () => speaksentence75("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢١. (کردار) ئەوەی شتێک ببیندرێت، باس بکرێت، ھتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Pippa's absence went unnoticed.""",
                      kurdishText:
                          """نائامادەیی پیپا بە بێ تێبینیکردن تێپەڕی.""",
                      onPressedBritish: () => speaksentence76("en-GB"),
                      onPressedAmerican: () => speaksentence76("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Police are worried that many crimes go unreported.""",
                              kurdishText:
                                  """پۆلیس نیگەرانن کە زۆر تاوان بە بێ ھەواڵ لێدان تێدەپەڕێت.""",
                              onPressedBritish: () => speaksentence77("en-GB"),
                              onPressedAmerican: () => speaksentence77("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Customer service calls went unanswered.""",
                              kurdishText:
                                  """پەیوەندییەکانی خزمەتگوزاریی بەژداربووان بە بێ وەڵامدانەوە بوون.""",
                              onPressedBritish: () => speaksentence78("en-GB"),
                              onPressedAmerican: () => speaksentence78("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢٢. (کردار) ئەوەی دەنگێک یان جووڵەیەکی دیاریکراو دەربکرێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She went like this with her hand.""",
                      kurdishText: """بە دەستی ئەمەی کرد.""",
                      onPressedBritish: () => speaksentence79("en-GB"),
                      onPressedAmerican: () => speaksentence79("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The gun went ‘bang’.""",
                      kurdishText: """چەکەکە گوتی 'تەق'.""",
                      onPressedBritish: () => speaksentence80("en-GB"),
                      onPressedAmerican: () => speaksentence80("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢٣. (کردار) ئەوەی دەنگێک دەربکرێت وەک ئاماژە بە شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The whistle went for the end of the game.""",
                      kurdishText: """فیکەکە بۆ کۆتایی یارییەکە لێدرا.""",
                      onPressedBritish: () => speaksentence81("en-GB"),
                      onPressedAmerican: () => speaksentence81("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢٤. (کردار) ئەوەی ژمارەیەک بە ڕێژەیەکی تەواو لە ژمارەیەکی دیکەدا ھەبێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """3 into 12 goes 4 times.""",
                      kurdishText: """٤ جار ٣ ھەیە لە ١٢ ــدا.""",
                      onPressedBritish: () => speaksentence82("en-GB"),
                      onPressedAmerican: () => speaksentence82("en-US"),
                    ),
                    SentencesRow(
                      englishText: """7 into 15 won’t go.""",
                      kurdishText: """٧ نییە لە ١٥ ــدا.""",
                      englishNote: """Also: 7 won’t go into 15.
                      
                      American English: 7 into 15 doesn’t go.""",
                      onPressedBritish: () => speaksentence83("en-GB"),
                      onPressedAmerican: () => speaksentence83("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٥. (کردار) ئەوەی لەگەڵ شتێک بگونجێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Does this jacket go with this skirt?""",
                      kurdishText: """ئەم چاکەتەکە لەگەڵ تەنوورەکە دەگونجێت؟""",
                      onPressedBritish: () => speaksentence84("en-GB"),
                      onPressedAmerican: () => speaksentence84("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Those colours don’t really go (together).""",
                              kurdishText: """ئەم ڕەنگانە پێکەوە ناگونجێن.""",
                              onPressedBritish: () => speaksentence85("en-GB"),
                              onPressedAmerican: () => speaksentence85("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """That tie goes well with that shirt.""",
                              kurdishText:
                                  """ئەو بۆینباخە لەگەڵ ئەو جلە دەگونجێت.""",
                              onPressedBritish: () => speaksentence86("en-GB"),
                              onPressedAmerican: () => speaksentence86("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢٦. (کردار) بۆ گوتنی ئەوەی گۆرانییەک یان ھۆنراوەیەک چی وشەیەک یان تیونێکی تێدایە، یان ئەوەی چی ڕوودەدات لە چیرۆکێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """How does that song go?""",
                      kurdishText: """ئەو گۆرانییە چۆنە؟""",
                      onPressedBritish: () => speaksentence87("en-GB"),
                      onPressedAmerican: () => speaksentence87("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """I forget how the next line goes.""",
                              kurdishText: """بیرم نییە دێڕی دواتر چییە.""",
                              onPressedBritish: () => speaksentence88("en-GB"),
                              onPressedAmerican: () => speaksentence88("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The story goes that she's been married five times.""",
                              kurdishText:
                                  """چیرۆکەکە بەو شێوەیە کە پێنج جار ھاوسەرگیری کردووە.""",
                              onPressedBritish: () => speaksentence89("en-GB"),
                              onPressedAmerican: () => speaksentence89("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٢٧. (کردار) گوتن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I asked ‘How much?’ and he goes, ‘Fifty’ and I go, ‘Fifty? You must be joking!’""",
                      kurdishText:
                          """پرسیم 'بە چەندە؟' و گوتی 'پەنجا' و گوتم 'پەنجا؟ دەبێت گاڵتە بکەیت!'""",
                      onPressedBritish: () => speaksentence90("en-GB"),
                      onPressedAmerican: () => speaksentence90("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٨. (کردار) دەستپێکردنی چالاکییەک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """As soon as he gets here we're ready to go.""",
                      kurdishText: """کە دەگاتە ئێرە ئامادەین بچین.""",
                      onPressedBritish: () => speaksentence91("en-GB"),
                      onPressedAmerican: () => speaksentence91("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٩. (کردار) ئەوەی ئامێرێک کار بکات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """This clock doesn't go.""",
                      kurdishText: """ئەم کاتژمێرە کار ناکات.""",
                      onPressedBritish: () => speaksentence92("en-GB"),
                      onPressedAmerican: () => speaksentence92("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """What makes it go?""",
                      kurdishText: """چی دەیخاتە کار؟""",
                      onPressedBritish: () => speaksentence93("en-GB"),
                      onPressedAmerican: () => speaksentence93("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣٠. (کردار) ئەوەی کە بتەوێت شتێک فڕێ بدەیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The old sofa will have to go.""",
                      kurdishText: """قەنەفە کۆنەکە دەبێت فڕێ بدرێت.""",
                      onPressedBritish: () => speaksentence94("en-GB"),
                      onPressedAmerican: () => speaksentence94("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He's useless—he'll have to go.""",
                      kurdishText: """بێ سوودە ـ دەبێت نەمێنێت.""",
                      onPressedBritish: () => speaksentence95("en-GB"),
                      onPressedAmerican: () => speaksentence95("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣١. (کردار) ئەوەی شتێک زیانی پێ بگات یان لە کارکردن بکەوێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Her sight is beginning to go.""",
                      kurdishText: """بینایی خەریکە نامێنێت.""",
                      onPressedBritish: () => speaksentence96("en-GB"),
                      onPressedAmerican: () => speaksentence96("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Her sight is beginning to go.""",
                      kurdishText: """بینایی خەریکە نامێنێت.""",
                      onPressedBritish: () => speaksentence97("en-GB"),
                      onPressedAmerican: () => speaksentence97("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His mind is going (= he is losing his mental powers).""",
                      kurdishText: """مێشکی لەدەست دەدات.""",
                      onPressedBritish: () => speaksentence98("en-GB"),
                      onPressedAmerican: () => speaksentence98("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I was driving home when my brakes went.""",
                      kurdishText:
                          """بۆ ماڵەوە دەچووم کە برێکەکانم لە کار کەوتن.""",
                      onPressedBritish: () => speaksentence99("en-GB"),
                      onPressedAmerican: () => speaksentence99("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٣٢. (کردار) مردن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You can't take your money with you when you go.""",
                      kurdishText: """ناتوانیت پارەکانت لەگەڵ خۆت کە دەمریت.""",
                      onPressedBritish: () => speaksentence100("en-GB"),
                      onPressedAmerican: () => speaksentence100("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣٣. (کردار) کە پارە بەکاردێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I don't know where the money goes!""",
                      kurdishText: """نازانم پارەکە لە چیدا خەرج دەکرێت.""",
                      onPressedBritish: () => speaksentence101("en-GB"),
                      onPressedAmerican: () => speaksentence101("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Most of my salary goes on the rent.""",
                              kurdishText: """زۆرینەی مووچەکەم بۆ کرێ دەچێت.""",
                              onPressedBritish: () => speaksentence102("en-GB"),
                              onPressedAmerican: () =>
                                  speaksentence102("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The money will go to finance a new community centre.""",
                              kurdishText:
                                  """پارەکەم بۆ بودجەی سەنتەرێکی کۆمەڵگەیی تازە دەچێت.""",
                              onPressedBritish: () => speaksentence103("en-GB"),
                              onPressedAmerican: () =>
                                  speaksentence103("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣٤. (کردار) ئەوەی بفرۆشرێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We won't let the house go for less than £200 000.""",
                      kurdishText:
                          """ناھێڵین خانووەکە بە کەمتر لە ٢٠٠٠٠٠ پاوەند بدرێت.""",
                      onPressedBritish: () => speaksentence104("en-GB"),
                      onPressedAmerican: () => speaksentence104("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There was usually some bread going cheap (= being sold cheaply) at the end of the day.""",
                      kurdishText:
                          """زۆرجار ھەندێک نان لە کۆتایی ڕۆژەکە بە ھەرزان دەفرۆشرا.""",
                      onPressedBritish: () => speaksentence105("en-GB"),
                      onPressedAmerican: () => speaksentence105("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣٥. (کردار) ئەوەی ئامادە بیت بڕە پارەیەکی دیاریکراو بە شتێک بدەیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'll go to £1 000 but that's my limit.""",
                      kurdishText: """١٠٠٠ پاوەند دەدەم بەڵام ئەوە ئەوپەڕمە.""",
                      onPressedBritish: () => speaksentence106("en-GB"),
                      onPressedAmerican: () => speaksentence106("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He's offered £3 000 for the car and I don't think he'll go any higher.""",
                      kurdishText:
                          """٣٠٠٠ پاوەندی بۆ ئۆتۆمبێلەکە داوە و پێموانییە زیاتر بدات.""",
                      onPressedBritish: () => speaksentence107("en-GB"),
                      onPressedAmerican: () => speaksentence107("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣٦. (کردار) یارمەتیدان؛ بەژداری لە کردنی شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """This all goes to prove my theory.""",
                      kurdishText:
                          """ئەمە ھەموو یارمەتیدەری بیردۆزەکەم دەبێت.""",
                      onPressedBritish: () => speaksentence108("en-GB"),
                      onPressedAmerican: () => speaksentence108("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It (= what has just happened) just goes to show you can't always tell how people are going to react.""",
                      kurdishText:
                          """ئەوە تەنھا ئەوە پیشان دەدات کە ناتوانیت پێشبینی ئەوە بکەیت کە خەڵکی چۆن وەڵام دەدەنەوە.""",
                      onPressedBritish: () => speaksentence109("en-GB"),
                      onPressedAmerican: () => speaksentence109("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣٧. (کردار) ئەوەی شتێک بەردەست ببێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There just aren't any jobs going in this area.""",
                      kurdishText: """ھیچ کارێک لەم ناوچەیە نییە.""",
                      onPressedBritish: () => speaksentence110("en-GB"),
                      onPressedAmerican: () => speaksentence110("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣٨. (کردار) چوونە سەرئاو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Do you need to go, Billy?""",
                      kurdishText: """پێویستت بە چوونە سەرئاوە، بیڵی؟""",
                      onPressedBritish: () => speaksentence111("en-GB"),
                      onPressedAmerican: () => speaksentence111("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣٩. (ناو) نۆرەی کەسێک کە یاری بکات یان بەژداری چالاکییەک بێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Whose go is it?""",
                      kurdishText: """نۆرەی کێیە؟""",
                      onPressedBritish: () => speaksentence112("en-GB"),
                      onPressedAmerican: () => speaksentence112("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It's your go.""",
                      kurdishText: """نۆرەتە.""",
                      onPressedBritish: () => speaksentence113("en-GB"),
                      onPressedAmerican: () => speaksentence113("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Can I have a go on your new bike?""",
                      kurdishText: """دەتوانم پاسکیلە تازەکەت بڕانم؟""",
                      onPressedBritish: () => speaksentence114("en-GB"),
                      onPressedAmerican: () => speaksentence114("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤٠. (ناو) ھەوڵدانی کردنی شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It took three goes to get it right.""",
                      kurdishText:
                          """سێ تاقیکردنەوەی پێچوو تا بە درووستی بیکەم.""",
                      onPressedBritish: () => speaksentence115("en-GB"),
                      onPressedAmerican: () => speaksentence115("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I doubt if he'll listen to advice from me, but I'll give it a go (= I'll try but I don't think I will succeed).""",
                      kurdishText:
                          """گومانم ھەیە گوێ لە ئامۆژگاریم بگرێت بەڵام ھەوڵێک دەدەم.""",
                      onPressedBritish: () => speaksentence116("en-GB"),
                      onPressedAmerican: () => speaksentence116("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤١. (ناو) وزە و تامەزرۆیی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Mary's always got plenty of go.""",
                      kurdishText: """ماری ھەمیشە تامەزرۆیی زۆری ھەیە.""",
                      onPressedBritish: () => speaksentence117("en-GB"),
                      onPressedAmerican: () => speaksentence117("en-US"),
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

// 188888880002200
const String _videoIdend = 'https://youtu.be/hFZFjoX2cGg?t=';
const double _startSecondsend = 00000000000000000000000000015;
const String _videoIdone = 'https://youtu.be/e_04ZrNroTo?t=';
const double _startSecondsone = 00000000000000000000000000023;
const String _videoIdtwo = 'https://youtu.be/rPe4yziWiOg?t=';
const double _startSecondstwo = 00000000000000000000000000059;
const String _videoIdthree = 'https://youtu.be/hTqtGJwsJVE?t=';
const double _startSecondsthree = 000000000000000000000000000242;
const String _videoIdfour = 'https://youtu.be/XZVHmRvfDHM?t=';
const double _startSecondsfour = 000000000000000000000000000177;
const String _videoIdfive = 'https://youtu.be/sDmeXdC3myg?t=';
const double _startSecondsfive = 00000000000000000000000000072;

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