import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhole extends StatefulWidget {
  const EnglishEntryhole({super.key});

  @override
  State<EnglishEntryhole> createState() => _EnglishEntryholeState();
}

class _EnglishEntryholeState extends State<EnglishEntryhole> {
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
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
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
- Noun: hole (Derived forms: holes)
1. An opening into or through something
 
2. An opening deliberately made in or through something
 
3. One playing period (from tee to green) on a golf course (- golf hole)
"he played 18 holes";
 
4. An unoccupied space
 
5. A depression hollowed out of solid matter (- hollow)
 
6. A fault
"he shot holes in my argument"
 
7. [informal] The quality of being almost beyond one's ability to deal with and requiring a great effort to achieve a positive result (- difficulty, difficultness, fix [informal], jam [informal], mess [informal], muddle [informal], pickle [informal], kettle of fish [informal])
 
8. [informal] The opening through which food is taken in and vocalizations emerge (- mouth, oral cavity, oral fissure, trap [informal], cakehole [Brit, informal], maw [informal], yap [N. Amer, informal], gob [Brit, informal], kisser [informal])
 
9. [informal] An unpleasant place (- dump [informal])

- Verb: hole (Derived forms: holes, holed, holing)
1. (golf) hit the ball into the hole (- hole out)
 
2. Make holes in
""",
  );

  final String keyword = "hole";
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
    await flutterTts.speak("""hole""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He dug a deep hole in the garden.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The bomb blew a huge hole in the ground.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They believed that at the centre of the earth, the sea poured into a bottomless hole.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She filled the hole with loose dirt.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She bored a hole in the tree with a cordless drill.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We put a bucket under the hole in the roof to catch the drips.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The excavator dug a deep hole.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They used putty to fill the holes.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Using a garden fork, she dug a hole two foot deep.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Water gushed forth from a hole in the rock.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She took a hammer and knocked a hole in the wall.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We drilled a hole through the wall.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We drilled a hole through the wall.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Drill a series of holes in the frame.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She still darns the holes in her socks.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Workmen cut a hole in the pipe.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It took a long time to chip a hole in the wall.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There were bullet holes in the door.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The acid burned a hole in her coat.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The animal refused to be enticed from its hole.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The story begins with Alice falling down a rabbit hole.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I can't stand living in this godforsaken hole.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I can't stand living in this godforsaken hole.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The ball rolled into the hole and she had won.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I don't believe what she says—her story is full of holes.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The company acted quickly to close a security hole in its online systems.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""After his wife left, there was a gaping hole in his life.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The ship had been holed by a missile.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She holed out from 25 feet.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'DPZzrlFCD_I';
    const double startSecondsend = 57;
    const String videoIdone = 'axhYc_4jL3Y';
    const double startSecondsone = 3685;
    const String videoIdtwo = 'tXjHb5QmDV0';
    const double startSecondstwo = 331;
    const String videoIdthree = 'r8E1Hq5tktg';
    const double startSecondsthree = 18;
    const String videoIdfour = 'oFKbvpXJ83w';
    const double startSecondsfour = 54;
    const String videoIdfive = 'EyuWCLOE-BU';
    const double startSecondsfive = 93;

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
                      word: """hole""",
                      // alsoEnglishWord: "also: hole",
                      britshText: """IpaUK: /həʊl/""",
                      americanText: """IpaUS: /həʊl/""",
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
کوردی: کون، بوودڕ، خرەک (لە دیوار و...)، کونج، کەلەبەر، کەلێن، چاڵ، قوڵکە، کەندڕ، قولیر،	تەنگ‌وچەڵەمە، گیروگرفت، گێچەڵ، ئاستەنگ،	(هی گیانەوەران) کون، گووف، بوودڕ 
"""),
                    const DefinitionKurdish(text: """١. (ناو) کون یان چاڵ"""),
                    SentencesRow(
                      englishText: """He dug a deep hole in the garden.""",
                      kurdishText: """چاڵێکی قووڵی کەند لە باخچەکە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The bomb blew a huge hole in the ground.""",
                      kurdishText: """بۆمبەکە چاڵێکی گەورەی کردە زەوییەکە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They believed that at the centre of the earth, the sea poured into a bottomless hole.""",
                      kurdishText:
                          "باوەڕیان وابوو کە ناوەڕاستی زەویدا دەریاکە دەڕژایە ناو چاڵێکی بێ‌بنەوە.",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She filled the hole with loose dirt.""",
                      kurdishText: "چاڵەکەی بە خۆڵی نەرم پڕکردەوە.",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She bored a hole in the tree with a cordless drill.""",
                      kurdishText: "کونێکی کردە دارەکە بە دریڵێکی شەحن.",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We put a bucket under the hole in the roof to catch the drips.""",
                      kurdishText:
                          "سەتڵێکمان خستە ژێر کونی بنبانەکە بۆ گرتنەوەی تکەکان.",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The excavator dug a deep hole.""",
                      kurdishText: """حەفارەکە چاڵێکی قووڵی ھەڵکەند.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They used putty to fill the holes.""",
                      kurdishText:
                          """مەعجوونیان بەکارھێنا بۆ پڕکردنەوەی کونەکان.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Using a garden fork, she dug a hole two foot deep.""",
                      kurdishText:
                          """بە بەکارھێنانی شەنی باخچە، چاڵێکی ھەڵکەند کە دوو پێ قووڵ بوو.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Water gushed forth from a hole in the rock.""",
                      kurdishText: """ئاو خوڕەی دەھات بە بە کونی بەردەکەدا.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It took a long time to chip a hole in the wall.""",
                      kurdishText: "کاتێکی زۆری پێچوو کونێک بکەینە دیوارەکە.",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She took a hammer and knocked a hole in the wall.""",
                      kurdishText:
                          """چەکووشەکەی ھێنا و کونێکی کردە دیوارەکە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) کونێک لە سەرێک بۆ سەرەکەی دیکەی شتێک"""),
                    SentencesRow(
                      englishText: """We drilled a hole through the wall.""",
                      kurdishText: """کونێکمان بە دیوارەکەدا کەند.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We drilled a hole through the wall.""",
                      kurdishText: """کونێکی زۆر گەورە ھەیە لەم قۆڵەدا.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Drill a series of holes in the frame.""",
                      kurdishText: "زنجیرە کونێک بکە چوارچێوەکە.",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She still darns the holes in her socks.""",
                      kurdishText: "ھێشتا کونەکانی گۆرەوییەکانی دەدوورێتەوە.",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Workmen cut a hole in the pipe.""",
                      kurdishText: "کرێکارەکان کونێکیان کردە بۆرییەکە.",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """There were bullet holes in the door.""",
                      kurdishText: "کونی فیشەک لە دەرگاکەدا ھەبوو.",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The acid burned a hole in her coat.""",
                      kurdishText: "ئەسیدەکە کونێکی درووستکرد لە پاڵتاوەکەی.",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) لانەی ئاژەڵێکی بچووک"""),
                    SentencesRow(
                      englishText:
                          """The animal refused to be enticed from its hole.""",
                      kurdishText:
                          """ئاژەڵەکە ڕەتیکردەوە لە کونەکەی بێتە دەرەوە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The story begins with Alice falling down a rabbit hole.""",
                      kurdishText:
                          """چیرۆکەکە دەست پێدەکات بەوەی ئالیس دەکەوێتە کونە کەروێشکێک.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) جێگایەکی ناخۆش بۆ ژیان"""),
                    const AlsoEnglishckb(word: "ھەروەھا: dump"),
                    SentencesRow(
                      englishText:
                          """I can't stand living in this godforsaken hole.""",
                      kurdishText: """بەرگەی ژیان لەم جێگا وێرانەیە ناگرم.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I can't stand living in this godforsaken hole.""",
                      kurdishText: """منداڵەکەم لەم جەهەنەمە گەورە ناکەم.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) کونی گۆڕەپانی یاریی گۆڵف"""),
                    SentencesRow(
                      englishText:
                          """The ball rolled into the hole and she had won.""",
                      kurdishText:
                          """تۆپەکە غلبوویەوە ناو کونەکە و بردییەوە.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) هەڵەیەک لە پلانێک، چیرۆکێک، یاسایەک، هتد"""),
                    SentencesRow(
                      englishText:
                          """I don't believe what she says—her story is full of holes.""",
                      kurdishText:
                          """باوەڕ بەوە ناکەم کە دەیڵێت ـ چیرۆکەکەی پڕ لە هەڵەیە.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The company acted quickly to close a security hole in its online systems.""",
                      kurdishText:
                          "کۆمپانیاکە بە خێرایی ھەنگاوی نا بۆ چارەسەری کێشەیەکی سەلامەتی لە سیستەمی ئۆنلاینیدا.",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) شوێن یان پێگەیەک کە دەبێت زوو پڕ چونکە کەسێک/شتێک لەوێ نییە"""),
                    SentencesRow(
                      englishText:
                          """After his wife left, there was a gaping hole in his life.""",
                      kurdishText:
                          """دوای ئەوەی ژنەکەی بەجێی هێشت، بۆشاییەکی قووڵ لە ژیانیدا دروست بوو.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) درووستکردنی کونێک لە شتێک"""),
                    SentencesRow(
                      englishText: """The ship had been holed by a missile.""",
                      kurdishText: """کەشتییەکە بە مووشەکێک کونی تێکرابوو.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) خستنی تۆپ بۆ ناو کونی یاریگا لە تۆپی یاریی گۆڵف"""),
                    SentencesRow(
                      englishText: """She holed out from 25 feet.""",
                      kurdishText: """تۆپەکەی خستە کونەکەوە لە ٢٥ پێوە.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
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
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdend),
                    videoId: videoIdend,
                    startSeconds: startSecondsend,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdone),
                    videoId: videoIdone,
                    startSeconds: startSecondsone,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdtwo),
                    videoId: videoIdtwo,
                    startSeconds: startSecondstwo,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdthree),
                    videoId: videoIdthree,
                    startSeconds: startSecondsthree,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfour),
                    videoId: videoIdfour,
                    startSeconds: startSecondsfour,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfive),
                    videoId: videoIdfive,
                    startSeconds: startSecondsfive,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// end WORD_WEB