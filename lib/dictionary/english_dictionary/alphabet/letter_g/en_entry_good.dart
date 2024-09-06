import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygood extends StatefulWidget {
  const EnglishEntrygood({super.key});

  @override
  State<EnglishEntrygood> createState() => _EnglishEntrygoodState();
}

class _EnglishEntrygoodState extends State<EnglishEntrygood> {
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
- Adjective: good (derived forms: better, best)
1. Having the normally expected amount (= full)
"a good mile from here"; "gives good measure";
 
2. Deserving of esteem and respect (= estimable, honorable [US], respectable, honourable [Brit, Cdn])
"ruined the family's good name";
 
3. Having desirable or positive qualities especially those suitable for a thing specified
"good news from the hospital"; "a good report card"; "a good knife is one good for cutting"; "this stump will make a good picnic table"; "a good check"; "a good joke"; "a good exterior paint"; "a good secretary"; "a good dress for the office"; "when she was good she was very very good"
 
4. Morally admirable
 
5. Promoting or enhancing well-being (= beneficial)
"the experience was good for her";
 
6. Agreeable or pleasing
"we all had a good time"; "good manners"
 
7. Of moral excellence (= just, upright)
"a genuinely good person";
 
8. Having or showing knowledge and skill and aptitude (= adept, expert, practiced [N. Amer], proficient, skillful [N. Amer], skilful [Brit, Cdn], practised [Brit, Cdn])
"a good mechanic";
 
9. Thorough (= proper)
"gave the house a good cleaning"; "had a good workout";
 
10. With or in a close or intimate relationship (= dear, near)
"a good friend";
 
11. Financially safe (= dependable, safe, secure)
"a good investment";
 
12. Most suitable or right for a particular purpose (= right, ripe)
"a good time to plant tomatoes";
 
13. Resulting favourably (= well)
"it's a good thing that I wasn't there"; "it is good that you stayed";
 
14. Exerting force or influence (= effective, in effect, in force)
"a warranty good for two years";
 
15. Capable of pleasing
"good looks"
 
16. Appealing to the mind (= serious)
"good music";
 
17. In excellent physical condition (= sound)
"good teeth"; "I still have one good leg";
 
18. Tending to promote physical well-being; beneficial to health (= salutary)
"a good night's sleep";
 
19. Not forged (= honest)
"a good dollar bill";
 
20. Not left to spoil (= unspoiled, unspoilt)
"the meat is still good";
 
21. Generally admired
"good taste"

- Noun: good
1. Benefit
"for your own good"; "what's the good of worrying?"
 
2. Moral excellence or admirableness (= goodness)
"there is much good to be found in people";
 
3. That which is pleasing, valuable or useful (= goodness)
"weigh the good against the bad"; "among the highest goods of all are happiness and self-realization";
 
4. A raw material or product that is bought and sold commercially in large quantities (= commodity, trade good)

- Adverb: good (derived forms: better, best)
Usage: N. Amer
1. (often used as a combining form) in a good or proper or satisfactory manner or to a high standard ('good' is a nonstandard dialectal variant for 'well') (= well)
"the baby can walk pretty good";
 
2. Completely and absolutely (= thoroughly, soundly, proper)
"we beat him good";
""",
  );

  final String keyword = "good";
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
    await flutterTts.speak("""good""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The piano was in really good condition.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Your work is just not good enough.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The results were pretty good.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Sorry, my English is not very good.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Keep up the good work!""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's a good way to make friends.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The sound and picture are both of good quality.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Things are looking good at the moment.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This essay really is very good.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The food was surprisingly good.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her school report was much better this year.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You've done a pretty good job.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Did you have a good time in London?""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This is very good news.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Let's hope we have good weather tomorrow.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's good to see you again.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There are loads of good things about working here.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It'd be a good place to go on holiday, but not to live in.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It would be good if he moved to London.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""If the weather's good, we can take a picnic.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Thank you, good question.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Yes, that's a good point.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I have good reason to be suspicious.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""What a good idea!""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This is a good example of what I mean.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""You raised several good points in your letter.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""You'll have to think of a better excuse than that!""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My father once gave me some good advice.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The play had good reviews.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The hotel has a good reputation.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He comes from a good family.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Nick has always been good at finding cheap flights.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's a really good actor.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm not really a very good cook.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Are you any good at languages?""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's good with her hands.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's very good with children.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She has tried to lead a good life.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Giving her that money was a good thing to do.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He is a very good man.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She prayed that God would make her a better person.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was a good Catholic girl.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You've always been such a good friend.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was very good to me when I was ill.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was very good of you to come.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You can stay up late if you're good.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I want you all to be good while I'm out of the room.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's usually quite good in class.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I don't feel too good today.""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Living so close to a chemicals factory can't be good.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Too much sun isn't good for you.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Vegetables are good for you.""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The deal will be good for the country as a whole.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It's probably good for you to get some criticism now and then.""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Shut your mouth, if you know what's good for you.""");
  }

  Future<void> speaksentence56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Now is a good time to buy a house.""");
  }

  Future<void> speaksentence57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Do you really think this is a good use of your time?""");
  }

  Future<void> speaksentence58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Students are not allowed to miss classes without good reason.""");
  }

  Future<void> speaksentence59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She would be good for the job.""");
  }

  Future<void> speaksentence60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""This is as good a place as any to spend the night.""");
  }

  Future<void> speaksentence61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Can we change our meeting? Monday isn't good for me.""");
  }

  Future<void> speaksentence62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Good, I think we've come to a decision.""");
  }

  Future<void> speaksentence63(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""‘Dinner's ready.’ ‘Good—I'm starving.’""");
  }

  Future<void> speaksentence64(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""‘I've ordered some drinks.’ ‘Good man!’""");
  }

  Future<void> speaksentence65(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Good God!""");
  }

  Future<void> speaksentence66(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The kitchen is a good size.""");
  }

  Future<void> speaksentence67(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We spent a good while looking for the house.""");
  }

  Future<void> speaksentence68(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He devoted a good deal of attention to the problem.""");
  }

  Future<void> speaksentence69(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There's a good chance that I won't be here next year.""");
  }

  Future<void> speaksentence70(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We waited for a good hour.""");
  }

  Future<void> speaksentence71(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's a good three miles to the station.""");
  }

  Future<void> speaksentence72(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You'll feel better after a good sleep.""");
  }

  Future<void> speaksentence73(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We had a good laugh about it afterwards.""");
  }

  Future<void> speaksentence74(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""That's a good one!""");
  }

  Future<void> speaksentence75(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You're good for a few years yet.""");
  }

  Future<void> speaksentence76(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The ticket is good for three months.""");
  }

  Future<void> speaksentence77(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's always good for a laugh.""");
  }

  Future<void> speaksentence78(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Do they even know the difference between good and evil?""");
  }

  Future<void> speaksentence79(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Is religion always a force for good?""");
  }

  Future<void> speaksentence80(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was a gathering of the great and the good.""");
  }

  Future<void> speaksentence81(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Cuts have been made for the good of the company.""");
  }

  Future<void> speaksentence82(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm only telling you this for your own good.""");
  }

  Future<void> speaksentence83(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """What's the good of earning all that money if you don't have time to enjoy it?""");
  }

  Future<void> speaksentence84(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Now, you listen to me good!""");
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
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """good""",
                      // alsoEnglishWord: "also: good",
                      britshText: """IpaUK: /ɡʊd/""",
                      americanText: """IpaUS: /ɡʊd/""",
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
                    const KurdishVocabulary(text: """
کوردی: باش، چاک، قەنج، خاس،	چەلەنگ، خۆش، وەش، شیرین،	دڵسۆز، دەسگر، بەدەم‌خەڵکەوەبوو،	گونجاو، لەبار، شیاو،	بەسوود، بەقازانج، بەکەڵک،	بەڕەوشت، ڕەفتارباش،	ساغ، سڵامەت، ساخلەم،	جێی‌متمانە، جێی‌باوەڕ، بەنرخ، بەبایەخ، باوەڕپێکراو، لێ‌ڕابینراو،	باش، دروست، ڕاست،	شارەزا، کارامە، سەردەرچوو، بەتوانا، کارزان،	زۆر، کەمێ زۆر،	(جل‌وبەرگ) تازە، خاوێن، نەو،	ناقەڵب، ئەسڵ، ڕەسەن، ڕاستەقینە، تەواو، ڕەبەق،	شیرپاک، پاک، گەورەپیاو،	بەجێ، ژیرانە،	چاکە، باشە، کاری چاکە، خێر،	کردەوەی باشە،	باشی، چاکی،	قازانج، سوود، بەرژەوەندی،	خەڵکی باش، چاکەکاران، خێرخوازان،	شتی چاک
"""),
                    const DefinitionKurdish(text: """١. (ھاوەڵناو) باش"""),
                    SentencesRow(
                      englishText:
                          """The piano was in really good condition.""",
                      kurdishText: """پیانۆکە بەڕاستی لە دۆخێکی باشدا بوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Your work is just not good enough.""",
                              kurdishText:
                                  """کارەکەت ئەوەیە کە بەشی پێویست باش نییە.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """The results were pretty good.""",
                              kurdishText: """ئەنجامەکا تەواو باش بوون.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Sorry, my English is not very good.""",
                              kurdishText:
                                  """ببوورە، ئینگلیزییەکەم زۆر باش نییە.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Keep up the good work!""",
                              kurdishText: """لە کارە باشەکەت بەردەوام بە!""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It's a good way to make friends.""",
                              kurdishText:
                                  """ڕێگایەکی باشە بۆ درووستکردنی ھاوڕێیەتی.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The sound and picture are both of good quality.""",
                              kurdishText:
                                  """دەنگ و ڕەنگەکە ھەردوو لە کوالێتی باشن.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Things are looking good at the moment.""",
                              kurdishText: """شتەکان باش دیارن لە ئێستادا.""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """This essay really is very good.""",
                              kurdishText: """ئەم داڕشتنە بە ڕاستی زۆر چاکە.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The food was surprisingly good.""",
                              kurdishText:
                                  """خواردنەکە بە ئاستێکی زۆر باش بوو.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Her school report was much better this year.""",
                              kurdishText:
                                  """ڕاپۆرتی قوتابخانەکەی ئەمساڵ زۆر باشتر بوو.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """You've done a pretty good job.""",
                              kurdishText: """کارێکی زۆر باشت کردووە.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) خۆش؛ کە چێژی لێ دەبینیت"""),
                    SentencesRow(
                      englishText: """Did you have a good time in London?""",
                      kurdishText: """کاتێکی خۆشت ھەبوو لە لەندەن؟""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """This is very good news.""",
                              kurdishText: """ھەواڵێکی زۆر دڵخۆشکەرە.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Let's hope we have good weather tomorrow.""",
                              kurdishText:
                                  """با ھیوا بەوە بخوازین سبەی کەشووھەوایەکی خۆش ھەبێت.""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """It's good to see you again.""",
                              kurdishText: """خۆشحاڵم کە دەتبینمەوە.""",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """There are loads of good things about working here.""",
                              kurdishText:
                                  """ژمارەیەکی زۆر شتی باش ھەیە سەبارەت بە کارکردن لێرە.""",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It'd be a good place to go on holiday, but not to live in.""",
                              kurdishText:
                                  """شوێنێکی باشە بۆ چوونە گەشت بۆی، بەڵام نەک لێی بژیت.""",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It would be good if he moved to London.""",
                              kurdishText: """خۆشدەبێت ئەگەر بچێتە لەندەن.""",
                              onPressedBritish: () => speaksentence19("en-GB"),
                              onPressedAmerican: () => speaksentence19("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """If the weather's good, we can take a picnic.""",
                              kurdishText:
                                  """ئەگەر کەشووھەواکە خۆش بێت، دەتوانین بچینە سەیران.""",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) شتێک کە باشە و پەیوەندیدارە بەوەی باس دەکرێت"""),
                    SentencesRow(
                      englishText: """Thank you, good question.""",
                      kurdishText: """سوپاس، پرسیارێکی باشە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """Yes, that's a good point.""",
                              kurdishText: """بەڵێ، ئەوە پرسیارێکی بەجییە.""",
                              onPressedBritish: () => speaksentence22("en-GB"),
                              onPressedAmerican: () => speaksentence22("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I have good reason to be suspicious.""",
                              kurdishText: """ھۆکاری بەجێم ھەیە بەگومان بم.""",
                              onPressedBritish: () => speaksentence23("en-GB"),
                              onPressedAmerican: () => speaksentence23("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """What a good idea!""",
                              kurdishText: """چی بیرۆکەیەکی شازە!""",
                              onPressedBritish: () => speaksentence24("en-GB"),
                              onPressedAmerican: () => speaksentence24("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """This is a good example of what I mean.""",
                              kurdishText:
                                  """ئەمە نموونەیەکی باشی ئەوەیە کە مەبەستمە.""",
                              onPressedBritish: () => speaksentence25("en-GB"),
                              onPressedAmerican: () => speaksentence25("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """You raised several good points in your letter.""",
                              kurdishText:
                                  """ژمارەیەک خاڵی باشت ورووژاندووە لە نامەکەت.""",
                              onPressedBritish: () => speaksentence26("en-GB"),
                              onPressedAmerican: () => speaksentence26("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """You'll have to think of a better excuse than that!""",
                              kurdishText:
                                  """دەبێت بیر لە بیانوویەکی باشتر بکەیتەوە وەک لەوە!""",
                              onPressedBritish: () => speaksentence27("en-GB"),
                              onPressedAmerican: () => speaksentence27("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """My father once gave me some good advice.""",
                              kurdishText:
                                  """باوکم جارێک ژمارەیەک ئامۆژگاری باشی پێدام.""",
                              onPressedBritish: () => speaksentence28("en-GB"),
                              onPressedAmerican: () => speaksentence28("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) کە ڕێزلێگیراوە و پەسەند دەکرێت"""),
                    SentencesRow(
                      englishText: """The play had good reviews.""",
                      kurdishText: """شانۆکە ھەڵسەنگاندنی باشی ھەبوو.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """The hotel has a good reputation.""",
                              kurdishText: """ھوتێلەکە ناوبانگی باشی ھەیە.""",
                              onPressedBritish: () => speaksentence30("en-GB"),
                              onPressedAmerican: () => speaksentence30("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """He comes from a good family.""",
                              kurdishText: """سەر بە خێزانێکی ڕێزلێگیراوە.""",
                              onPressedBritish: () => speaksentence31("en-GB"),
                              onPressedAmerican: () => speaksentence31("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ھاوەڵناو) کە دەتوانێت شتێک بە باشی بکات"""),
                    SentencesRow(
                      englishText:
                          """Nick has always been good at finding cheap flights.""",
                      kurdishText:
                          """نیک ھەمیشە باش بووە لە دۆزینەوەی گەشتی ھەرزان.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """She's a really good actor.""",
                              kurdishText: """بەڕاستی ئەکتەرێکی باشە.""",
                              onPressedBritish: () => speaksentence33("en-GB"),
                              onPressedAmerican: () => speaksentence33("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I'm not really a very good cook.""",
                              kurdishText:
                                  """لە ڕاستیدا چێشتلێنەرێکی زۆر باش نیم.""",
                              onPressedBritish: () => speaksentence34("en-GB"),
                              onPressedAmerican: () => speaksentence34("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Are you any good at languages?""",
                              kurdishText: """ھیچ زمانێک ئەزانیت؟""",
                              onPressedBritish: () => speaksentence35("en-GB"),
                              onPressedAmerican: () => speaksentence35("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ھاوەڵناو) ئەوەی شتێک بە باشی بەکاربھێنیت یان باش مامەڵە لەگەڵ خەڵکی بکەیت"""),
                    SentencesRow(
                      englishText:
                          """She's good with her hands (= able to make things, etc.).""",
                      kurdishText: """دەستڕەنگینە.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He's very good with children.""",
                      kurdishText: """شارەزای منداڵانە.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ھاوەڵناو) کە لە ڕووی ئەخلاقییەوە ڕاستە"""),
                    SentencesRow(
                      englishText: """She has tried to lead a good life.""",
                      kurdishText: """ھەوڵیداوە ژیانێکی درووستی ھەبێت.""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Giving her that money was a good thing to do.""",
                              kurdishText:
                                  """ئەوەی ئەو پارەی پێدا کارێکی درووست بوو.""",
                              onPressedBritish: () => speaksentence39("en-GB"),
                              onPressedAmerican: () => speaksentence39("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """He is a very good man.""",
                              kurdishText: """پیاوێکی زۆر بە ئەخلاقە.""",
                              onPressedBritish: () => speaksentence40("en-GB"),
                              onPressedAmerican: () => speaksentence40("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She prayed that God would make her a better person.""",
                              kurdishText:
                                  """نزای کرد تاوەکو خودا بیکات بە کەسێکی باشتر.""",
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
                            """٨. (ھاوەڵناو) کە بە توندی پابەند بە ژمارەیەک یاسا یان بنچینە دەبێت"""),
                    SentencesRow(
                      englishText: """She was a good Catholic girl.""",
                      kurdishText: """کچێکی پابەند بە کاسۆلیک بوو.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (ھاوەڵناو) میھرەبان لەگەڵ کەسانی دیکە"""),
                    SentencesRow(
                      englishText: """You've always been such a good friend.""",
                      kurdishText: """ھەمیشە ھاوڕێیەکی زۆر میھرەبان بوویتە.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """He was very good to me when I was ill.""",
                              kurdishText:
                                  """زۆر میھرەبان بوو لەگەڵم کە نەخۆش بووم.""",
                              onPressedBritish: () => speaksentence44("en-GB"),
                              onPressedAmerican: () => speaksentence44("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It was very good of you to come.""",
                              kurdishText: """زۆر لە بەخشندەییت بوو کە ھاتی.""",
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
                            """١٠. (ھاوەڵناو) منداڵ یان ئاژەڵ کە بە ڕێزەوە و باش ڕەفتار دەکەن"""),
                    SentencesRow(
                      englishText: """You can stay up late if you're good.""",
                      kurdishText:
                          """ئەتوانیت تا درەنگێک بەخەبەر بیت ئەگەر ئاقڵ بیت.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """I want you all to be good while I'm out of the room.""",
                              kurdishText:
                                  """ئەمەوێت ھەمووتان ئاقڵ بن کە لە دەرەوەی ژوورەوەکەم.""",
                              onPressedBritish: () => speaksentence47("en-GB"),
                              onPressedAmerican: () => speaksentence47("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She's usually quite good in class.""",
                              kurdishText: """زۆرجار زۆر ئاقڵە لە پۆلدا.""",
                              onPressedBritish: () => speaksentence48("en-GB"),
                              onPressedAmerican: () => speaksentence48("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (ھاوەڵناو) تەندرووست و بەھێز"""),
                    SentencesRow(
                      englishText: """I don't feel too good today.""",
                      kurdishText: """ئەمڕۆ زۆر ھەست بە باشی ناکەم.""",
                      onPressedBritish: () => speaksentence49("en-GB"),
                      onPressedAmerican: () => speaksentence49("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (ھاوەڵناو) کە کاریگەری باش و بەسوودی ھەیە لەسەر کەسێک/شتێک"""),
                    SentencesRow(
                      englishText:
                          """Living so close to a chemicals factory can't be good.""",
                      kurdishText:
                          """ژیان زۆر نزیک لە کارگەیەکی کیمیایی باش نابێت.""",
                      onPressedBritish: () => speaksentence50("en-GB"),
                      onPressedAmerican: () => speaksentence50("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Too much sun isn't good for you.""",
                              kurdishText:
                                  """بەرکەوتنی زۆر بە خۆر باش نییە بۆت.""",
                              onPressedBritish: () => speaksentence51("en-GB"),
                              onPressedAmerican: () => speaksentence51("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Vegetables are good for you.""",
                              kurdishText: """سەوزە باشە بۆت.""",
                              onPressedBritish: () => speaksentence52("en-GB"),
                              onPressedAmerican: () => speaksentence52("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The deal will be good for the country as a whole.""",
                              kurdishText:
                                  """ڕێکەوتنەکە بە گشتی باش دەبێت بۆ وڵاتەکە.""",
                              onPressedBritish: () => speaksentence53("en-GB"),
                              onPressedAmerican: () => speaksentence53("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It's probably good for you to get some criticism now and then.""",
                              kurdishText:
                                  """تا ڕادەیەک باشە بۆت کە ماوە ماوە ھەندێک سەرزەنشت بکرێیت.""",
                              onPressedBritish: () => speaksentence54("en-GB"),
                              onPressedAmerican: () => speaksentence54("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Shut your mouth, if you know what's good for you (= used as a threat).""",
                              kurdishText:
                                  """دەمت داخە ئەگەر دەزانیت چی باشە بۆت.""",
                              onPressedBritish: () => speaksentence55("en-GB"),
                              onPressedAmerican: () => speaksentence55("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """١٣. (ھاوەڵناو) گونجاو"""),
                    SentencesRow(
                      englishText: """Now is a good time to buy a house.""",
                      kurdishText:
                          """ئێستا کاتێکی گونجاوە بۆ کڕینی خانوویەک.""",
                      onPressedBritish: () => speaksentence56("en-GB"),
                      onPressedAmerican: () => speaksentence56("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Do you really think this is a good use of your time?""",
                              kurdishText:
                                  """بەڕاستی پێت باشە ئەمە بەکارھێنانی گونجاوی کاتت بێت؟""",
                              onPressedBritish: () => speaksentence57("en-GB"),
                              onPressedAmerican: () => speaksentence57("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Students are not allowed to miss classes without good reason.""",
                              kurdishText:
                                  """قوتابییان نابێت وانەیان لەدەست بچێت بەبێ ھۆکاری گونجاو.""",
                              onPressedBritish: () => speaksentence58("en-GB"),
                              onPressedAmerican: () => speaksentence58("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """She would be good for the job.""",
                              kurdishText: """گونجاو دەبێت بۆ کارەکە.""",
                              onPressedBritish: () => speaksentence59("en-GB"),
                              onPressedAmerican: () => speaksentence59("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """This is as good a place as any to spend the night.""",
                              kurdishText:
                                  """ئەمە شوێنێکی گونجاوە وەک ھەر جێگای دیکە بۆ بەسەربردنی شەوەکە.""",
                              onPressedBritish: () => speaksentence60("en-GB"),
                              onPressedAmerican: () => speaksentence60("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Can we change our meeting? Monday isn't good (= convenient) for me.""",
                              kurdishText:
                                  """دەتوانین چاوپێکەوتنەکەمان بگۆڕین< دووشەممە گونجاو نییە بۆم.""",
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
                            """١٤. (ھاوەڵناو) بۆ ڕازیبوون بەوەی کە گوتراوە یان کراوە، یان بۆ چوونە سەر بابەتێکی تازە"""),
                    SentencesRow(
                      englishText:
                          """Good, I think we've come to a decision.""",
                      kurdishText: """باشە، پێموایە گەشتووین بە بڕیارێک.""",
                      onPressedBritish: () => speaksentence62("en-GB"),
                      onPressedAmerican: () => speaksentence62("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """‘Dinner's ready.’ ‘Good—I'm starving.’""",
                      kurdishText:
                          """'نانی ئێوارە ئامادەیە.' 'باشە، مردووم لە برسا.'""",
                      onPressedBritish: () => speaksentence63("en-GB"),
                      onPressedAmerican: () => speaksentence63("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٥. (ھاوەڵناو) بۆ ستایشکردن"""),
                    SentencesRow(
                      englishText:
                          """‘I've ordered some drinks.’ ‘Good man!’""",
                      kurdishText:
                          """'داوای ھەندێک خواردنەوەم کردووە.' 'بژیت!'""",
                      onPressedBritish: () => speaksentence64("en-GB"),
                      onPressedAmerican: () => speaksentence64("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٦. (ھاوەڵناو) لە ڕستەی سەرسوورمان بەکاردێت"""),
                    SentencesRow(
                      englishText: """Good God!""",
                      kurdishText: """ئای خودا!""",
                      onPressedBritish: () => speaksentence65("en-GB"),
                      onPressedAmerican: () => speaksentence65("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٧. (ھاوەڵناو) بە ڕێژە، بڕ، یان ئاستێکی زۆر"""),
                    SentencesRow(
                      englishText: """The kitchen is a good size.""",
                      kurdishText: """چێشتخانەکە قەبارەی گەورەیە.""",
                      onPressedBritish: () => speaksentence66("en-GB"),
                      onPressedAmerican: () => speaksentence66("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """We spent a good while (= quite a long time) looking for the house.""",
                              kurdishText:
                                  """ماوەیەکی زۆرمان بەسەر برد بە گەڕان بۆ خانووەکە.""",
                              onPressedBritish: () => speaksentence67("en-GB"),
                              onPressedAmerican: () => speaksentence67("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He devoted a good deal of attention to the problem.""",
                              kurdishText: """سەرنجێکی زۆری دا بە کێشەکە.""",
                              onPressedBritish: () => speaksentence68("en-GB"),
                              onPressedAmerican: () => speaksentence68("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """There's a good chance (= it is likely) that I won't be here next year.""",
                              kurdishText:
                                  """ئەگەرێکی زۆر ھەیە کە ساڵی داھاتوو لێرە نەبم.""",
                              onPressedBritish: () => speaksentence69("en-GB"),
                              onPressedAmerican: () => speaksentence69("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٨. (ھاوەڵناو) کە کەمتر نییە لە؛ کە زیاترە"""),
                    SentencesRow(
                      englishText: """We waited for a good hour.""",
                      kurdishText:
                          """بەلایەنی کەمەوە بۆ کاتژمێرێک چاوەڕێ بووین.""",
                      onPressedBritish: () => speaksentence70("en-GB"),
                      onPressedAmerican: () => speaksentence70("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It's a good three miles to the station.""",
                      kurdishText: """بە لایەنی کەمەوە سێ میلە بۆ ویستگەکە.""",
                      onPressedBritish: () => speaksentence71("en-GB"),
                      onPressedAmerican: () => speaksentence71("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٩. (ھاوەڵناو) کە بە ئاستێکی بەرز و زۆر دەکرێت"""),
                    SentencesRow(
                      englishText: """You'll feel better after a good sleep.""",
                      kurdishText:
                          """ھەست بە باشتر دەکەیت لە دوای خەوێکی باش.""",
                      onPressedBritish: () => speaksentence72("en-GB"),
                      onPressedAmerican: () => speaksentence72("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We had a good laugh about it afterwards.""",
                      kurdishText: """دواتر پێکەنینێکی باشمان پێی کرد.""",
                      onPressedBritish: () => speaksentence73("en-GB"),
                      onPressedAmerican: () => speaksentence73("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٠. (ھاوەڵناو) پێکەنیناوی و زیرەکانە"""),
                    SentencesRow(
                      englishText: """That's a good one!""",
                      kurdishText: """ئەوەیان زیرەکانە بوو!""",
                      onPressedBritish: () => speaksentence74("en-GB"),
                      onPressedAmerican: () => speaksentence74("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢١. (ھاوەڵناو) کە ھێز، وزە، تەندرووستی، ھتد ماوە بۆ ماوە یان مەودایەکی دیاریکراو"""),
                    SentencesRow(
                      englishText:
                          """You're good for (= you will live) a few years yet.""",
                      kurdishText: """جارێ چەند ساڵێکی دیکەت ماوە.""",
                      onPressedBritish: () => speaksentence75("en-GB"),
                      onPressedAmerican: () => speaksentence75("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٢. (ھاوەڵناو) کە پەسەندکراوە بۆ شتێک"""),
                    SentencesRow(
                      englishText: """The ticket is good for three months.""",
                      kurdishText: """بلیتەکە بۆ سێ مانگ کار دەکات.""",
                      onPressedBritish: () => speaksentence76("en-GB"),
                      onPressedAmerican: () => speaksentence76("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢٣. (ھاوەڵناو) کە ئەگەری ھەیە شتێک دابین بکات"""),
                    SentencesRow(
                      englishText: """He's always good for a laugh.""",
                      kurdishText: """ھەمیشە پێکەنینێک درووست دەکات.""",
                      onPressedBritish: () => speaksentence77("en-GB"),
                      onPressedAmerican: () => speaksentence77("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٤. (ناو) ھەڵسوکەوتی درووست و پەسەندکراو"""),
                    SentencesRow(
                      englishText:
                          """Do they even know the difference between good and evil?""",
                      kurdishText: """ھەر جیاوازی نێوان باش و خراپ دەزانن؟""",
                      onPressedBritish: () => speaksentence78("en-GB"),
                      onPressedAmerican: () => speaksentence78("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Is religion always a force for good?""",
                      kurdishText: """ئایا ئایین ھەمیشە ھۆکارە بۆ چاکە؟""",
                      onPressedBritish: () => speaksentence79("en-GB"),
                      onPressedAmerican: () => speaksentence79("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٢٥. (ناو) کەسانی باش"""),
                    SentencesRow(
                      englishText:
                          """It was a gathering of the great and the good.""",
                      kurdishText: """ئەوە کۆبوونەوەی کەسانی مەزن و باش بوو.""",
                      onPressedBritish: () => speaksentence80("en-GB"),
                      onPressedAmerican: () => speaksentence80("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢٦. (ناو) شتێک کە یارمەتیدەری کەسێک/شتێک دەبێت"""),
                    SentencesRow(
                      englishText:
                          """Cuts have been made for the good of the company.""",
                      kurdishText:
                          """کەمکردنەوەی خەرجی بۆ چاکەی کۆمپانیاکە ئەنجام دراوە.""",
                      onPressedBritish: () => speaksentence81("en-GB"),
                      onPressedAmerican: () => speaksentence81("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I'm only telling you this for your own good.""",
                      kurdishText: """ئەمەت پێدەڵیم تەنھا بۆ چاکەی خۆت.""",
                      onPressedBritish: () => speaksentence82("en-GB"),
                      onPressedAmerican: () => speaksentence82("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """What's the good of (= how does it help you) earning all that money if you don't have time to enjoy it?""",
                      kurdishText:
                          """باشی بەدەستھێنانی ئەو ھەموو پارەیە چییە ئەگەر کاتت نەبێت چێژی لێ ببینیت؟""",
                      onPressedBritish: () => speaksentence83("en-GB"),
                      onPressedAmerican: () => speaksentence83("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٢٧. (ھاوەڵکار) بە باشی"""),
                    SentencesRow(
                      englishText: """Now, you listen to me good!""",
                      kurdishText: """ئێستا، باش گوێم لێ بگرە!""",
                      onPressedBritish: () => speaksentence84("en-GB"),
                      onPressedAmerican: () => speaksentence84("en-US"),
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

const String _videoIdend = 'XZVHmRvfDHM';
const double _startSecondsend = 25;
const String _videoIdone = 'hTqtGJwsJVE';
const double _startSecondsone = 19;
const String _videoIdtwo = 'L94M4xQcPYk';
const double _startSecondstwo = 140;
const String _videoIdthree = 'hS2x1zl4rn0';
const double _startSecondsthree = 74;
const String _videoIdfour = '_spuxXnul0U';
const double _startSecondsfour = 61;
const String _videoIdfive = 'khOUvmOQExc';
const double _startSecondsfive = 486;

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