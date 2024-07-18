import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfigure extends StatefulWidget {
  const EnglishEntryfigure({super.key});

  @override
  State<EnglishEntryfigure> createState() => _EnglishEntryfigureState();
}

class _EnglishEntryfigureState extends State<EnglishEntryfigure> {
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
- Noun: figure (derived forms: figures)
1. A diagram or picture illustrating textual material (= fig)
"the area covered can be seen from Figure 2";
 
2. The physical body of a human being (= human body, physical body, material body, soma, build, physique, anatomy, shape, bod [informal], chassis [informal], frame, form, flesh)
"Leonardo studied the figure";

3. One of the elements that collectively form a system of numeration (= digit)
"0 and 1 are figures";
 
4. A model of a bodily form (especially of a person)
"he made a figure of Santa Claus"
 
5. A well-known or notable person (= name, public figure)
"she is an important figure in modern music";
 
6. A combination of points and lines and planes that form a visible palpable shape
 
7. An amount of money expressed numerically
"a figure of £17 was suggested"
 
8. The impression produced by a person
"he cut a fine figure"; "a heroic figure"
 
9. The property possessed by a sum or total or indefinite quantity of units or individuals (= number)
"the figure was about a thousand";
 
10. Language used in a figurative or nonliteral sense (= trope, figure of speech, image)
 
11. A unitary percept having structure and coherence that is the object of attention and that stands out against a ground
 
12. A decorative or artistic work (= design, pattern)
"the coach had a figure on the doors";
 
13. A predetermined set of movements in dancing or skating
"she made the best score on compulsory figures"

- Verb: figure (derived forms: figuring, figures, figured)
1. Judge to be probable (= calculate, estimate, reckon, count on, forecast)
 
2. Be or play a part of or in (= enter)
"How do the elections figure in the current pattern of internal politics?"; "Elections figure prominently in every government program";
 
3. Imagine; conceive of; see in one's mind (= visualize, visualise [Brit], envision, project, fancy, see, picture, image)
 
4. [N. Amer] (mathematics) make a mathematical calculation or computation (= calculate, cipher, cypher, compute, work out, reckon)
 
5. Understand
"He didn't figure her"
""",
  );

  final String keyword = "figure";
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
    await flutterTts.speak("""figure""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Official figures indicate that crime is falling.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""By 2017, this figure had risen to 14 million.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """Figures for April show a slight improvement on previous months.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Viewing figures for the series have dropped dramatically.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """Figures released by the hospital reveal a rise in the number of admissions.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Experts put the real figure at closer to 75%.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Write the figure ‘7’ on the board.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""My unread email was in triple figures.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Are you any good at figures?""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I'm afraid I don't have a head for figures.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""When she last saw him, he was a sad figure—old and tired.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Several powerful political figures spoke out against him.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""He was one of the most prominent figures of the movement.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """She often came into conflict with teachers and other authority figures.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""She is interested in Jesus as a historical figure.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""There before him stood a tall figure in black.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""A shadowy figure can be seen through the window.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""You have a really good figure.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I'm watching my figure.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Dancing is fun and great for your figure.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""You have a lovely figure.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The central figure in the painting is the artist's daughter.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""He crafted a bronze figure of a horse for the exhibition.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The results are illustrated in figure 3.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """My feelings about the matter didn't seem to figure at all.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The question of the peace settlement is likely to figure prominently in the talks.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Do I still figure in your plans?""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""This man did not figure among the suspects.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Vegetables hardly figure at all in their diet.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """I figured (that) if I took the night train, I could be in Scotland by morning.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""We figured the sensible thing to do was to wait.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""That's what I figured.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He tried to figure why she had come.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We figured the attendance at 150 000.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The cost of manufacture is figured at £15 000.""");
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
                      word: """figure""",
                      // alsoEnglishWord: "also: figure",
                      britshText: """IpaUK: /ˈfɪɡə(r)/""",
                      americanText: """IpaUS: /ˈfɪɡjər/""",
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
کوردی: ڕەنووس، ژمارە، ھێژمار،	بڕ (پارە)،	بایی، نرخ،	شێوە، بیچم،	کۆتەڵ، پەیکەر،	خوازە، فیگۆر، ڕاگوێست، خواستەمەنی،	خستنەڕوو، پیشان‌دان (مرۆڤ یان گیانەوەرێ)،	وێنە،	نیشانە، ھێما، کینایە،	ھێڵکاری، دیاگرام،	نەخش،	شێوەی ئەندازەیی،	قیافە، قەدوباڵا، بەژن‌وباڵا، ھەیکەل، باڵا،	کەسایەتی،	مرۆ، بنیادم، پیاو، کابرا، کەس،	(سکی، یاری سەرسەھۆڵ و ھتد) کار، جووڵە یان زنجیرە بزاوتێ،	(موسیقا) بڕگە، گۆشە،	(ویژە) ھونەر، ژمێرە، حیساب
"""),
// With short examples define "figure", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) ژمارەیەک کە بڕێک دەردەبڕێت"""),
                    SentencesRow(
                      englishText:
                          """Official figures indicate that crime is falling.""",
                      kurdishText:
                          """ئامارە فەرمییەکان ئەوە دەردەخەن کە تاوان کەم دەکات.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """By 2017, this figure had risen to 14 million.""",
                              kurdishText:
                                  """تاوەکو ٢٠١٧، ئەم ژمارەیە گەشتبوو بە ١٤ ملیۆن.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Figures for April show a slight improvement on previous months.""",
                              kurdishText:
                                  """ژمارەکانی نیسان کەمێک باشتربوون پیشان دەدات لەچاو مانگەکانی دیکە.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Viewing figures for the series have dropped dramatically.""",
                              kurdishText:
                                  """ژمارەی بینینی زنجیرەکە بە ئاستێکی زۆر دابەزیوە.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Figures released by the hospital reveal a rise in the number of admissions.""",
                              kurdishText:
                                  """ژمارەی بڵاوکراوەی نەخۆشخانەکە زیادبوون لە سەردانی (= چوونی نەخۆش) پیشان دەدەن.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Experts put the real figure at closer to 75%.""",
                              kurdishText:
                                  """شارەزایان ژمارە ڕاستییەکە بە نزیکەی ٧٥٪ دادەنێن.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ژمارەکانی ١ بۆ ٩ بە ژمارەیی نەک نووسراوی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Write the figure ‘7’ on the board.""",
                      kurdishText: """ژمارە '٧' لەسەر تەختەکە بنووسە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """My unread email was in triple figures (= more than 100).""",
                      kurdishText:
                          """ئیمەیڵە نەخوێندراوەکانم لە سەروو ١٠٠ بوون.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئەو بەشەی بیرکاری کە مامەڵە لەگەڵ لێکدان، کۆکردنەوە، ھتد ـی ژمارەکان دەکات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Are you any good at figures?""",
                      kurdishText: """ھیچ باشیت لە ھەژمارکردن؟""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I'm afraid I don't have a head for figures (= I am not good at adding, etc.).""",
                      kurdishText: """بداخەوەم سەرم دەرناچێت لە ھەژمارکردن.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) کەسێکی لەو شێوەیەی کە باسکراوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """When she last saw him, he was a sad figure—old and tired.""",
                      kurdishText:
                          """کە کۆتا جار بینی، کەسێکی دڵتەنگ بوو ـ بەتەمەن و ماندوو.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Several powerful political figures spoke out against him.""",
                              kurdishText:
                                  """ژمارەیەک کەسایەتی سیاسی بەھێز  دژی قسەیان کرد.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He was one of the most prominent figures of the movement.""",
                              kurdishText:
                                  """یەکێک لە کەسایەتییە دیارەکانی بزووتنەوەکە بوو.""",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She often came into conflict with teachers and other authority figures.""",
                              kurdishText:
                                  """زۆرجار تووشی کێشە دەبوو لەگەڵ مامۆستایان و کەسایەتییە بەرپرسەکانی دیکە.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She is interested in Jesus as a historical figure.""",
                              kurdishText:
                                  """حەزی بە عیسای مەسیح ھەیە وەک کەسایەتییەکی مێژووی.""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) شێوەی کەسێک کە لە دوورەوە دەبینرێت بە ناڕوونی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There before him stood a tall figure in black.""",
                      kurdishText:
                          """لەوێ لە پێشییەوە شێوەیەکی بەرز بە ڕەشی وەستابوو.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A shadowy figure can be seen through the window.""",
                      kurdishText:
                          """شێوەیەکی سێبەری لە پەنجەرەکەوە دەبینرێت.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) شێوەی جەستەی مرۆڤ، بەتایبەتی ھی ژن کە بە جوان دادەنرێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You have a really good figure.""",
                      kurdishText: """بەژن‌وباڵایەکی تەواو باشی ھەیە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I'm watching my figure (= trying not to get fat).""",
                      kurdishText: """چاوم لەسەر بەژن‌وباڵامە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Dancing is fun and great for your figure.""",
                      kurdishText: """سەماکردن خۆش و باشە بۆ شێوەت.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You have a lovely figure.""",
                      kurdishText: """قیافەیەکی جوانت ھەیە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) کەسێک یان ئاژەڵێک لە وێنەیەک، تابلۆیەک، ھتد یان لە چیرۆکیک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The central figure in the painting is the artist's daughter.""",
                      kurdishText:
                          """کەسی سەرەکی تابلۆکە کچی ھونەرمەندەکەیە.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ناو) پەیکەری کەس یان ئاژەڵێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He crafted a bronze figure of a horse for the exhibition.""",
                      kurdishText:
                          """پەیکەرێکی برۆنزی ئەسپێکی درووستکرد بۆ پێشانگاکە.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) وێنەیەک، ھێڵکارییەک، ھتد لە کتێبێکدا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The results are illustrated in figure 3.""",
                      kurdishText: """ئەنجامەکان لە شێوەی ٣ پیشان دراون.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (کردار) بوون بە بەشێک لە پڕۆسەیەک، دۆخێک، ھتد، بەتایبەتی بەشێکی گرنگ"""),
                    const AlsoEnglishckb(word: "ھەروەھا: feature"),
                    SentencesRow(
                      englishText:
                          """My feelings about the matter didn't seem to figure at all.""",
                      kurdishText:
                          """ھەستەکانم سەبارەت بە دۆخەکە ھیچ دەرنەکەوت کە گرنگ بێت.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The question of the peace settlement is likely to figure prominently in the talks.""",
                      kurdishText:
                          """بابەتی ڕێککەوتنی ئاشتی ئەگەری ھەیە بە زەقی دەربکەوێت لە گفتوگۆکان.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Do I still figure in your plans?""",
                      kurdishText: """ھێشتا بەشێکم لە پلانەکانت؟""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This man did not figure among the suspects.""",
                      kurdishText: """ئەم پیاوە لەناو گومانلێکراوەکان نەبوو.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Vegetables hardly figure at all in their diet.""",
                      kurdishText:
                          """سەوزە بە دەگمەن لە بەرنامەی خواردنیەتی.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (کردار) بڕیاردان یان بیرکردنەوە لەوەی شتێک ڕوودەدات یان ڕاستە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I figured (that) if I took the night train, I could be in Scotland by morning.""",
                      kurdishText:
                          """وامدانا کە شەمەندەفەرەکە شەوانەکە بگرم، دەمتوانی لە سکۆتلەندا بم تا بەیانی.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We figured the sensible thing to do was to wait.""",
                      kurdishText:
                          """وامان دانا شتی باش کە بیکەین ئەوەیە چاوەڕێ بکەین.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """That's what I figured.""",
                      kurdishText: """ئەوە ئەوەیە کە بیرم لێکردەوە.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He tried to figure why she had come.""",
                      kurdishText: """ھەوڵی دا بزانێت بۆچی ھاتووە.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (کردار) خەمڵاندنی بڕ یان تێچووی شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We figured the attendance at 150 000.""",
                      kurdishText: """ژمارەی بەژداریمان بە ١٥٠٠٠٠ خەمڵاند.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The cost of manufacture is figured at £15 000.""",
                      kurdishText:
                          """تێچووی درووستکردن بە ١٥٠٠٠ پاوەند دادەنرێت.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
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
const String _videoIdend = 'VrKW58MS12g';
const double _startSecondsend = 275;
const String _videoIdone = 's3B-qp3U5G0';
const double _startSecondsone = 300;
const String _videoIdtwo = 'AwhBTrzzqeg';
const double _startSecondstwo = 187;
const String _videoIdthree = 'RgRSW3JvSYo';
const double _startSecondsthree = 0;
const String _videoIdfour = 'ea4Tq7HB7kU';
const double _startSecondsfour = 68;
const String _videoIdfive = 'L7APBWkgw50';
const double _startSecondsfive = 30;

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