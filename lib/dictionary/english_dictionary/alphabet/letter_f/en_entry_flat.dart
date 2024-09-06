import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryflat extends StatefulWidget {
  const EnglishEntryflat({super.key});

  @override
  State<EnglishEntryflat> createState() => _EnglishEntryflatState();
}

class _EnglishEntryflatState extends State<EnglishEntryflat> {
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
- Adjective: flat (derived forms: flattest, flatter)
1. Having a surface without slope, tilt in which no part is higher or lower than another (= level, plane)
"a flat desk"; "skirts sewn with fine flat seams";
 
2. (photography) lacking contrast or shading between tones
 
3. (of a musical note) lowered in pitch by one chromatic semitone
"B flat"
 
4. Having a relatively broad surface in relation to depth or thickness
"flat computer monitors"
 
5. Not modified or restricted by reservations (= categoric, categorical, unconditional)
"a flat refusal";
 
6. Stretched out and lying at full length along the ground (= prostrate)
"found himself lying flat on the floor";
 
7. (biology) flattened laterally along the whole length (e.g., certain leafstalks or flatfishes) (= compressed)
 
8. Lacking taste, flavour or tang (= bland, flavorless [US], flavourless [Brit, Cdn], insipid, savorless [US], savourless [Brit, Cdn], vapid)
"a flat diet";
 
9. Lacking stimulating characteristics; uninteresting (= bland)
"a flat joke";
 
10. Having lost effervescence
"flat beer"; "a flat cola"
 
11. Sounded or spoken in a tone unvarying in pitch (= monotone, monotonic, monotonous)
"the owl's faint flat hooting";
 
12. Horizontally level
"a flat roof"
 
13. Lacking the expected range or depth; not designed to give an illusion or depth (= two-dimensional, 2-dimensional)
"a flat two-dimensional painting";
 
14. Not reflecting light; not glossy (= mat, matt, matte, matted)
"flat wall paint";
 
15. Commercially inactive
"flat sales for the month"; "prices remained flat"; "a flat market"
 
16. [Brit] Drained of electric charge; discharged (= dead, drained)
"a flat battery";

- Noun: flat (derived forms: flats)
1. A level tract of land
"the salt flats of Utah"
 
2. A shallow box in which seedlings are started
 
3. A musical notation indicating one half step lower than the note named
 
4. [N. Amer] Freight car without permanent sides or roof (= flatcar [N. Amer], flatbed)

5. [N. Amer] A deflated pneumatic tire (= flat tire [N. Amer], flat tyre [Brit], puncture)
 
6. Scenery consisting of a wooden frame covered with painted canvas; part of a stage setting
 
7. [Brit] A suite of rooms usually on one floor of an apartment house (= apartment)

- Adverb: flat
1. With flat sails
"sail flat against the wind"
 
2. In a forthright manner; candidly or frankly (= directly, straight)
"came out flat for less work and more pay";

- Verb: flat (derived forms: flatted, flats, flatting)
1. [Austral, NZ] Live in or share an apartment
 
2. (music) lower a note in pitch
""",
  );

  final String keyword = "flat";
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
    await flutterTts.speak("""flat""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They're renting a furnished flat on the third floor.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do you live in a flat or a house?""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Many large old houses have been converted into flats.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Do you think that the council could find me another flat?""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'll meet you back at your flat.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He beat on the door with the flat of his hand.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""These birds live on the coastal flats.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I need a flat surface to write on.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A large flat screen was mounted on the wall.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We found a large flat rock to sit on.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""People used to think the earth was flat.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The road stretched ahead across the flat landscape.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The desert was flat, mile after mile.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He reached a flatter section of land near the river.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The sea was almost completely flat.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The water was dead flat, like a mirror.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Pitta and nan are two types of flat bread.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He preferred flat shoes for walking long distances.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He felt very flat after his friends had gone home.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her voice was flat and expressionless.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The housing market has been flat for months.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her request was met with a flat refusal.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """These results are in flat contradiction to the theory of relativity.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The soda was warm and had gone flat.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I left my car lights on and now the battery is flat.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Lie flat and breathe deeply.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I can't get this material to lie flat.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They pressed themselves flat against the tunnel wall as the train approached.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She told me flat she would not speak to me again.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I made them a reasonable offer but they turned it down flat.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My sister Zoe flats in Auckland.""");
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
                      word: """flat""",
                      // alsoEnglishWord: "also: flat",
                      britshText: """IpaUK: /flæt/""",
                      americanText: """IpaUS: /flæt/""",
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
کوردی: دەستەخانوو، دەستەدیو، باڵاخانە، تەخت، ڕێک، گۆڕ، ڕاست، پان،	وەڕەسکەر، ناخۆش، عاجزکەر، شەکەتکەر،	(ڕاوێژ) سارد،	بێ‌بازاڕی، بێ‌بڕەو، خەوتوو، کەساد،	دەمەوڕوو، لەسەرزگ،	(نرخ) نەگۆڕ، دیاری‌کراو، چەسپیو، بڕاوەتەوە، جێگیر،	وەڕەس، ناڕەحەت، جاڕز، بەتاڵ، خاڵی (باتری)،	پەنچەر، کەم‌با، بێ‌با، کون،	بێ‌کەف، بێ‌گاز،	(بنی پێ) تەخت، ڕێک،	(موسیقا) نزمۆک،	مات، نەدرەوشاوە، تاریک (ڕەنگ)،	(وێنەکێشی) تەخت،	ڕێک‌وڕاست، ڕەپ‌وڕاست،	(کەوش) تەخت، بێ‌پاژنە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ژمارەیەک ژوور بۆ ژیان تێیدا، زۆرجار لە نھۆمێکی بینایەک"""),
                    AlsoEnglishckblink(
                      textBeforeLink: "ھەروەھا: ",
                      linkText: "apartment",
                      textAfterLink: ".",
                      onTap: () {
                        Routemaster.of(context).push("/english-flat/apartment");
                      },
                    ),
                    SentencesRow(
                      englishText:
                          """They're renting a furnished flat on the third floor.""",
                      kurdishText:
                          """فلاتێکی کەل‌وپەل‌داریان بەکرێ گرت لە نھۆمی سێیەم.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Do you live in a flat or a house?""",
                      kurdishText: """لە فلات یان خانوو دەژیت؟""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Many large old houses have been converted into flats.""",
                      kurdishText: """زۆر خانووی گەورە گۆڕدراون بۆ فلات.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Do you think that the council could find me another flat?""",
                      kurdishText:
                          """پێتوایە ئەنجوومەنەکە بتوانێت فلاتێکی دیکەم بۆ بدۆزێتەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'll meet you back at your flat.""",
                      kurdishText: """لە فلاتەکەت دەتبینمەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) بەشی تەختی شتێک"""),
                    SentencesRow(
                      englishText:
                          """He beat on the door with the flat of his hand.""",
                      kurdishText:
                          """بە تەختی (= ناولەپی) دەستی لە دەرگاکەی دا.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) زەوییەک، بەتایبەتی لە نزیکی ئاو"""),
                    SentencesRow(
                      englishText: """These birds live on the coastal flats.""",
                      kurdishText:
                          """ئەم باڵندانە لە تەختاییە کەناراوەکان دەژین.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٤. (ھاوەڵناو) تەخت"""),
                    SentencesRow(
                      englishText: """I need a flat surface to write on.""",
                      kurdishText:
                          """پێویستیم بە ڕوویەکی تەخت ھەیە بۆ نووسین لەسەری.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A large flat screen was mounted on the wall.""",
                      kurdishText:
                          """شاشەیەکی گەورەی تەخت لەسەر دیوارەکە ھەڵواسرا.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We found a large flat rock to sit on.""",
                      kurdishText:
                          """بەردێکی گەورەی تەختمان دۆزییەوە لەسەری دابنیشین.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """People used to think the earth was flat.""",
                      kurdishText:
                          """جاران خەڵکی وەھا بیریان دەکردەوە زەوی تەختە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ھاوەڵناو) بەبێ لێژایی یان گرد"""),
                    SentencesRow(
                      englishText:
                          """The road stretched ahead across the flat landscape.""",
                      kurdishText:
                          """ڕێگاکە بەرەو پێشەوە دەچوو بە پانتاییە تەختەکەدا.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The desert was flat, mile after mile.""",
                      kurdishText: """بیابانەکە تەخت بوو میل لە دوای میل.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He reached a flatter section of land near the river.""",
                      kurdishText:
                          """گەشتە بەشێکی تەختتری زەوی لە نزیک ڕووبارەکە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ھاوەڵناو) ئارام و بەبێ شەپۆل"""),
                    SentencesRow(
                      englishText: """The sea was almost completely flat.""",
                      kurdishText: """دەریاکە بەنزیکەیی تەواو ھێمن بوو.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The water was dead flat, like a mirror.""",
                      kurdishText: """ئاوەکە تەواو ئارام بوو وەک ئاوێنەیەک.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ھاوەڵناو) فراوان بەڵام کە زۆر بەرز نییە"""),
                    SentencesRow(
                      englishText:
                          """Pitta and nan are two types of flat bread.""",
                      kurdishText: """پیتا و 'نان' دوو جۆری نانی تەختن.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He preferred flat shoes for walking long distances.""",
                      kurdishText:
                          """پێڵاوی نزمی بۆ ڕێکردن بە دووری زۆردا بە باش دەزانی.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ھاوەڵناو) کە ھەست بە تامەزرۆیی یان حەز پیشان نادات"""),
                    SentencesRow(
                      englishText:
                          """He felt very flat after his friends had gone home.""",
                      kurdishText:
                          """زۆر ھەستی بە ناڕەحەتی دەکرد کە ھەموو ھاوڕێکانی چوونەوە ماڵەوە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (ھاوەڵناو) کە ھەستی زۆر پیشان نادات"""),
                    SentencesRow(
                      englishText: """Her voice was flat and expressionless.""",
                      kurdishText: """دەنگی مات و بێ‌ھەست بوو.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (ھاوەڵناو) کە سەرکەوتوو نییە بەھۆی ئەوەی کەم شت دەفرۆشرێت"""),
                    SentencesRow(
                      englishText:
                          """The housing market has been flat for months.""",
                      kurdishText:
                          """بازاڕی خانووبەرە چەندین مانگ دەبێت بێ‌بازاڕ بووە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (ھاوەڵناو) کە بە تەواوی بڕیاری لێدراوە؛ کە ناکرێت گفتوگۆی لەسەر بکرێت"""),
                    SentencesRow(
                      englishText:
                          """Her request was met with a flat refusal.""",
                      kurdishText: """داواکەی بە ڕەتکردنەوەی یەکلاکەرەوە.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """These results are in flat contradiction to the theory of relativity.""",
                      kurdishText:
                          """ئەنجامەکان بە تەواوی دژی بیردۆزی ڕێژەیین.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (ھاوەڵناو) کە چی دیکە کەفی نییە"""),
                    SentencesRow(
                      englishText: """The soda was warm and had gone flat.""",
                      kurdishText: """سۆدەکە گەرم و فلات بوو.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٣. (ھاوەڵناو) باترییەکی مردوو"""),
                    SentencesRow(
                      englishText:
                          """I left my car lights on and now the battery is flat.""",
                      kurdishText:
                          """لایتەکانی ئۆتۆمبلەکەمم بە کراوەیی ھێشتەوە و ئێستا باترییەکە مردووە.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (ھاوەڵکار) بە تەختی؛ بە ڕاستی و بەبێ چەمانەوە"""),
                    SentencesRow(
                      englishText: """Lie flat and breathe deeply.""",
                      kurdishText:
                          """بە ڕاکشاوی پاڵ بکەوە و بە قووڵی ھەناسە بدە.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I can't get this material to lie flat.""",
                      kurdishText:
                          """ناتوانم وەھا لەم مادەیە بکەم بە تەختی بوەستێت.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They pressed themselves flat against the tunnel wall as the train approached.""",
                      kurdishText:
                          """خۆیان بە ڕاستی پاڵدایە دیواری تونێلەکەوە کە شەمەندەفەرەکە نزیک بوویەوە.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٥. (ھاوەڵکار) بەشێوەی ڕاستەوخۆ و نەگۆڕ"""),
                    SentencesRow(
                      englishText:
                          """She told me flat she would not speak to me again.""",
                      kurdishText: """ڕاستەوخۆ پێی گوتم قسەم لەگەڵ ناکات.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I made them a reasonable offer but they turned it down flat.""",
                      kurdishText:
                          """پێشنیارێکی گونجاوم بۆ کردن بەڵام تەواو ڕەتیان کردەوە.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٦. (کردار) ژیان کردن لە فلاتێک یان لەگەڵ کەسێکی دیکە لە فلاتێک"""),
                    SentencesRow(
                      englishText: """My sister Zoe flats in Auckland.""",
                      kurdishText: """زۆوی خوشکم لە فلاتێکی ئۆکلاند دەژی.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
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

const String _videoIdend = 'VrKW58MS12g';
const double _startSecondsend = 1109;
const String _videoIdone = 'E2_kRmS6y8A';
const double _startSecondsone = 2175;
const String _videoIdtwo = 'jaRcbpN_KlM';
const double _startSecondstwo = 3727;
const String _videoIdthree = 'PMBYkQ58bMM';
const double _startSecondsthree = 159;
const String _videoIdfour = 'FftKFR2yzF4';
const double _startSecondsfour = 27;
const String _videoIdfive = 'X5U9fei1uBU';
const double _startSecondsfive = 201;

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