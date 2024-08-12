import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygive extends StatefulWidget {
  const EnglishEntrygive({super.key});

  @override
  State<EnglishEntrygive> createState() => _EnglishEntrygiveState();
}

class _EnglishEntrygiveState extends State<EnglishEntrygive> {
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
- Verb: give (derived forms: given, gave, giving, gives)
1. Cause to have, in the abstract sense or physical sense
"She gave him a black eye"; "The draft gave me a cold"
 
2. Be the cause or source of (= yield, afford)
"He gave me a lot of trouble";
 
3. Transfer possession of something concrete or abstract to somebody
"I gave her my money"; "can you give me lessons?"; "She gave the children lots of love and tender loving care"
 
4. Convey or reveal information
"Give one's name"
 
5. Convey, as of a compliment, regards, attention, etc.; bestow (= pay)
"give the orders"; "Give him my best regards";
 
6. Organize or be responsible for (= hold, throw, have, make)
"give a course";
 
7. Convey or communicate; of a smile, a look, a physical gesture (= throw)
"She gave me a dirty look";
 
8. Give as a present; make a gift of (= gift, present)
"What will you give her for her birthday?";
 
9. Cause to happen or be responsible for (= yield)
"His two singles gave the team the victory";
 
10. Dedicate (= pay, devote)
"give thought to"; "give priority to";
 
11. Give or supply (= render, yield, return, generate)
"The estate gives some revenue for the family";
 
12. Transmit (knowledge or skills) (= impart, leave, pass on)
"give a secret to the Russians";
 
13. Bring about (= establish)
"The trompe l'oeil-illusion gives depth";
 
14. Leave with; give temporarily
"Can I give you my keys while I go in the pool?"; "Can I give you the children for the weekend?"
 
15. Emit or utter
"Give a gulp"; "give a yelp"
 
16. Endure the loss of (= sacrifice)
"He gave his life for his children"; "I gave two sons to the war";
 
17. Place into the hands or custody of (= pass, hand, reach, pass on, turn over)
"give me the spoon, please";
 
18. Use entirely for a specific person, activity, or cause (= dedicate, consecrate, commit, devote)
"give one's talents to a good cause";
 
19. Give (as medicine)
"I gave him the drug"
 
20. Give or convey physically (= apply)
"She gave him First Aid"; "I gave him a punch in the nose";
 
21. Bestow (= render)
"give homage";
 
22. Allow, esp. in an official capacity (= grant)
"give a divorce";
 
23. Move in order to make room for someone or something (= move over, give way, ease up, yield)
"The park gave way to a supermarket";
 
24. Give food to (= feed)
"don't give the child this tough meat";
 
25. Provide a part of a whole amount; give towards some cause (= contribute, chip in [informal], kick in)
"I gave at the office";
 
26. Break down, literally or metaphorically (= collapse, fall in, cave in, give way, break, founder)
"The wall gave in"; "The roof finally gave under the weight of the ice"; "The wall gave way";
 
27. Estimate the duration or outcome of something
"He gave the patient three months to live"; "I gave him a very good chance at success"
 
28. Execute and deliver
"Give bond"
 
29. Deliver in exchange or recompense
"I'll give you three books for four CDs"
 
30. Provide entry or access to (= afford, open)
"The French doors give onto a terrace";
 
31. Present to view
"He gave the sign to start"
 
32. (performing arts) perform for an audience
"Pollini is giving another concert in New York"
 
33. Be flexible under stress of physical force (= yield)
"This material doesn't give";
 
34. Propose
"He gave the first of many toasts at the birthday party"
 
35. (law) accord by verdict
"give a decision for the plaintiff"
 
36. Manifest or show
"This student gives promise of real creativity"; "The office gave evidence of tampering"
 
37. Offer in good faith
"He gave her his word"
 
38. Submit for consideration, judgment, or use
"give one's opinion"; "give an excuse"
 
39. Guide or direct, as by behaviour of persuasion
"You gave me to think that you agreed with me"
 
40. Allow to have or take
"I give you two minutes to respond"
 
41. Inflict as a punishment
"She gave the boy a good spanking"; "The judge gave me 10 years"
 
42. Occur
"what gives?"
 
43. Consent to engage in sexual intercourse with a man
"She gave herself to many men"
 
44. Proffer (a body part)
"She gave her hand to her little sister"

- Noun: give (derived forms: gives)
1. The elasticity of something that can be stretched and returns to its original length (= spring, springiness)
""",
  );

  final String keyword = "give";
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

    await flutterTts.speak("""give""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Give the letter to your mother when you've read it.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She gave her ticket to the woman at the desk.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""They were all given a box to carry.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Give me the book.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""What are you giving your father for his birthday?""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She was given a huge bunch of flowers.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Did you give the waiter a tip?""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She gave a couple of pounds to the beggar.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""We all agreed not to give presents this year.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""They say it's better to give than to receive.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""They were all thirsty so I gave them a drink.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Give me your name and address.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""We've been given a 2 per cent pay increase.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I was hoping you would give me a job.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He was given a new heart in a five-hour operation.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Give me some time to decide.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """We should at least give him the opportunity to explain why he did this.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """This should give you some idea of the extent of the problem.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""We'll give you all the help we can.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She wants a job that gives her more responsibility.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I'll give you ten minutes to prepare your answer.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""He gives Italian lessons to his colleagues.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The reforms should give a better chance to the less able children.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She gave some helpful advice.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She gives the impression of being very busy.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I was asked to give evidence at the trial.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She gave me some medicine that sent me off to sleep.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""We want to give you the best possible care.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""We need your help—please give generously.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""They both gave regularly to charity.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""A lot of people give money to good causes.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I'll give you £100 and not a penny more!""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""How much will you give me for the car?""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I'd give anything to see him again.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She gave a shrug of her shoulders.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""He turned to us and gave a big smile.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She looked up from her work and gave a yawn.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""He gave a loud cry and fell to the floor.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Her work has given pleasure to millions of readers.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""He gave her a kiss.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I have to admit that the news gave us a shock.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""All that driving has given me a headache.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Give me a call tomorrow.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I'll give you a ring.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I give it ten out of ten for originality.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He virtually never gives a grade of less than C.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I gave top marks to her essay.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""You've given me your cold.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She'd given the bug to all her colleagues.""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The judge gave him a nine-month suspended sentence.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We discussed what punishment should be given to the boys.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We're giving a party to celebrate our silver wedding.""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He gave a rousing performance of the Bob Marley song.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The President will be giving a press conference this afternoon.""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I gave the matter a lot of thought.""");
  }

  Future<void> speaksentence56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The government has given top priority to reforming the tax system.""");
  }

  Future<void> speaksentence57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """That marriage won't last. I'll give them two years at the outside.""");
  }

  Future<void> speaksentence58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The umpire gave the ball out.""");
  }

  Future<void> speaksentence59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The ref gave the goal.""");
  }

  Future<void> speaksentence60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The branch began to give under his weight.""");
  }

  Future<void> speaksentence61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""You're going to have to give a little.""");
  }

  Future<void> speaksentence62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The shoes may seem tight at first, but the leather has plenty of give in it.""");
  }

  Future<void> speaksentence100(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They say it's better to give than to receive.0""");
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
                      word: """give""",
                      // alsoEnglishWord: "also: give",
                      britshText: """IpaUK: /ɡɪv/""",
                      americanText: """IpaUS: /ɡɪv/""",
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
کوردی: جیڕی، پێدان، کەژی، جیری، نەرمی، جیرئاسایی، کێش‌ھاتوویی
"""),
// With short examples define "give", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) پێدانی شتێک بە کەسێک بۆ ئەوەی سەیری بکات، بەکاری بھێنێت، یان ماوەیەک لای بێت"""),
                    SentencesRow(
                      englishText:
                          """Give the letter to your mother when you've read it.""",
                      kurdishText: """نامەکە بدە بە دایکت کە خوێندتەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """She gave her ticket to the woman at the desk.""",
                              kurdishText:
                                  """بلیتەکەیی دا بە ژنەکەی سەر دێسکەکە.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They were all given a box to carry.""",
                              kurdishText:
                                  """ھەموویان سندووقێکیان پێدرا ھەڵی بگرن.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Give me the book.""",
                              kurdishText: """کتێبەکەم پێ بدە.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (کردار) پێدان وەک دیاری"""),
                    SentencesRow(
                      englishText:
                          """What are you giving your father for his birthday?""",
                      kurdishText:
                          """چی دەدەیت بە باوکت بۆ ڕۆژی لەدایکبوونی؟""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """She was given a huge bunch of flowers.""",
                              kurdishText: """یەک دەستە گوڵی گەورەی پێدرا.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Did you give the waiter a tip?""",
                              kurdishText: """شاگردانەت دا بە گارسۆنەکە؟""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She gave a couple of pounds to the beggar.""",
                              kurdishText:
                                  """چەند پاوەندێکی دا بە سواڵکەرەکە.""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We all agreed not to give presents this year.""",
                              kurdishText:
                                  """ڕازی بووین بۆ ئەمساڵ خەڵات نەبەخشین.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They say it's better to give than to receive.""",
                              kurdishText:
                                  """دەگوترێت باشترە ببەخشیت وەک لەوەی دەست پان‌بکەیتەوە.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (کردار) پێدانی شتێک بە کەسێک"""),
                    SentencesRow(
                      englishText:
                          """They were all thirsty so I gave them a drink.""",
                      kurdishText:
                          """ھەموویان تینوو بن بۆیە خواردنەوەیەکم پێدان.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """Give me your name and address.""",
                              kurdishText: """ناو و ناونیشانتم پێبدە.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We've been given a 2 per cent pay increase.""",
                              kurdishText:
                                  """ھەموومان زیادکردنی مووچەی ٢ لە سەدمان پێدراوە.""",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I was hoping you would give me a job.""",
                              kurdishText:
                                  """ھیوای ئەوەم ھەبوو کارێکم پێبدەیت.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He was given a new heart in a five-hour operation.""",
                              kurdishText:
                                  """لە نەشتەرگەرییەکی پێنج کاتژمێریدا دڵێکی تازەی بۆ دانرا.""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Give me some time to decide.""",
                              kurdishText: """ھەندێک کاتم پێبدە بۆ بڕیاردان.""",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We should at least give him the opportunity to explain why he did this.""",
                              kurdishText:
                                  """بەلایەنی کەمەەو دەبێت ھەلی ئەوەی پێبدەین کە بۆچی ئەمەی کرد.""",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """This should give you some idea of the extent of the problem.""",
                              kurdishText:
                                  """ئەمە دەبێت ھەندێک تێگەشتنت پێ بدات لەسەر ئاستی کێشەکە.""",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We'll give you all the help we can.""",
                              kurdishText:
                                  """ھەموو یارمەتییەکەت پێدەدەین کە لە دەستمان بێت.""",
                              onPressedBritish: () => speaksentence19("en-GB"),
                              onPressedAmerican: () => speaksentence19("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She wants a job that gives her more responsibility.""",
                              kurdishText:
                                  """کارێکی دەوێت کە بەرپرسیاریەتیی زیاتری پێبدات.""",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I'll give you (= allow you to have) ten minutes to prepare your answer.""",
                              kurdishText:
                                  """دە خولەکت پێدەدەم وەڵامەکەم ئامادە بکەیت.""",
                              onPressedBritish: () => speaksentence21("en-GB"),
                              onPressedAmerican: () => speaksentence21("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He gives Italian lessons to his colleagues.""",
                              kurdishText:
                                  """وانەی زمانی ئیتالی بە ھاوڕێکانی دەڵێتەوە.""",
                              onPressedBritish: () => speaksentence22("en-GB"),
                              onPressedAmerican: () => speaksentence22("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The reforms should give a better chance to the less able children.""",
                              kurdishText:
                                  """چاکسازییەکان دەبێت شانسێکی باشتر بدات بەو منداڵانەی کەمتر بە توانان.""",
                              onPressedBritish: () => speaksentence23("en-GB"),
                              onPressedAmerican: () => speaksentence23("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """She gave some helpful advice.""",
                              kurdishText: """ھەندێک ڕاوێژی بەسوودی بەخشی.""",
                              onPressedBritish: () => speaksentence24("en-GB"),
                              onPressedAmerican: () => speaksentence24("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She gives the impression of being very busy.""",
                              kurdishText: """وەھا خۆی دەردەخات کە سەرقاڵە.""",
                              onPressedBritish: () => speaksentence25("en-GB"),
                              onPressedAmerican: () => speaksentence25("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I was asked to give evidence at the trial.""",
                              kurdishText:
                                  """داوام لێکرا بەڵگە پێشکەش بکەم دانیشتنەکەی دادگا.""",
                              onPressedBritish: () => speaksentence26("en-GB"),
                              onPressedAmerican: () => speaksentence26("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She gave me some medicine that sent me off to sleep.""",
                              kurdishText:
                                  """ھەندێک دەرمانی پێمدا کە خەواندمی.""",
                              onPressedBritish: () => speaksentence27("en-GB"),
                              onPressedAmerican: () => speaksentence27("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We want to give you the best possible care.""",
                              kurdishText:
                                  """دەمانەوێت باشترین چاودێریت پێبدەین.""",
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
                            """٤. (کردار) بەخشینی پارە بۆ یارمەتیدانی خەڵکی"""),
                    SentencesRow(
                      englishText:
                          """We need your help—please give generously.""",
                      kurdishText:
                          """پێویستیمان بە یارمەتیتە ـ تکایە بە دەستکراوەیی ببەخشە.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They both gave regularly to charity.""",
                      kurdishText:
                          """ھەردووکیان زووخوو دەیانبەخشی بە دەزگای خێرخوازی.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A lot of people give money to good causes.""",
                      kurdishText: """زۆر کەس پارە دەبەخشن بە دۆزە باشەکان.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) پارەدان بۆ کردن یان ھەبوونی شتێک"""),
                    SentencesRow(
                      englishText:
                          """I'll give you £100 and not a penny more!""",
                      kurdishText: """١٠٠ پاوەند و یەک قڕان زیاترت پێنادەم.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """How much will you give me for the car?""",
                      kurdishText: """چەندم پێ دەدەیت بۆ ئۆتۆمبێلەکە.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'd give anything to see him again.""",
                      kurdishText:
                          """ھەموو شتێک دەبەخشم بۆ دووبارە بینینەوەی.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) لەگەڵ ناو بەکاردێت بۆ باسکردنی کارێکی دیاریکراو، و ھەمان واتا ناوەکە دەدا بە کرداری """),
                    SentencesRow(
                      englishText:
                          """She gave a shrug of her shoulders (= shrugged).""",
                      kurdishText: """شانەکانی ڕاوەشاند.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """He turned to us and gave a big smile (= smiled broadly).""",
                              kurdishText:
                                  """ڕووی لێمان کرد و پێکەنینێکی گەورەی کرد.""",
                              onPressedBritish: () => speaksentence36("en-GB"),
                              onPressedAmerican: () => speaksentence36("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She looked up from her work and gave a yawn (= yawned).""",
                              kurdishText:
                                  """سەری ھەڵبڕی لە کارەکەی و باوێشکێکی دا.""",
                              onPressedBritish: () => speaksentence37("en-GB"),
                              onPressedAmerican: () => speaksentence37("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He gave a loud cry (= cried out loudly) and fell to the floor.""",
                              kurdishText:
                                  """ھاوارێکی گەورەی کرد و کەوتە سەر زەوییەکە.""",
                              onPressedBritish: () => speaksentence38("en-GB"),
                              onPressedAmerican: () => speaksentence38("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Her work has given pleasure to (= pleased) millions of readers.""",
                              kurdishText:
                                  """کارەکەی خۆشی بە ملیۆنان خوێنەر دا.""",
                              onPressedBritish: () => speaksentence39("en-GB"),
                              onPressedAmerican: () => speaksentence39("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He gave her a kiss (= kissed her).""",
                              kurdishText: """ماچێکی کرد.""",
                              onPressedBritish: () => speaksentence40("en-GB"),
                              onPressedAmerican: () => speaksentence40("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I have to admit that the news gave us a shock (= shocked us).""",
                              kurdishText:
                                  """دانی پێدا دەنێم کە ھەواڵەکە شۆکی کردین.""",
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
                            """٧. (کردار) درووستکردنی ھەستێکی دیاریکراو لای کەسێک"""),
                    SentencesRow(
                      englishText:
                          """All that driving has given me a headache.""",
                      kurdishText: """ئەو ھەموو شۆفێرییە سەرێشەی پێداوم.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) پەیوەندی کردن بە کەسێکەوە"""),
                    SentencesRow(
                      englishText: """Give me a call tomorrow.""",
                      kurdishText: """سبەی پەیوەندیم پێوە بکە.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'll give you a ring.""",
                      kurdishText: """پەیوەندیت پێوە دەکەم.""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (کردار) بڕیاردان لە ئاستی شتێک"""),
                    SentencesRow(
                      englishText:
                          """I give it ten out of ten for originality.""",
                      kurdishText: """بۆ ڕەسەنایەتی دە لە دەی پێدەدەم.""",
                      onPressedBritish: () => speaksentence45("en-GB"),
                      onPressedAmerican: () => speaksentence45("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He virtually never gives a grade of less than C.""",
                      kurdishText:
                          """تا ڕادەیەکی زۆر ھەرگیز نمرەی لە C کەمتر نادات.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I gave top marks to her essay.""",
                      kurdishText: """بەرزترین نمرەم دا بە داڕشتنەکەی.""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (کردار) گواستنەوەی نەخۆشییەک بۆ کەسێک"""),
                    SentencesRow(
                      englishText: """You've given me your cold.""",
                      kurdishText: """ھەڵامەتەکەتت تووشم کردووە.""",
                      onPressedBritish: () => speaksentence48("en-GB"),
                      onPressedAmerican: () => speaksentence48("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She'd given the bug to all her colleagues.""",
                      kurdishText: """نەخۆشییەکەی دابوو بە ھەموو ھاوڕێکانی.""",
                      onPressedBritish: () => speaksentence49("en-GB"),
                      onPressedAmerican: () => speaksentence49("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (کردار) ئەوەی سزایەک تووشی کەسێک بکەیت"""),
                    SentencesRow(
                      englishText:
                          """The judge gave him a nine-month suspended sentence.""",
                      kurdishText:
                          """دادوەرەکە سزایەکی نۆ مانگی ھەڵپەسێردراوی پێدا.""",
                      onPressedBritish: () => speaksentence50("en-GB"),
                      onPressedAmerican: () => speaksentence50("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We discussed what punishment should be given to the boys.""",
                      kurdishText:
                          """باسمان لەوە کرد چی سزایەک بدەین بە کوڕەکان.""",
                      onPressedBritish: () => speaksentence51("en-GB"),
                      onPressedAmerican: () => speaksentence51("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (کردار) ڕێکخستنی ئاھەنگێک و بانگھێشتنی خەڵکی"""),
                    SentencesRow(
                      englishText:
                          """We're giving a party to celebrate our silver wedding.""",
                      kurdishText:
                          """ئاھەنگێک ساز دەکەین بۆ پیرۆزکردنی ٢٥ ــھەمین ساڵیادی ھاوسەرگیریمان.""",
                      onPressedBritish: () => speaksentence52("en-GB"),
                      onPressedAmerican: () => speaksentence52("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (کردار) ئەنجامدانی نمایشێک لە پێش خەڵکی"""),
                    SentencesRow(
                      englishText:
                          """He gave a rousing performance of the Bob Marley song.""",
                      kurdishText:
                          """نمایشێکی کاریگەری گۆرانییەکەی بۆب مارلی پێشکەش کرد.""",
                      onPressedBritish: () => speaksentence53("en-GB"),
                      onPressedAmerican: () => speaksentence53("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The President will be giving a press conference this afternoon.""",
                      kurdishText:
                          """سەرۆک ئەم دوا نیوەڕۆیە کۆنفرانسێکی ڕۆژنامەنووسی ساز دەکات.""",
                      onPressedBritish: () => speaksentence54("en-GB"),
                      onPressedAmerican: () => speaksentence54("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (کردار) بەکارھێنانی کات، وزە. ھتد بۆ شتێک"""),
                    SentencesRow(
                      englishText: """I gave the matter a lot of thought.""",
                      kurdishText: """بیرکردنەوەی زۆرم دا بە کێشەکە.""",
                      englishNote:
                          """Also: I gave a lot of thought to the matter.""",
                      onPressedBritish: () => speaksentence55("en-GB"),
                      onPressedAmerican: () => speaksentence55("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The government has given top priority to reforming the tax system.""",
                      kurdishText:
                          """حکومەت پێشینەیی باڵای داوە بە چاکسازیی سیستەمی باج.""",
                      onPressedBritish: () => speaksentence56("en-GB"),
                      onPressedAmerican: () => speaksentence56("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٥. (کردار) پێشبینی کردنی ئەوەی شتێک بۆ ماوەیەکی دیاریکراو بەردەوام دەبێت"""),
                    SentencesRow(
                      englishText:
                          """That marriage won't last. I'll give them two years at the outside.""",
                      kurdishText:
                          """ئەو ھاوسەرگیرییەکە بەردەوام نابێت. ئەوپەڕی دوو ساڵی پێدەدەم.""",
                      onPressedBritish: () => speaksentence57("en-GB"),
                      onPressedAmerican: () => speaksentence57("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٦. (کردار) ئەوەی بڕیار بدەیت شوێنی تۆپ لە یاریگادا کوێیە یان گؤڵێک حساب بووە"""),
                    SentencesRow(
                      englishText: """The umpire gave the ball out.""",
                      kurdishText:
                          """ناوبژیوانە بڕیاری دا تۆپەکە لە دەرەوە بوو.""",
                      onPressedBritish: () => speaksentence58("en-GB"),
                      onPressedAmerican: () => speaksentence58("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The ref gave the goal.""",
                      kurdishText: """ناوبژیوانەکە گۆڵەکەی حساب کرد.""",
                      onPressedBritish: () => speaksentence59("en-GB"),
                      onPressedAmerican: () => speaksentence59("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٧. (کردار) چەمانەوە یان کشان لەژێر فشاردا"""),
                    SentencesRow(
                      englishText:
                          """The branch began to give under his weight.""",
                      kurdishText: """لقەکە لەژێر ھێزیدا چەمایەوە.""",
                      onPressedBritish: () => speaksentence60("en-GB"),
                      onPressedAmerican: () => speaksentence60("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٨. (کردار) ئەوەی بیرکردنەوەت بگۆڕیت یان واز بھێنیت لە ھەندێک لە خواستەکانت """),
                    SentencesRow(
                      englishText: """You're going to have to give a little.""",
                      kurdishText: """دەبێت کەمێک سازش بکەیت.""",
                      onPressedBritish: () => speaksentence61("en-GB"),
                      onPressedAmerican: () => speaksentence61("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٩. (ناو) توانای شتێک بۆ چەمانەوە یان کشان لەژێر فشاردا"""),
                    SentencesRow(
                      englishText:
                          """The shoes may seem tight at first, but the leather has plenty of give in it.""",
                      kurdishText:
                          """پێڵاوەکان ڕەنگە لە سەرەتادا توند دەربکەون، بەڵام چەرمەکە کشی زۆری دێت.""",
                      onPressedBritish: () => speaksentence62("en-GB"),
                      onPressedAmerican: () => speaksentence62("en-US"),
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
const String _videoIdend = 'hFZFjoX2cGg';
const double _startSecondsend = 106;
const String _videoIdone = 'lVoGZiL-kns';
const double _startSecondsone = 33;
const String _videoIdtwo = 'xkYved-ucGg';
const double _startSecondstwo = 378;
const String _videoIdthree = 'khOUvmOQExc';
const double _startSecondsthree = 571;
const String _videoIdfour = 'r8E1Hq5tktg';
const double _startSecondsfour = 37;
const String _videoIdfive = '4J0xFUyz1nw';
const double _startSecondsfive = 432;

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