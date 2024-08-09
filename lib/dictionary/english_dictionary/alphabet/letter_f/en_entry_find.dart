import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfind extends StatefulWidget {
  const EnglishEntryfind({super.key});

  @override
  State<EnglishEntryfind> createState() => _EnglishEntryfindState();
}

class _EnglishEntryfindState extends State<EnglishEntryfind> {
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
- Verb: find (derived forms: found, finds, finding)
1. Come upon after searching; find the location of something that was missed or lost (= regain)
"Did you find your glasses?"; "I cannot find my gloves!";
 
2. Come upon, as if by accident; meet with (= happen, chance, bump, encounter)
"We find this idea in Plato";
 
3. Determine the existence, presence, or fact of (= detect, observe, discover, notice)
"We found traces of lead in the paint";
 
4. Establish after a calculation, investigation, experiment, survey, or study (= determine, find out, ascertain)
"The physicist who found the elusive particle won the Nobel Prize"; "find the product of two numbers";
 
5. Come to believe on the basis of emotion, intuition, or indefinite grounds (= feel)
"I find him to be obnoxious"; "I found the movie rather entertaining";
 
6. Perceive or be contemporaneous with (= witness, see)
"We found Republicans winning the offices";
 
7. Get something or somebody for a specific purpose (= line up, get hold, come up)
"I found this gadget that will serve as a bottle opener";
 
8. Make a discovery, make a new finding (= discover)
"Physicists believe they found a new elementary particle";
 
9. Obtain through effort or management
"She found the time and energy to take care of her aging parents"; "We found the money to send our sons to college"
 
10. Decide on and make a declaration about (= rule)
"find someone guilty";
 
11. Be subject to a specified treatment or analysis (= receive, get, obtain, incur)
"These aspects of civilization do not find expression or receive an interpretation";
 
12. Perceive oneself to be in a certain condition or place
"I found myself in a difficult situation"; "When he woke up, he found himself in a hospital room"
 
13. Get or get back; recover the use of (= recover, retrieve, regain)
"She found her voice and replied quickly";
 
14. Succeed in reaching; arrive at
"The arrow found its mark"
 
15. Accept and make use of one's personality, abilities, and situation (= find oneself)
"My son went to Berkeley to find himself";

Noun: find (derived forms: finds)
1. A productive insight (= discovery, breakthrough)
 
2. The act of discovering something (= discovery, uncovering)
""",
  );

  final String keyword = "find";
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

    await flutterTts.speak("""find""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Look what I've found!""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We've found a great new restaurant near the office.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""A man out walking his dog found the body in a ditch.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They found a car abandoned on top of the cliff.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I'm trying to find my glasses.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I eventually found them under the bed.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Found it! I've been looking for this for weeks!""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Can you help me find my dog?""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""We found a way out.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I managed to find a solution to the problem.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""They found no evidence to support this claim.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """Our website is the place to find answers to all your questions.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""He's struggling to find work.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Scientists are still trying to find a cure for cancer.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Have they found anyone to replace her yet?""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I'll find that information for you.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I can't find my keys.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """I thought I'd lost my wallet but I found it under my desk.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Can you find me my bag?""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The child was eventually found safe and well.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I think I've found a friend.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""It's so good when you find someone you can talk to.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Police found weapons in the house.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Letters found among his belongings may hold a clue.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I find (that) it pays to be honest.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""A study found that green tea could be beneficial.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""You'll find your opinions change as you get older.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""They found him to be charming.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Researchers found this to be the most effective method.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Her blood was found to contain poison.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""If you are found to have lied, you can be charged.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The report found that 30% of the firms studied had failed within a year.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Here are some tips which I hope you'll find helpful.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Hopefully we'll find the ground a bit firmer today.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""We found the whole thing a farce.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The results were found to vary.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""You may find it hard to accept your illness.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Do women find it more difficult to ask for a rise?""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I found the book very interesting.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She finds it a strain to meet new people.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I find it interesting that they don't get on.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I find it amazing that they're still together.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""He knows that women find him attractive.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """We apologise if you found any of these comments offensive.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She didn't find the joke very funny.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""These flowers are found only in Africa.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Further details can be found on our website.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""You'll find this style of architecture all over the town.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""These pests can be found in almost every garden.""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Folacin is a B vitamin found in many vegetables.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """This is over 100 times the amount of chlorine found in drinking water.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She woke up and found herself in a hospital bed.""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We came home and found him asleep on the sofa.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I found myself forced to act.""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""He looked up to find her watching him.""");
  }

  Future<void> speaksentence56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I suddenly found myself running down the street.""");
  }

  Future<void> speaksentence57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She was surprised to find that everyone had left.""");
  }

  Future<void> speaksentence58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""We arrived to find the room full of people.""");
  }

  Future<void> speaksentence59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""They found the building completely deserted.""");
  }

  Future<void> speaksentence60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She was found dead in her bed.""");
  }

  Future<void> speaksentence61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""How are we going to find £10  000 for a car?""");
  }

  Future<void> speaksentence62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """I keep meaning to write, but never seem to find (the) time.""");
  }

  Future<void> speaksentence63(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I found the courage to speak.""");
  }

  Future<void> speaksentence64(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Water will always find its own level.""");
  }

  Future<void> speaksentence65(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """Most of the money finds its way to the people who need it.""");
  }

  Future<void> speaksentence66(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I hope this letter finds you in good health.""");
  }

  Future<void> speaksentence67(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The court found in her favour.""");
  }

  Future<void> speaksentence68(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""This is an important archaeological find.""");
  }

  Future<void> speaksentence69(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """He made his most spectacular finds in the Valley of the Kings.""");
  }

  Future<void> speaksentence70(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """A lucky find is telling us a lot about life 10 000 years ago.""");
  }

  Future<void> speaksentence71(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""To date the site has yielded many interesting finds.""");
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
                      word: """find""",
                      // alsoEnglishWord: "also: find",
                      britshText: """IpaUK: /faɪnd/""",
                      americanText: """IpaUS: /faɪnd/""",
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
کوردی: دۆزینەوە، دیتنەوە، پەیداکردن، دۆزمان،	(شتێکی) دۆزراوە، دیتراوە، دۆزەوە، دۆزە
"""),
                    const DefinitionKurdish(
                        text: """١. (کردار) دۆزینەوەی شتێک بە ڕێکەوت"""),
                    SentencesRow(
                      englishText: """Look what I've found!""",
                      kurdishText: """ببینە چیم دۆزییەوە!""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """We've found a great new restaurant near the office.""",
                              kurdishText:
                                  """چێشتخانەیەکی تازەی باشمان لە نزیک ئۆفیسەکە دۆزیوەتەوە.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """A man out walking his dog found the body in a ditch.""",
                              kurdishText:
                                  """پیاوێک کە لە دەرەوە پیاسەی بە سەگەکەی دەکرد لاشەکەی لە ئاوەڕێیەک دۆزییەوە.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They found a car abandoned on top of the cliff.""",
                              kurdishText:
                                  """ئۆتۆمبێلێکی جێھێڵدراویان دۆزییەوە لە لوتکەی لاپاڵەکە.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """I think I've found a friend.""",
                              kurdishText: """پێموایە ھاوڕێیەکم دۆزیوەتەوە.""",
                              onPressedBritish: () => speaksentence21("en-GB"),
                              onPressedAmerican: () => speaksentence21("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It's so good when you find someone you can talk to.""",
                              kurdishText:
                                  """زۆر خۆشە کە کەسێک دەدۆزیتەوە دەتوانیت قسەی لەگەڵ بکەیت.""",
                              onPressedBritish: () => speaksentence22("en-GB"),
                              onPressedAmerican: () => speaksentence22("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Police found weapons in the house.""",
                              kurdishText: """پۆلیس چەکی لە ماڵەکە دۆزییەوە.""",
                              onPressedBritish: () => speaksentence23("en-GB"),
                              onPressedAmerican: () => speaksentence23("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Letters found among his belongings may hold a clue.""",
                              kurdishText:
                                  """ئەو نامانەی لە شتەکانی دۆزرانەوە ڕەنگە سەرەداوێکیان تێدا بێت.""",
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
                            """٢. (کردار) دۆزینەوەی شتێک بە گەڕان، لێکۆڵینەوە، یان بیرکردنەوە"""),
                    SentencesRow(
                      englishText: """We found a way out.""",
                      kurdishText: """ڕێگایەکی چوونە دەرەوەمان دۆزییەوە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I managed to find a solution to the problem.""",
                      kurdishText: """توانیم چارەسەرێک بۆ کێشەکە بدۆزمەوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """They found no evidence to support this claim.""",
                              kurdishText:
                                  """ھیچ بەڵگەیەکیان بۆ پشتگیری ئەم بانگەشەیە نەدۆزییەوە.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Our website is the place to find answers to all your questions.""",
                              kurdishText:
                                  """وێبسایتەکەمان شوێنی دۆزینەوەی وەڵامە بۆ ھەموو پرسیارەکانت.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """He's struggling to find work.""",
                              kurdishText: """کێشەی ھەیە لە دۆزینەوەی کاردا.""",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Scientists are still trying to find a cure for cancer.""",
                              kurdishText:
                                  """زاناکان ھێشتا لە ھەوڵدان بۆ دۆزینەوەی چارەسەرێک بۆ شێرپەنجە.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Have they found anyone to replace her yet?""",
                              kurdishText:
                                  """کەسیان دۆزیوەتەوە بۆ شوێنگرتنەوەی؟""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I'll find that information for you.""",
                              kurdishText: """ئەو زانیارییەت بۆ دەدۆزمەوە.""",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (کردار) دۆزینەوەی شتێک لە دوای ونبوونی"""),
                    SentencesRow(
                      englishText: """I can't find my keys.""",
                      kurdishText: """ناتوانم کلیلەکانم بدۆزمەوە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I thought I'd lost my wallet but I found it under my desk.""",
                      kurdishText:
                          """وام بیرکردەوە کە جزدانەکەم ونکردووە، بەڵام لەژێر دێسکەکەم دۆزیمەوە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """Can you find me my bag?""",
                              kurdishText:
                                  """دەتوانیت جانتاکەمم بۆ بدۆزیتەوە؟""",
                              onPressedBritish: () => speaksentence19("en-GB"),
                              onPressedAmerican: () => speaksentence19("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The child was eventually found safe and well.""",
                              kurdishText:
                                  """منداڵەکە لە کۆتاییدا بە سەلامەتی و باشی دۆزرایەوە.""",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """I'm trying to find my glasses.""",
                              kurdishText:
                                  """ھەوڵ دەدەم چاویلکەکەم بدۆزمەوە.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I eventually found them under the bed.""",
                              kurdishText:
                                  """لە کۆتاییدا لەژێر جێخەوەکە دەزیمنەوە.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Found it! I've been looking for this for weeks!""",
                              kurdishText:
                                  """دۆزیمەوە! چەندین ھەفتەیە بە شوێن ئەمەدا دەگەڕێم.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Can you help me find my dog?""",
                              kurdishText:
                                  """دەتوانیت یارمەتیم بدەیت سەگەکەم بدۆزمەوە؟""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) زانینی ئەوەی شتێک ڕاستە لە دوای ئەوەی تامت کردووە، تاقیت کردووەتەوە، یان ئەزموونت کردووە"""),
                    SentencesRow(
                      englishText: """I find (that) it pays to be honest.""",
                      kurdishText: """دەرکەوتووە بۆم کە ڕاستگۆیی بەسوودە.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """A study found that green tea could be beneficial.""",
                              kurdishText:
                                  """توێژینەوەیەک دۆزییەوە کە چای سەوز دەکرێت بەسوود بێت.""",
                              onPressedBritish: () => speaksentence26("en-GB"),
                              onPressedAmerican: () => speaksentence26("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """You'll find your opinions change as you get older.""",
                              kurdishText:
                                  """کە بەتەمەن دەبیت دەزانیت کە بۆچوونەکانت دەگۆڕێن.""",
                              onPressedBritish: () => speaksentence27("en-GB"),
                              onPressedAmerican: () => speaksentence27("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """They found him to be charming.""",
                              kurdishText: """بە کەشخە ھاتە بەرچاویان.""",
                              onPressedBritish: () => speaksentence28("en-GB"),
                              onPressedAmerican: () => speaksentence28("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Researchers found this to be the most effective method.""",
                              kurdishText:
                                  """توێژەران ئەمەیان بە کاریگەرترین ڕێگا بینی.""",
                              onPressedBritish: () => speaksentence29("en-GB"),
                              onPressedAmerican: () => speaksentence29("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Her blood was found to contain poison.""",
                              kurdishText:
                                  """خوێنەکەی وەھا بینرا کە ژەھری تێدا بێت.""",
                              onPressedBritish: () => speaksentence30("en-GB"),
                              onPressedAmerican: () => speaksentence30("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """If you are found to have lied, you can be charged.""",
                              kurdishText:
                                  """ئەگەر بدۆزرێیتەوە کە درۆت کردووە، دەکرێت تاوانبار بکرێیت.""",
                              onPressedBritish: () => speaksentence31("en-GB"),
                              onPressedAmerican: () => speaksentence31("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The report found that 30% of the firms studied had failed within a year.""",
                              kurdishText:
                                  """ڕاپۆرتەکە دۆزییەوە کە ٣٠٪ ـی ئەو کۆمپانیایانەی لێکۆڵینەوەیان لێکرا لە ماوەی ساڵێکدا شکستیان ھێنا.""",
                              onPressedBritish: () => speaksentence32("en-GB"),
                              onPressedAmerican: () => speaksentence32("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Here are some tips which I hope you'll find helpful.""",
                              kurdishText:
                                  """ئەمانە ژمارەیەک تێبینین کە بە ھیوام بە بەسوود بیانبینیت.""",
                              onPressedBritish: () => speaksentence33("en-GB"),
                              onPressedAmerican: () => speaksentence33("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Hopefully we'll find the ground a bit firmer today.""",
                              kurdishText:
                                  """خۆشبەختانە ئەمڕۆ زەوییەکە بە کەمێک توندتر دەبینین.""",
                              onPressedBritish: () => speaksentence34("en-GB"),
                              onPressedAmerican: () => speaksentence34("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We found the whole thing a farce.""",
                              kurdishText:
                                  """تەواوی شتەکەمان بە گاڵتەجاڕی ھاتە پێش چاو.""",
                              onPressedBritish: () => speaksentence35("en-GB"),
                              onPressedAmerican: () => speaksentence35("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The results were found to vary.""",
                              kurdishText: """زانرا کە ئەنجامەکان جیاوازن.""",
                              onPressedBritish: () => speaksentence36("en-GB"),
                              onPressedAmerican: () => speaksentence36("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) ھەبوونی ھەست یان بۆچوونی دیاریکراو لەسەر شتێک"""),
                    SentencesRow(
                      englishText:
                          """You may find it hard to accept your illness.""",
                      kurdishText:
                          """بە سەختی دەبینیت نەخۆشییەکەت پەسەند بکەیت.""",
                      englishNote:
                          "Also: You may find your illness hard to accept.",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Do women find it more difficult to ask for a rise?""",
                              kurdishText:
                                  """ئایا ژنان بە سەختتری دەبینن داوای پلە بەرزکردنەوە بکەن؟""",
                              onPressedBritish: () => speaksentence38("en-GB"),
                              onPressedAmerican: () => speaksentence38("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I found the book very interesting.""",
                              kurdishText:
                                  """کتێبەکە زۆر بە سەرنجڕاکێش دەبینم.""",
                              onPressedBritish: () => speaksentence39("en-GB"),
                              onPressedAmerican: () => speaksentence39("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She finds it a strain to meet new people.""",
                              kurdishText:
                                  """بە سەختی دەبینێت کەسی تازە بناسێت.""",
                              englishNote:
                                  "Also: She finds meeting new people a strain.",
                              onPressedBritish: () => speaksentence40("en-GB"),
                              onPressedAmerican: () => speaksentence40("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I find it interesting that they don't get on.""",
                              kurdishText:
                                  """بە سەرنجڕاکێشی دەبینم کە ناگونجێن.""",
                              onPressedBritish: () => speaksentence41("en-GB"),
                              onPressedAmerican: () => speaksentence41("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I find it amazing that they're still together.""",
                              kurdishText: """خۆشبوو کە ھێشتا پێکەوەن.""",
                              onPressedBritish: () => speaksentence42("en-GB"),
                              onPressedAmerican: () => speaksentence42("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He knows that women find him attractive.""",
                              kurdishText:
                                  """دەزانێت کە ژنان بە سەرنجڕاکێش دەیبینن.""",
                              onPressedBritish: () => speaksentence43("en-GB"),
                              onPressedAmerican: () => speaksentence43("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We apologise if you found any of these comments offensive.""",
                              kurdishText:
                                  """داوای لێبووردن دەکەین ئەگەر ھەر یەکێک لەم لێدوانانەت بە بێڕێزی بینی.""",
                              onPressedBritish: () => speaksentence44("en-GB"),
                              onPressedAmerican: () => speaksentence44("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She didn't find the joke very funny.""",
                              kurdishText:
                                  """نوکتەکەی بە زۆر پێکەنیناوی نەبینی.""",
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
                            """٦. (کردار) بۆ گوتنی ئەوەی شتێک لە شوێنێک بوونی ھەیە، گەشە دەکات، ھتد"""),
                    SentencesRow(
                      englishText:
                          """These flowers are found only in Africa.""",
                      kurdishText: """ئەم گوڵانە تەنھا لە ئەفریقا ھەن.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Further details can be found on our website.""",
                      kurdishText:
                          """وردەکاریی زیاتر ھەیە لەسەر وێبسایتەکەمان.""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You'll find this style of architecture all over the town.""",
                      kurdishText:
                          """ئەم جۆرە تەلارسازییە لە تەواوی شارەکەدا دەبینی.""",
                      onPressedBritish: () => speaksentence48("en-GB"),
                      onPressedAmerican: () => speaksentence48("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """These pests can be found in almost every garden.""",
                      kurdishText:
                          """ئەم مێرووانە بە نزیکەیی لە ھەموو باخچەیەک ھەن.""",
                      onPressedBritish: () => speaksentence49("en-GB"),
                      onPressedAmerican: () => speaksentence49("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Folacin is a B vitamin found in many vegetables.""",
                      kurdishText:
                          """فۆڵاسین ڤیتامینێکی B ـیە کە لە سەوزەدا ھەیە.""",
                      onPressedBritish: () => speaksentence50("en-GB"),
                      onPressedAmerican: () => speaksentence50("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This is over 100 times the amount of chlorine found in drinking water.""",
                      kurdishText:
                          """ئەمە زیاتر لە ١٠٠ ھێندەی کلۆرە کە لە ئاوی خواردنەوە ھەیە.""",
                      onPressedBritish: () => speaksentence51("en-GB"),
                      onPressedAmerican: () => speaksentence51("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) زانینی ئەوەی خۆت/کەسێک/شتێک کە شتێک بکات یان لە شوێنێکە"""),
                    SentencesRow(
                      englishText:
                          """She woke up and found herself in a hospital bed.""",
                      kurdishText:
                          """خەبەری بوویەوە و زانی کە لە تەختی نەخۆشخانەیە.""",
                      onPressedBritish: () => speaksentence52("en-GB"),
                      onPressedAmerican: () => speaksentence52("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We came home and found him asleep on the sofa.""",
                      kurdishText:
                          """گەشتینە ماڵەوە و بە نووستووی لەسەر قەەنفەکە بینیمان.""",
                      onPressedBritish: () => speaksentence53("en-GB"),
                      onPressedAmerican: () => speaksentence53("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I found myself forced to act.""",
                      kurdishText: """خۆم بە زۆرلێکراو بۆ ھەنگاونان دەزانی.""",
                      onPressedBritish: () => speaksentence54("en-GB"),
                      onPressedAmerican: () => speaksentence54("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He looked up to find her watching him.""",
                      kurdishText: """سەیری سەرەوەی کرد و زانی سەیری دەکات.""",
                      onPressedBritish: () => speaksentence55("en-GB"),
                      onPressedAmerican: () => speaksentence55("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I suddenly found myself running down the street.""",
                      kurdishText:
                          """لەناکاو خۆم دییەوە بە شەقامەکەدا ڕامدەکرد.""",
                      onPressedBritish: () => speaksentence56("en-GB"),
                      onPressedAmerican: () => speaksentence56("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was surprised to find that everyone had left.""",
                      kurdishText: """سەرسام بوو کە زانی ھەموان ڕۆشتوون.""",
                      onPressedBritish: () => speaksentence57("en-GB"),
                      onPressedAmerican: () => speaksentence57("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We arrived to find the room full of people.""",
                      kurdishText:
                          """گەشتین کە بینیمان ژوورەکە پڕ لە خەڵکییە.""",
                      onPressedBritish: () => speaksentence58("en-GB"),
                      onPressedAmerican: () => speaksentence58("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They found the building completely deserted.""",
                      kurdishText: """بیناکەیان بە تەواو جۆڵکراو بینی.""",
                      onPressedBritish: () => speaksentence59("en-GB"),
                      onPressedAmerican: () => speaksentence59("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She was found dead in her bed.""",
                      kurdishText: """بە مردووی لە جێخەوەکەی دۆزرایەوە.""",
                      onPressedBritish: () => speaksentence60("en-GB"),
                      onPressedAmerican: () => speaksentence60("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) ھەبوونی شتێک کە بتوانیت بەکاری بھێنیت"""),
                    SentencesRow(
                      englishText:
                          """How are we going to find £10  000 for a car?""",
                      kurdishText:
                          """چۆن ١٠٠٠٠ پاوەند بۆ ئۆتۆمبێلێک بدۆزینەوە.""",
                      onPressedBritish: () => speaksentence61("en-GB"),
                      onPressedAmerican: () => speaksentence61("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I keep meaning to write, but never seem to find (the) time.""",
                      kurdishText:
                          """دەمەوێت بنووسم، بەڵام ھەرگیز کاتی پێویست نادۆزمەوە.""",
                      onPressedBritish: () => speaksentence62("en-GB"),
                      onPressedAmerican: () => speaksentence62("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (کردار) دۆزینەوەی خاسیەتێک لە خۆتدا"""),
                    SentencesRow(
                      englishText: """I found the courage to speak.""",
                      kurdishText: """بوێری قسەکردنم دۆزییەوە.""",
                      onPressedBritish: () => speaksentence63("en-GB"),
                      onPressedAmerican: () => speaksentence63("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (کردار) گەشتن بە شتێک بە سرووشتی"""),
                    SentencesRow(
                      englishText: """Water will always find its own level.""",
                      kurdishText: """ئاو ھەمیشە ئاستی خۆی دۆدۆزێتەوە.""",
                      onPressedBritish: () => speaksentence64("en-GB"),
                      onPressedAmerican: () => speaksentence64("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Most of the money finds its way to the people who need it.""",
                      kurdishText:
                          """زۆرینەی پارەکە دەگەن بەو کەسانەی دەیانەوێت.""",
                      onPressedBritish: () => speaksentence65("en-GB"),
                      onPressedAmerican: () => speaksentence65("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I hope this letter finds you in good health.""",
                      kurdishText:
                          """ھیوادارم ئەم نامەیە بە تەندرووستی باش بگات پێت.""",
                      onPressedBritish: () => speaksentence66("en-GB"),
                      onPressedAmerican: () => speaksentence66("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (کردار) دانی بڕیارێکی دیاریکراو لە دادگا"""),
                    SentencesRow(
                      englishText: """The court found in her favour.""",
                      kurdishText: """دادگاکە لەبەرژەوەندیی بڕیاری دا.""",
                      onPressedBritish: () => speaksentence67("en-GB"),
                      onPressedAmerican: () => speaksentence67("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٣. (ناو) شتێک یان کەسێک کە دۆزراوەتەوە"""),
                    SentencesRow(
                      englishText:
                          """This is an important archaeological find.""",
                      kurdishText: """ئەمە دۆزینەوەیەکی شوێنەوارناسیی گرنگە.""",
                      onPressedBritish: () => speaksentence68("en-GB"),
                      onPressedAmerican: () => speaksentence68("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He made his most spectacular finds in the Valley of the Kings.""",
                      kurdishText:
                          """ناوازەترین دۆزینەوەکانی کە دۆڵی پاشاکان ئەنجامدا.""",
                      onPressedBritish: () => speaksentence69("en-GB"),
                      onPressedAmerican: () => speaksentence69("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A lucky find is telling us a lot about life 10 000 years ago.""",
                      kurdishText:
                          """دۆزینەوەیەکی بەبەخت زۆر شتمان پێدەڵێت سەبارەت بە ژیان پێش ١٠٠٠٠ پێش ئێستا.""",
                      onPressedBritish: () => speaksentence70("en-GB"),
                      onPressedAmerican: () => speaksentence70("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """To date the site has yielded many interesting finds.""",
                      kurdishText:
                          """تا ئێستا شوێنەکە زۆر دۆزینەوەی سەرنڕاکێشی داوە بە دەستەوە.""",
                      onPressedBritish: () => speaksentence71("en-GB"),
                      onPressedAmerican: () => speaksentence71("en-US"),
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
const double _startSecondsend = 392;
const String _videoIdone = 'rPe4yziWiOg';
const double _startSecondsone = 225;
const String _videoIdtwo = 'hTqtGJwsJVE';
const double _startSecondstwo = 1599;
const String _videoIdthree = 'iAnlaR398hs';
const double _startSecondsthree = 0;
const String _videoIdfour = '_4WxoTeaMZM';
const double _startSecondsfour = 24;
const String _videoIdfive = 'DPZzrlFCD_I';
const double _startSecondsfive = 5;

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