import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryflow extends StatefulWidget {
  const EnglishEntryflow({super.key});

  @override
  State<EnglishEntryflow> createState() => _EnglishEntryflowState();
}

class _EnglishEntryflowState extends State<EnglishEntryflow> {
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
- Noun: flow (derived forms: flows)
1. The motion characteristic of fluids (liquids or gases) (= flowing)
 
2. The amount of fluid that flows in a given time (= flow rate, rate of flow)
 
3. The act of flowing or streaming; continuous progression (= stream)
 
4. Any uninterrupted stream or discharge
 
5. Something that resembles a flowing stream in moving continuously (= stream)
"the museum had planned carefully for the flow of visitors";
 
6. Dominant course (suggestive of running water) of successive events or ideas (= stream, current)
"the flow of thought";
 
7. The monthly discharge of blood from the uterus of nonpregnant women from puberty to menopause (= menstruation, menses, menstruum, catamenia, period)
"the semen begins to appear in males and to be emitted at the same time of life that the catamenia begin to flow in females";

- Verb: flow (derived forms: flows, flowed, flowing)
1. Move or progress freely as if in a stream (= flux)
"The crowd flowed out of the stadium";
 
2. Move along, of liquids (= run, feed, course)
"Water flowed into the cave";
 
3. Cause to flow
"The artist flowed the washes on the paper"
 
4. Be abundantly present
"The champagne flowed at the wedding"
 
5. Fall or flow in a certain way (= hang, fall)
"Her long black hair flowed down her back";
 
6. Cover or swamp with water
 
7. Undergo menstruation (= menstruate)
"She started flowing at the age of 11";
""",
  );

  final String keyword = "flow";
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

    await flutterTts.speak("""flow""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She tried to stop the flow of blood from the wound.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Exercise increases blood flow to the brain.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """Cut back surrounding vegetation to increase light and air flow.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The monument attracted a constant flow of visitors.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The flow rate was measured at 9.5 gallons per second.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They have to swim against the flow of the river.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We are looking to improve data flow by up to 50%.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The system provides a continuous flow of information to the market.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We like to allow a free flow of ideas in our company.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""He kept up a flow of chatter.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """You've interrupted my flow—I can't remember what I was saying.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""As usual, Tom was in full flow.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She lost control and the tears began to flow.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Blood flowed from a cut on her head.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""This can prevent air from flowing freely to the lungs.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The Wei River flows east.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The river flows quite fast here.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""New orders are finally starting to flow.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Constant streams of traffic flowed past.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Election results flowed in throughout the night.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Imported food aid continued to flow in.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Information flows continuously through the network.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Conversation flowed freely throughout the meal.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """We hope that the debate on this issue will continue to flow.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""It was obvious that money flowed freely in their family.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The party got livelier as the drink began to flow.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Fear and excitement suddenly flowed over me.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Her hair flowed down over her shoulders.""");
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
                      word: """flow""",
                      // alsoEnglishWord: "also: flow",
                      britshText: """IpaUK: /fləʊ/""",
                      americanText: """IpaUS: /fləʊ/""",
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
کوردی: ڕۆیین، ڕەوین، سووڕان، لێشاو، خوڕ، ڕەوت، تێ‌ڕژان، ڕژان،	قسە، وتە، پەیڤ،	کشانی ئاو،	بێ‌نوێژی، حەیز، عوزر،	زۆری، فرەیی، زەبەندی،	لێشاو، شەپۆل، لافاو،	ڕەوانی
"""),
// With short examples define "flow", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) جووڵەی بەردەوام و نەگۆڕی شتێک بە یەک ئاراستەدا"""),
                    SentencesRow(
                      englishText:
                          """She tried to stop the flow of blood from the wound.""",
                      kurdishText:
                          """ھەوڵی دا ڕێگری لە چۆڕەی خوێن لە برینەکەوە بکات.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Exercise increases blood flow to the brain.""",
                      kurdishText:
                          """ڕاھێنان ڕۆشتنی خوێن بۆ مێشک زیاد دەکات.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Cut back surrounding vegetation to increase light and air flow.""",
                      kurdishText:
                          """ڕووەکەکانی دەوروبەر کەم بکەرەوە بۆ ئەوەی ڕووناکی و سووڕی ھەوا زیاد بکات.""",
                      englishNote:
                          "This means trimming or pruning plants and bushes around an area to allow more sunlight and fresh air to reach the space, enhancing its brightness and ventilation.",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The monument attracted a constant flow of visitors.""",
                      kurdishText:
                          """مۆنیومێنتەکە لێشاوێکی بەردەوام لە گەشتیاری ڕادەکێشا.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The flow rate was measured at 9.5 gallons per second.""",
                      kurdishText:
                          """ڕێژەی ڕژان بە ٩.٥ گاڵۆن لە چرکەیەکدا پێوراوە..""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They have to swim against the flow of the river.""",
                      kurdishText:
                          """ئەوان دەبێت بە پێچەوانەی ئاراستەی ڕووبارەکە مەلە بکەن.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) بەرھەمھێنان یان دابینکردنی بەردەوامی شتێک"""),
                    SentencesRow(
                      englishText:
                          """We are looking to improve data flow by up to 50%.""",
                      kurdishText:
                          """ھەوڵ دەدەین ناردنی داتا بە ڕێژەی ٥٠٪ زیاد بکەین.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The system provides a continuous flow of information to the market.""",
                      kurdishText:
                          """سیستەمەکە سەرچاوەیەکی بەردەوامی زانیاری دەدات بە بازاڕ.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We like to allow a free flow of ideas in our company.""",
                      kurdishText:
                          """دەمانەوێت ڕێگا بە دەربڕینی ئازادی بیرۆکە بکەین لە کۆمپانیاکەمان.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) قسەکردنی بەردەوامی کەسێک"""),
                    SentencesRow(
                      englishText: """He kept up a flow of chatter.""",
                      kurdishText: """بەردەوام بوو لە بەردەوام چەنەدان.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You've interrupted my flow—I can't remember what I was saying.""",
                      kurdishText:
                          """قسەکردنەکەمت پچڕاند ـ بیرم ناکەوێتەوە چیم دەگوت.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """As usual, Tom was in full flow (= talking confidently in a way that is hard to interrupt).""",
                      kurdishText: """وەک ھەمیشە تۆم لە چەنەدان نەدەکەوت.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) جووڵان بە بەردەوامی و نەگۆڕی بە ئاراستەیەک"""),
                    SentencesRow(
                      englishText:
                          """She lost control and the tears began to flow.""",
                      kurdishText:
                          """کۆنترۆڵی لەدەستدا و فرمێسک دەستی بە ڕژان کرد.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Blood flowed from a cut on her head.""",
                      kurdishText: """خوێن ڕژا لە برینێکی سەری.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This can prevent air from flowing freely to the lungs.""",
                      kurdishText:
                          """ئەمە دەکرێت ڕێگا بگرێت لەوەی ھەوا بە ئازادی بچێت بۆ سییەکان.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The Wei River flows east.""",
                      kurdishText: """ڕووباری وی بۆ ڕۆژھەڵات دەچێت.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The river flows quite fast here.""",
                      kurdishText: """لێرە ڕووبارەکە تا ڕادەیەک خێرا دەچێت.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) جووڵان یان تێپەڕاندن بە بەردەوامی لە شوێنێک یان کەسێک بۆ یەکێکی دیکە"""),
                    SentencesRow(
                      englishText:
                          """New orders are finally starting to flow.""",
                      kurdishText:
                          """داواکردنی تازە لە کۆتاییدا دەست دەکەن بە ھاتن.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Constant streams of traffic flowed past.""",
                      kurdishText:
                          """جووڵەی بەردەوا،ی ھاتووچۆ بە تەنیشتدا تێپەڕی.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Election results flowed in throughout the night.""",
                      kurdishText:
                          """ئەنجامەکانی ھەڵبژاردن بۆ تەواوی شەوەکە دەھاتنەوە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Imported food aid continued to flow in.""",
                      kurdishText:
                          """ھاوکاری خواردنی ھاوردەکراو بەردەوام بوو لە گەشتن.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Information flows continuously through the network.""",
                      kurdishText: """زانیاری بەردەوام بە تۆڕەکەدا دێت.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) گەشەکردن یان بەرھەمھێنان بەشیوەیەکی سرووشتی و ئاسان"""),
                    SentencesRow(
                      englishText:
                          """Conversation flowed freely throughout the meal.""",
                      kurdishText:
                          """بۆ تەواوی نانخواردنەکە گفتوگۆ بەردەوام بوو.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We hope that the debate on this issue will continue to flow.""",
                      kurdishText:
                          """ھیوادارین دیبەیت لەسەر ئەم بابەتە بەردەوام بێت لە بەرەوپێشچوون.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) ئەوەی بە ئاسانی و بە ڕێژەیەکی زۆر بەردەست بێت"""),
                    SentencesRow(
                      englishText:
                          """It was obvious that money flowed freely in their family.""",
                      kurdishText:
                          """ئەوە ئاشکرا بوو پارە لە خێزانەکەیان ڕژا بوو.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The party got livelier as the drink began to flow.""",
                      kurdishText:
                          """ئاھەنگەکە بەجۆشتر بوو کە خواردنەوە بەردەست بوو.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) کە بە ئاسانی ھەستی پێ بکرێت"""),
                    SentencesRow(
                      englishText:
                          """Fear and excitement suddenly flowed over me.""",
                      kurdishText: """ترس و جۆش‌وخرۆشی باڵی بەسەرمدا کێشا.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) کە بە فشی شۆڕبووەتەوە"""),
                    SentencesRow(
                      englishText:
                          """Her hair flowed down over her shoulders.""",
                      kurdishText: """قژی بە شانیدا شۆڕبووبوو.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
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

const String _videoIdend = 'GcdB5bFwio4';
const double _startSecondsend = 533;
const String _videoIdone = 'D-2799Y07Zc';
const double _startSecondsone = 143;
const String _videoIdtwo = 'WDetHC86Dgo';
const double _startSecondstwo = 151;
const String _videoIdthree = 'AF8d72mA41M';
const double _startSecondsthree = 237;
const String _videoIdfour = '9TugA_z5vQE';
const double _startSecondsfour = 398;
const String _videoIdfive = 'PhNUjg9X4g8';
const double _startSecondsfive = 28;

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