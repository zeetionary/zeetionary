import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylack extends StatefulWidget {
  const EnglishEntrylack({super.key});

  @override
  State<EnglishEntrylack> createState() => _EnglishEntrylackState();
}

class _EnglishEntrylackState extends State<EnglishEntrylack> {
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
- Noun: lack (Derived forms: lacks)
1. The state of needing something that is absent or unavailable (- deficiency, want)
"there is a serious lack of insight into the problem";

- Verb: lack (Derived forms: lacks, lacking, lacked)
1. Be without (- miss)
"This soup lacks salt";
 
2. To be insufficiently prepared
""",
  );

  final String keyword = "lack";
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
    await flutterTts.speak("""lack""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Passengers complained about the lack of information when flights were cancelled.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """My parents were concerned at my apparent lack of enthusiasm for school.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """None of the defendants could be linked to the fatal gunshot because of a lack of ballistic evidence.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Researchers at universities are always bemoaning their lack of funds.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """His complete lack of interest in money bewilders his family.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His behavior showed a blatant lack of respect.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She had bleary red eyes from lack of sleep.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The lack of cohesion within the party lost them votes in the election.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She was criticized for her lack of commitment.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The plan was brilliant in its conception but failed because of lack of money.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She was shocked by his lack of consideration for others.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """There is often a lack of continuity between one government and the next.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Her behaviour showed a total lack of common decency.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He considers the lack of central control to be a serious deficiency.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The report was criticized for its lack of detail.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """One major disadvantage of the area is the lack of public transport.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The plants were drooping from lack of water.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They were becoming deeply embittered by the government’s lack of concern.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""My lack of practical experience was a disadvantage.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Starvation and poverty are the result of global economic exploitation, not lack of resources.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It was a disappointing performance that lacked finesse.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His handling of the situation lacked firmness.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He lacked the flamboyance of other members of the band.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He never seems to lack energy.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Students in poorer areas lack access to the digital world.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """This film lacks the complexity or depth of his best movies.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""This lacks the technical dazzle of his first film.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His writing lacks the crispness it once had.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He said he agreed but his voice lacked conviction.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The country still lacks the basic components of a real democratic system.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The points you make are fine, but the whole essay lacks coherence.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The story lacked action for me, though I'm sure those that prefer a slow build would love it.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Her performance was technically brilliant but lacked feeling.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Many of the houses lacked even basic amenities.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/mY3SEMTROas?t=883';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/tLD-OUkYtk4?t=14';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/DPZzrlFCD_I?t=262';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/sQ_4m2ocxhI?t=109';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/z1KGMsMai0M?t=2691';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/DNZ5NXKtdxs?t=82';
    const double startSecondsfive = 0;

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
                      word: """lack""",
                      // alsoEnglishWord: "also: lack",
                      britshText: """IpaUK: lack""",
                      americanText: """IpaUS: lack""",
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
کوردی: 
"""),
// With short examples define "lack", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەوەی کە ڕێژەی پێویست لە شتێک نەبێت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: dearth، shortage"),
                    SentencesRow(
                      englishText:
                          """Passengers complained about the lack of information when flights were cancelled.""",
                      kurdishText:
                          """گەشتیاران ناڕەزاییان هەبوو لەسەر کەمی زانیاری کە گەشتەکان هەڵوەشانەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """My parents were concerned at my apparent lack of enthusiasm for school.""",
                              kurdishText:
                                  "دایک و باوکم نیگەران بوون بە کەمی ڕووکەشانەی تامەزرۆییم بۆ قوتابخانە.",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """None of the defendants could be linked to the fatal gunshot because of a lack of ballistic evidence.""",
                              kurdishText:
                                  "نەدەکرا ھیچ کام لە گومان‌لێ‌کراوان بە شەڕەتەقە کوشندەکەوە ببەسترێتەوە بەھۆی کەمی بەڵگەی ھاوێژەیی.",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Researchers at universities are always bemoaning their lack of funds.""",
                              kurdishText:
                                  "توێژەرانی زانکۆکان ھەمیشە نیگەرانن لە کەمی بودجەیان.",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """His complete lack of interest in money bewilders his family.""",
                              kurdishText:
                                  "نەبوونی تەواوی حەزی بۆ پارە دایک و باوکی حەپەساندبوو.",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """His behavior showed a blatant lack of respect.""",
                              kurdishText:
                                  "ھەڵسوکەوتی بێ ڕێزی ئاشکرای پیشان دا.",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She had bleary red eyes from lack of sleep.""",
                              kurdishText: "چاوی ماندوو بووبوو بەھۆی کەم‌خەوی.",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The lack of cohesion within the party lost them votes in the election.""",
                              kurdishText:
                                  "نەبوونی یەکگرتوووی لەناو پارتەکە بوو بەھۆی لە دەستدانی دەنگ لە ھەڵبژاردنەکە.",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She was criticized for her lack of commitment.""",
                              kurdishText:
                                  "ڕەخنەی لێ گیردرا بۆ کەمی خۆتەرخانکردنی.",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The plan was brilliant in its conception but failed because of lack of money.""",
                              kurdishText:
                                  "پلانەکە لە گەڵاڵەکردنیدا بلیمەتانە بوو بەڵام شکستیھێنا بەھۆی کەمی پارەوە.",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She was shocked by his lack of consideration for others.""",
                              kurdishText:
                                  "شۆک بوو بە بێ‌ھەستیی بۆ کەسانی دیکە.",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """There is often a lack of continuity between one government and the next.""",
                              kurdishText:
                                  "زۆرجار کەمیی یەکگرتووی لە نێوان حکومەتێک و ئەوەی دواتری ھەیە.",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Her behaviour showed a total lack of common decency.""",
                              kurdishText:
                                  "ڕەفتارەکەی بە تەواوی نەبوونی ئەدەبی پیشاندا.",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He considers the lack of central control to be a serious deficiency.""",
                              kurdishText:
                                  "نەبوونی کۆنترۆڵی ناوەندی بە کەماسییەکی سەخت دادەنێت.",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The report was criticized for its lack of detail.""",
                              kurdishText:
                                  "ڕاپۆرتەکە ڕەخنەی لێ گیردرا بۆ کەمیی وردەکاریی.",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """One major disadvantage of the area is the lack of public transport.""",
                              kurdishText:
                                  "یەکێک لە کۆسپەکانی ناوچەکانی کەمی گواستنەوەی گشتییە.",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The plants were drooping from lack of water.""",
                              kurdishText:
                                  "ڕووەکەکان بەھۆی کەم‌ئاوییەوە شۆڕبووبوونەوە.",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They were becoming deeply embittered by the government’s lack of concern.""",
                              kurdishText:
                                  """تەواو نیگەران دەبوون بە کەمی نیگەرانیی حکومەت.""",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                            // const DividerDefinition(),
                            // const DefinitionKurdish(
                            //     text: """ژممر. (ھاوەڵناو) پننسە"""),
                            // const DividerSentences(),
                            // SentencesRow(
                            //   englishText: """speaksentence1900""",
                            //   kurdishText: """رستە_رستە_رستە__رستە.""",
                            //   onPressedBritish: () => speaksentence19("en-GB"),
                            //   onPressedAmerican: () => speaksentence19("en-US"),
                            // ),
                            // const DividerDefinition(),
                            // const DefinitionKurdish(
                            //     text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """My lack of practical experience was a disadvantage.""",
                              kurdishText:
                                  """کەمی ئەزموونی کردارەکیم لاوازییەکم بوو.""",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Starvation and poverty are the result of global economic exploitation, not lack of resources.""",
                              kurdishText:
                                  """برسییەتی و ھەژاری ئەنجامی خراپ بەکارھێنانی ئابووری جیھانە، نەک کەمی سەرچاوەکان.""",
                              onPressedBritish: () => speaksentence21("en-GB"),
                              onPressedAmerican: () => speaksentence21("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (کردار) هەبوونی کەم یان هیچ لە شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It was a disappointing performance that lacked finesse.""",
                      kurdishText:
                          """نمایشێکی نائومێدکەر بوو کە شارەزایی تێدا نەبوو.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His handling of the situation lacked firmness.""",
                      kurdishText: """مامەڵەی لەگەڵ دۆخەکە بێ کۆنترۆڵ بوو.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He lacked the flamboyance of other members of the band.""",
                      kurdishText:
                          """ئەو ئەو دەرکەوتن و سەرنجڕاکێشییەی نەبوو کە ئەندامانی دیکەی گروپەکە ھەیانبوو..""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He never seems to lack energy.""",
                      kurdishText: """ھەرگیز وەھا دەرناکوێت بێ وزە بێت.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Students in poorer areas lack access to the digital world.""",
                      kurdishText:
                          "خوێندکاران لە ناوچە ھەژارەکان دەستیان ناگات بە جیھانی دیجیتاڵ.",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This film lacks the complexity or depth of his best movies.""",
                      kurdishText:
                          "ئەم فیلمە ئاڵۆزی و قووڵی باشترین فیلمەکانیی نییە.",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This lacks the technical dazzle of his first film.""",
                      kurdishText: "ئەمە شکۆی تەکنیکی یەکەم فیلمیی نییە.",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His writing lacks the crispness it once had.""",
                      kurdishText:
                          "نووسینەکانی ئەو کاریگەرییەیان نییە کە جاران ھەیان بوو.",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He said he agreed but his voice lacked conviction.""",
                      kurdishText: "گوتی ڕازییە بەڵام دەنگی تێڕادیتن کەم بوو.",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The country still lacks the basic components of a real democratic system.""",
                      kurdishText:
                          "وڵاتەکە ھێشتا کەماسی ھەیە لە نەبوونی پێکھێنەرە سەرەکییەکانی سیستەمێکی دیموکراسیدا.",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The points you make are fine, but the whole essay lacks coherence.""",
                      kurdishText:
                          "ئەو خاڵانەی ئاماژەیان پێ دەدەیت باشن، بەڵام تەواوی وتارەکە یەکگرتووی نییە.",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The story lacked action for me, though I'm sure those that prefer a slow build would love it.""",
                      kurdishText:
                          "فیلمەکە ڕووداوی خرووشێنەری کەم بوو بەلای منەوە، ئەگەرچی دڵنیام ئەو کەسانەی کە حەزیان بە پەرەسەندنی ھێواشە بدڵیان دەبێت.",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her performance was technically brilliant but lacked feeling.""",
                      kurdishText:
                          "نمایشەکەی لە ڕووی تەکنیکییەوە بلیمەتانە بوو بەڵام بەدەر لە ھەست و سۆز بوو.",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Many of the houses lacked even basic amenities (= baths, showers, hot water, etc.).""",
                      kurdishText:
                          "ژمارەیەکی زۆر لە خانووەکان تەنانەت خزمەتگوزارییە سەرەتاییەکانیشیان تێدا نییە.",
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
// end lack