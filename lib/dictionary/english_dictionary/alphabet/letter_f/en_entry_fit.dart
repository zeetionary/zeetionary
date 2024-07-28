import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfit extends StatefulWidget {
  const EnglishEntryfit({super.key});

  @override
  State<EnglishEntryfit> createState() => _EnglishEntryfitState();
}

class _EnglishEntryfitState extends State<EnglishEntryfit> {
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
- Verb: fit (derived forms: fitting, fits, fitted)
1. Be agreeable or acceptable to (= suit, accommodate)
"This fits my needs";
 
2. Be the right size or shape; fit correctly or as desired (= go)
"This piece won't fit into the puzzle";
 
3. Change to the appropriate size; tailor
"fit a dress"; "He fitted other pieces of paper to his cut-out"
 
4. Insert or adjust several objects or people
"Can you fit the toy into the box?"; "This man can't fit himself into our work environment"
 
5. Be compatible, similar or consistent; coincide in their characteristics (= match, correspond, check, jibe, gibe, tally, agree, marry up, marry)
"The suspect's fingerprints don't fit those on the gun";
 
6. Conform to some shape or size
"How does this shirt fit?"
 
7. Provide with (something) usually for a specific purpose (= equip, fit out, outfit)
"The expedition was fitted with proper clothing, food, and other necessities";
 
8. Obtain something that is wanted, needed or required (= conform to, meet, satisfy, fill, fulfill [N. Amer], fulfil [Brit, Cdn])
 
9. Make correspond or harmonize (= match)
"fit my sweater";

- Adjective: fit (derived forms: fittest, fitter)
1. (usually followed by 'to' or 'for') on the point of or strongly disposed (= primed, set)
"in no fit state to continue"; "fit to drop"; "laughing fit to burst"; "she was fit to scream";
 
2. Meeting adequate standards for a purpose
"a fit subject for discussion"; "it is fit and proper that you be there"; "water fit to drink"; "fit for duty"; "do as you see fit to"
 
3. Physically and mentally sound or healthy
"felt relaxed and fit after their holiday"; "keeps fit with diet and exercise"

- Noun: fit (derived forms: fits)
1. A display of bad temper (= tantrum, scene, conniption [N. Amer, informal], meltdown [informal], hissy fit [informal])
"he had a fit";
 
2. A sudden uncontrollable attack (= paroxysm, convulsion)
"a fit of coughing";
 
3. The manner in which something fits
"I admired the fit of her coat"
 
4. A sudden flurry of activity (often for no obvious reason) (= burst)
"a fit of housecleaning";
""",
  );

  final String keyword = "fit";
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
    await flutterTts.speak("""fit""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(""" tried the dress on but it didn't fit.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""That jacket fits well.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""My shoes fit perfectly.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The key doesn't fit the lock.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""I had to have the dress altered to fit my slimmer body.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""I'd like to have a desk in the room but it won't fit.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""All the kids will fit in the back of the car.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""This device is small enough to fit in a pocket.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""That chair should fit into the room easily.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """All the windows were too small for an adult to fit through.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""I'm going to be fitted for my wedding dress today.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""They fitted a smoke alarm to the ceiling.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The rooms were all fitted with smoke alarms.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""How do these two parts fit together?""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We fitted together the pieces of the puzzle.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The glass fits on top of the jug to form a lid.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Something doesn't quite fit here.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""His pictures don't fit into any category.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The words fit perfectly with the music.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The facts certainly fit your theory.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The punishment ought to fit the crime.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We tailor our programs to fit their needs.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Most organizations do not fit this model.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I was told that I didn't fit the criteria.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""His experience fitted him perfectly for the job.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""She was well fitted to the role of tragic heroine.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Top athletes have to be very fit.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Hiking helps keep him physically fit.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""All the recruits seemed fit and healthy.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """He is back in training after his back injury but is not yet considered match fit.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""He won't be fit to play in the match on Saturday.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The judge concluded that the criminal was fit to stand trial.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""He's had a bad cold and isn't fit enough for work yet.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""After two days, Douglas was declared fit for duty.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She won't compete unless she's fully fit.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The food was not fit for human consumption.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""It was a meal fit for a king.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The children seem to think I'm only fit for cooking and washing!""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Your car isn't fit to be on the road!""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""This is not a fit place for you to live.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """He was not considered a fit and proper person to run a bank.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Schools should be allowed to operate as they deem fit.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""They worked until they were fit to drop.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I've eaten so much I'm fit to burst.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""I met this really fit blonde in a club last night.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He suffered from headaches and fainting fits.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Her fits are now controlled by drugs.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She suffered a major fit last year.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He had us all in fits with his jokes.""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She collapsed in a fit of laughter.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He pushed the referee in a fit of temper.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He suffers from fits of depression.""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The shoe has a special strap to ensure a good fit.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The door was a poor fit and didn't open properly.""");
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
                      word: """fit""",
                      // alsoEnglishWord: "also: fit",
                      britshText: """IpaUK: /fɪt/""",
                      americanText: """IpaUS: /fɪt/""",
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
کوردی: باش، گونجاو، بەجێ، پێکەوتوو،	لێوەشاو، بەبەرژەوەند،	ساغ، سڵامەت،	(بریتانیا و نافەرمی) سەرنج‌ڕاکێش (لەباری سێکسی‌یەوە)، لێھاتن، فێ، گەشکە (نەخۆشی)،	بوورانەوە، لەسەرخۆچوون، بێھۆشی،	ڕق‌ھەستاوی، تووڕەیی،	لێھاتن، تەقینەوە، پیران، خش‌بردنەوە، پێکەنینی بێ‌ئیختیار
"""),
// With short examples define "fit", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) ئەوەی لە ڕووی قەبارە گونجاو بێت بۆ شتێک"""),
                    SentencesRow(
                      englishText: """ tried the dress on but it didn't fit.""",
                      kurdishText: """جلەکەم تاقیکردەوە بەڵام پڕبەرم نەبوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """That jacket fits well.""",
                      kurdishText: """چاکەتەکە باش دەگونجێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """My shoes fit perfectly.""",
                      kurdishText: """پێڵاوەکانم ڕێک دەگونجێت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The key doesn't fit the lock.""",
                      kurdishText: """کلیلەکە بە قوفڵەکە ناکات.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I had to have the dress altered to fit my slimmer body.""",
                      kurdishText:
                          """دەبوو جلەکە دەستکاری بکەم بۆ گونجان لەگەڵ لەشی باریکم.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) ئەوەی کە ئەندازە، جۆر، یان ژمارەی گونجاو بێت بۆ شوێنێک"""),
                    SentencesRow(
                      englishText:
                          """I'd like to have a desk in the room but it won't fit.""",
                      kurdishText:
                          """حەز دەکەم دێسکێکم لە ژوورەکە ھەبێت بەڵام جێگا نابێت.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """All the kids will fit in the back of the car.""",
                      kurdishText:
                          """ھەموو منداڵەکان لە دواوەی ئۆتۆمبێلەکە جێگایان دەبێتەوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This device is small enough to fit in a pocket.""",
                      kurdishText:
                          """ئامێرەکە ھێندە بچووکە لە گیرفانێک جێگای دەبێتەوە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """That chair should fit into the room easily.""",
                      kurdishText:
                          """کورسییەکە بە ئاسانی دەبێت لە ژوورەکە جێگای ببێت.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """All the windows were too small for an adult to fit through.""",
                      kurdishText:
                          """تەواوی پەنجەرەکان زۆر بچووک بوون بۆ پێگەشطتوویەک کە بچێت بە ناویدا.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) جلکردنە بەر کەسێک و ئەوەی وابکەیت گونجاو بێت بۆی """),
                    SentencesRow(
                      englishText:
                          """I'm going to be fitted for my wedding dress today.""",
                      kurdishText: """جلی ھاوسەرگیرییەکەمم لەبەر دەکرێت.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) دانان یان گونجاندنی شتێک لە شوێنێکدا"""),
                    SentencesRow(
                      englishText:
                          """They fitted a smoke alarm to the ceiling.""",
                      kurdishText: """زەنگی دووکەڵێکیان لە بنبانەکە دانا.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The rooms were all fitted with smoke alarms.""",
                      kurdishText:
                          """ژوورەکان ھەموویان زەنگی دووکەڵیان لێ دانرابوو.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (کردار) دانانی شتێک لە شوێنی گونجاو"""),
                    SentencesRow(
                      englishText: """How do these two parts fit together?""",
                      kurdishText: """چۆن ئەم دوو بەشە پێکەوە دەگونجێن؟""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We fitted together the pieces of the puzzle.""",
                      kurdishText: """پارچەکانی مەتەڵەکەمان پێکەوە نا.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The glass fits on top of the jug to form a lid.""",
                      kurdishText: """شووشەکە لەسەر دۆڵکەکە دەگونجێت.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) ئەوەی گونجاو بێت یان یەکبگرێتەوە لەگەڵ شتێک"""),
                    SentencesRow(
                      englishText: """Something doesn't quite fit here.""",
                      kurdishText: """شتێک لێرە یەکناگرێتەوە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """His pictures don't fit into any category.""",
                              kurdishText:
                                  """وێنەکانی سەر بە ھیچ پۆلێنێک نین.""",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The words fit perfectly with the music.""",
                              kurdishText:
                                  """وشەکە تەواو لەگەڵ میوزیکەکە دەگونجێن.""",
                              onPressedBritish: () => speaksentence19("en-GB"),
                              onPressedAmerican: () => speaksentence19("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The facts certainly fit your theory.""",
                              kurdishText:
                                  """ڕاستییەکان تەواو لەگەڵ بیردۆزەکەت دەگونجێن.""",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The punishment ought to fit the crime.""",
                              kurdishText:
                                  """سزاکە دەبێت گونجاو بێت بۆ تاوانەکە.""",
                              onPressedBritish: () => speaksentence21("en-GB"),
                              onPressedAmerican: () => speaksentence21("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We tailor our programs to fit their needs.""",
                              kurdishText:
                                  """پڕۆگرامەکانمان وەھا دادەنێین بۆ پێویستییەکانیان بگونجێت.""",
                              onPressedBritish: () => speaksentence22("en-GB"),
                              onPressedAmerican: () => speaksentence22("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Most organizations do not fit this model.""",
                              kurdishText:
                                  """زۆرینەی دامەزراوەکان بۆ ئەم نموونە ناگونجێن.""",
                              onPressedBritish: () => speaksentence23("en-GB"),
                              onPressedAmerican: () => speaksentence23("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I was told that I didn't fit the criteria.""",
                              kurdishText:
                                  """پێم گوترا کە مەرجەکانم تێدا نییە.""",
                              onPressedBritish: () => speaksentence24("en-GB"),
                              onPressedAmerican: () => speaksentence24("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) واکردنی ئەوەی کەسێک/شتێک گونجاو ببێت بۆ کار یان دۆخێکی دیاریکراو"""),
                    SentencesRow(
                      englishText:
                          """His experience fitted him perfectly for the job.""",
                      kurdishText: """ئەزموونەکەی تەواو بۆ کارەکە گونجاندی.""",
                      englishNote: "His experience fitted him to do the job.",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was well fitted to the role of tragic heroine.""",
                      kurdishText:
                          """تەواو گونجاو بوو بۆ ڕۆڵی ژنە پاڵەوانی تراژیدی.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ھاوەڵناو) تەندرووست و بەھێز، بەتایبەتی بەھۆی ڕاھێنانی بەردەوامەوە"""),
                    SentencesRow(
                      englishText: """Top athletes have to be very fit.""",
                      kurdishText: """وەرزشکارەکان دەبێت تەندرووست بن.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Hiking helps keep him physically fit.""",
                              kurdishText:
                                  """شاخەوانی ڕێگای دەدات لە ڕووی جەستەییەوە بە تەندرووست بمێنێت.""",
                              onPressedBritish: () => speaksentence28("en-GB"),
                              onPressedAmerican: () => speaksentence28("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """All the recruits seemed fit and healthy.""",
                              kurdishText:
                                  """ھەموو وەرگیراوەکان بەھێز و تەندرووست دیاربوون.""",
                              onPressedBritish: () => speaksentence29("en-GB"),
                              onPressedAmerican: () => speaksentence29("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He is back in training after his back injury but is not yet considered match fit (= fit enough to play in a match).""",
                              kurdishText:
                                  """گەڕاوەتەوە ڕاھێنان لە دوای پێکانی پشتی بەڵام ھێستا بە بەھێز بۆ یاری داناندرێت.""",
                              onPressedBritish: () => speaksentence30("en-GB"),
                              onPressedAmerican: () => speaksentence30("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He won't be fit to play in the match on Saturday.""",
                              kurdishText:
                                  """بەھێز نابێت بۆ یاری کردن لە یارییەکەی شەممە.""",
                              onPressedBritish: () => speaksentence31("en-GB"),
                              onPressedAmerican: () => speaksentence31("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The judge concluded that the criminal was fit to stand trial.""",
                              kurdishText:
                                  """دادوەرەکە بڕیاری دا کە تاوانبارەکە تەندرووستە بۆ ئامادەبوون لە دادگایی کردن.""",
                              onPressedBritish: () => speaksentence32("en-GB"),
                              onPressedAmerican: () => speaksentence32("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He's had a bad cold and isn't fit enough for work yet.""",
                              kurdishText:
                                  """ھەڵامەتێکی خراپی ھەبوو و ھێشتا ھێندە تەندرووست نییە کار بکات.""",
                              onPressedBritish: () => speaksentence33("en-GB"),
                              onPressedAmerican: () => speaksentence33("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """After two days, Douglas was declared fit for duty.""",
                              kurdishText:
                                  """لە دوای دوو ڕۆژ، دۆگلاس بە تەندرووست بۆ کارکردن دانرا.""",
                              onPressedBritish: () => speaksentence34("en-GB"),
                              onPressedAmerican: () => speaksentence34("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She won't compete unless she's fully fit.""",
                              kurdishText:
                                  """ڕکابەری ناکات مەگەر ئەوەی کە تەواو تەندرووست بێت.""",
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
                            """٩. (ھاوەڵناو) گونجاو؛ کە مەرجەکانی شتێکی تێدایە"""),
                    SentencesRow(
                      englishText:
                          """The food was not fit for human consumption.""",
                      kurdishText:
                          """خواردنەکە گونجاو نەبوو بۆ بەکارھێنانی مرۆڤ.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """It was a meal fit for a king (= of very good quality).""",
                              kurdishText: """ژەمێک بوو شایستە بە پاشا.""",
                              onPressedBritish: () => speaksentence37("en-GB"),
                              onPressedAmerican: () => speaksentence37("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The children seem to think I'm only fit for cooking and washing!""",
                              kurdishText:
                                  """منداڵەکان وەھا دەردەکەون وا بیربکەنەوە کە من تەنھا بۆ خواردن لێنان و ششتن باشم!""",
                              onPressedBritish: () => speaksentence38("en-GB"),
                              onPressedAmerican: () => speaksentence38("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Your car isn't fit to be on the road!""",
                              kurdishText:
                                  """ئۆۆتمبێلەکەت گونجاو نییە لەسەر شەقام بێت!""",
                              onPressedBritish: () => speaksentence39("en-GB"),
                              onPressedAmerican: () => speaksentence39("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """This is not a fit place for you to live.""",
                              kurdishText:
                                  """شوێنێکی گونجاو نییە بۆت لێی بژیت.""",
                              onPressedBritish: () => speaksentence40("en-GB"),
                              onPressedAmerican: () => speaksentence40("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He was not considered a fit and proper person to run a bank.""",
                              kurdishText:
                                  """بە کەسێکی باش و گونجاو دانەدەنرا بۆ بەڕێوەبردنی بانک.""",
                              onPressedBritish: () => speaksentence41("en-GB"),
                              onPressedAmerican: () => speaksentence41("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Schools should be allowed to operate as they deem fit.""",
                              kurdishText:
                                  """قوتابخانەکان دەبێت ڕێگایان پێبدرێت بەو شێوەیە کار بکەن کە بە گونجاوی دەزانن.""",
                              onPressedBritish: () => speaksentence42("en-GB"),
                              onPressedAmerican: () => speaksentence42("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (ھاوەڵناو) ھەبوونی ئامادەیی یان ئەگەری ئەوەی شتێکی زۆر بکەیت"""),
                    SentencesRow(
                      englishText:
                          """They worked until they were fit to drop (= so tired that they were likely to fall down).""",
                      kurdishText: """کاریان کرد تاوەکو لە‌پێ‌کەوتن.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I've eaten so much I'm fit to burst.""",
                      kurdishText: """زۆرم خواردووە کە نزیک لە تەقینەوەم.""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (ھاوەڵناو) کە لە ڕووی سێکسییەوە جوانە"""),
                    SentencesRow(
                      englishText:
                          """I met this really fit blonde in a club last night.""",
                      kurdishText:
                          """دوێنێ شەو قژ ژنە زەردێکی جوانم بینی لە یانەیەک.""",
                      onPressedBritish: () => speaksentence45("en-GB"),
                      onPressedAmerican: () => speaksentence45("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (ناو) دەرکەوتنی لەناکاوی نەخۆشییەک، وەک پەرکەم، کە کەسێک ھۆشی لەدەست دەدات و جەستەی ڕەنگە جووڵەی توندوتیژی دەبێت"""),
                    AlsoEnglishckblink(
                      textBeforeLink: "ھەروەھا: ",
                      linkText: "convulsion",
                      textAfterLink: ".",
                      onTap: () {
                        Routemaster.of(context).push("/english-fit/convulsion");
                      },
                    ),
                    SentencesRow(
                      englishText:
                          """He suffered from headaches and fainting fits.""",
                      kurdishText:
                          """دەیناڵاند بەدەست سەرێشە و فێی لەھۆشبەرەوە.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Her fits are now controlled by drugs.""",
                      kurdishText:
                          """فێیەکانی ئێستا بە دەرمان کۆنترۆڵ کراون.""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She suffered a major fit last year.""",
                      kurdishText: """ساڵی ڕابردوو تووشی فێیەکی گەورە بوو.""",
                      onPressedBritish: () => speaksentence48("en-GB"),
                      onPressedAmerican: () => speaksentence48("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (ناو) ماوەیەکی لەناکاو لە کۆکە یان پێکەنین کە ناتوانیت کۆنترۆڵی"""),
                    SentencesRow(
                      englishText:
                          """He had us all in fits (of laughter) with his jokes.""",
                      kurdishText: """بە نوکتەکانی ھەموومانی خستە پێکەنینن.""",
                      onPressedBritish: () => speaksentence49("en-GB"),
                      onPressedAmerican: () => speaksentence49("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She collapsed in a fit of laughter.""",
                      kurdishText: """کەوت بە زەوید لە پێکەنین لێھاتندا.""",
                      onPressedBritish: () => speaksentence50("en-GB"),
                      onPressedAmerican: () => speaksentence50("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٣. (ناو) ماوەیەکی کەم لە ھەستی زۆر بەھێز"""),
                    SentencesRow(
                      englishText:
                          """He pushed the referee in a fit of temper.""",
                      kurdishText:
                          """لە لێھاتنی تووڕەییدا پاڵی نا بە ناوبژیوانەکەوە.""",
                      onPressedBritish: () => speaksentence51("en-GB"),
                      onPressedAmerican: () => speaksentence51("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He suffers from fits of depression.""",
                      kurdishText: """بە دەست خەمۆکی لێھاتنەوە دەنالێنێت.""",
                      onPressedBritish: () => speaksentence52("en-GB"),
                      onPressedAmerican: () => speaksentence52("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (ناو) ئەو شێوەیەی کە جلێک یان شتێک دەگونجێت"""),
                    SentencesRow(
                      englishText:
                          """The shoe has a special strap to ensure a good fit.""",
                      kurdishText:
                          """پێڵاوەکە پشتێنەیەکی ھەبوو بۆ دڵنیایی لە گونجانی باش.""",
                      onPressedBritish: () => speaksentence53("en-GB"),
                      onPressedAmerican: () => speaksentence53("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The door was a poor fit and didn't open properly.""",
                      kurdishText:
                          """دەرگاکە گونجانی خراپی ھەبوو و باش نەدەکرایەوە.""",
                      onPressedBritish: () => speaksentence54("en-GB"),
                      onPressedAmerican: () => speaksentence54("en-US"),
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

const String _videoIdend = '_spuxXnul0U';
const double _startSecondsend = 307;
const String _videoIdone = 'HDntl7yzzVI';
const double _startSecondsone = 346;
const String _videoIdtwo = 'wUoxbm9MUc0';
const double _startSecondstwo = 247;
const String _videoIdthree = 'zqllxbPWKNI';
const double _startSecondsthree = 211;
const String _videoIdfour = 's3B-qp3U5G0';
const double _startSecondsfour = 524;
const String _videoIdfive = 'yjhibJ-OqxE';
const double _startSecondsfive = 472;

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