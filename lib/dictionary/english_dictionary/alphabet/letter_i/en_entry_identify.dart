import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryidentify extends StatefulWidget {
  const EnglishEntryidentify({super.key});

  @override
  State<EnglishEntryidentify> createState() => _EnglishEntryidentifyState();
}

class _EnglishEntryidentifyState extends State<EnglishEntryidentify> {
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
- Verb: identify (Derived forms: identified, identifies, identifying)
1. Recognize as being; establish the identity of someone or something (- place, finger [informal])
"She identified the man on the 'wanted' poster";
 
2. Give the name or identifying characteristics of; refer to by name or some other identifying characteristic property (- name)
"The almanac identifies the auspicious months";
 
3. Consider (oneself) as similar to somebody else
"He identified with the refugees"
 
4. Conceive of as united or associated
"Sex activity is closely identified with the hypothalamus"
 
5. Classify or apply the appropriate name to, e.g. in botany or biology (- discover, key, key out, distinguish, describe, name)
 
6. Consider to be equal or the same
"He identified his brother as one of the fugitives"
""",
  );

  final String keyword = "identify";
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
    await flutterTts.speak("""identify""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was able to identify her attacker.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She acutely identified all the main problems.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Passengers were asked to identify their own suitcases before they were put on the plane.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Many of those arrested refused to identify themselves.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The bodies were identified as those of two suspected terrorists.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Now that the problem has been identified, appropriate action can be taken.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The articles found in the car helped the police to identify the body.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We banded the birds so that we could identify them later.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Researchers are studying the biochemistry of cancer cells to identify potential targets for novel therapies.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Did you identify all the pictures correctly?""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The family of the missing girl has been called in by the police to identify the body.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The substance was identified as carbon.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They defiantly refused to identify themselves in court.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He identifies as a democrat and supports free speech.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Get a low-cost car diagnostic tool to identify the fault.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He had the disagreeable job of identifying the body.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The major problems of the city can be easily identified.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The plant is relatively easy to identify.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Many farmers identify their sheep by painting their fleeces.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He could identify any animal from its footprints.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We think we've identified a gap in the market.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We may be able to identify the genes responsible for disease resistance.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The articles found in the car helped the police to identify the body.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Heraldry helps identify different noble families in history.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They identified eight pollution hotspots at the mouth of the Thames.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Scientists have identified the gene responsible for the disease.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In many cases, the clothes people wear identify them as belonging to a particular social class.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = '-HyHZsa79LU';
    const double startSecondsend = 212;
    const String videoIdone = 'VrKW58MS12g';
    const double startSecondsone = 1245;
    const String videoIdtwo = 'lGSOWwUvJiU';
    const double startSecondstwo = 1563;
    const String videoIdthree = 'dhgEpr87Yac';
    const double startSecondsthree = 147;
    const String videoIdfour = 'qYXw_qvtNQc';
    const double startSecondsfour = 17;
    const String videoIdfive = 'KmL0zZg0Zyo';
    const double startSecondsfive = 1285;

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
                      word: """identify""",
                      // alsoEnglishWord: "also: identify",
                      britshText: """IpaUK: /aɪˈdentɪfaɪ/""",
                      americanText: """IpaUS: /aɪˈdentɪfaɪ/""",
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
//                     const KurdishVocabulary(text: """
// کوردی:
// """),
// With short examples define "identify", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (کردار) ناسینەوە؛ ناساندن"""),
                    SentencesRow(
                      englishText: """She was able to identify her attacker.""",
                      kurdishText: """توانی هێرشکارەکەی بناسێتەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Passengers were asked to identify their own suitcases before they were put on the plane.""",
                              kurdishText:
                                  """گەشتیاران داوایان لێکرا جانتای خۆیان بناسنەوە پێش ئەوەی بخرێنە سەر فڕۆکەکە.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Many of those arrested refused to identify themselves (= would not say who they were).""",
                              kurdishText:
                                  """زۆرێک لەوانەی دەستگیرکران ڕەتیان کردەوە خۆیان باسێنن.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The bodies were identified as those of two suspected terrorists.""",
                              kurdishText:
                                  """لاشەکان وەک لاشەی دوو تیرۆریستە گومان‌لێکراوەکە ناسێنرانەوە.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The articles found in the car helped the police to identify the body.""",
                              kurdishText:
                                  "ئەو شتانەی لە ئۆتۆمبێلەکەدا دۆزرانەوە یارمەتی پۆلیسی دا لە ناسینەوەی تەرمەکە.",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We banded the birds (= put bands around their legs) so that we could identify them later.""",
                              kurdishText:
                                  "تیزماڵکمان لە باڵندەکان ئاڵاند بۆ ئەوەی دواتر بیان ناسینەوە.",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Did you identify all the pictures correctly?""",
                              kurdishText:
                                  """هەموو وێنەکانت بە درووستی ناسییەوە؟""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The family of the missing girl has been called in by the police to identify the body.""",
                              kurdishText:
                                  "خێزانی کچە ونبووەکە بانگکراون لەلایەن پۆلیسەوە بۆ ناسینەوەی لاشەکە.",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The substance was identified as carbon.""",
                              kurdishText: "مادەکە وەک کاربۆن ناسێنرا.",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They defiantly refused to identify themselves in court.""",
                              kurdishText:
                                  "لاسارانە ڕەتیان کردەوە زۆیان لە دادگا بناسێنن.",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He identifies as a democrat and supports free speech.""",
                              kurdishText:
                                  "خۆی وەک دیموکراتێک دەناسێنێت و باوەڕی بە ئازادیی ڕادەربڕین ھەیە.",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He had the disagreeable job of identifying the body.""",
                              kurdishText:
                                  "کاری ناخۆشی ناسینەوەی تەرمەکەی ھەبوو.",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Many farmers identify their sheep by painting their fleeces.""",
                              kurdishText:
                                  """زۆر ئاژەڵدار مەڕەکانیان دەناسنەوە بە بۆیەدان لە خورییەکەیان.""",
                              onPressedBritish: () => speaksentence19("en-GB"),
                              onPressedAmerican: () => speaksentence19("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He could identify any animal from its footprints.""",
                              kurdishText:
                                  """دەیتوانی ھەر ئاژەڵێک بە جێ پێیەکەی بناسێتەوە.""",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We may be able to identify the genes responsible for disease resistance.""",
                              kurdishText:
                                  """ڕەنگە بتوانین ئەو بۆھێڵانە بناسینەوە کە بەرپرسی پاراستنن لە نەخۆشی.""",
                              onPressedBritish: () => speaksentence22("en-GB"),
                              onPressedAmerican: () => speaksentence22("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Heraldry helps identify different noble families in history.""",
                              kurdishText:
                                  """ڕەچەڵەکناسی یارمەتیدەر دەبێت لە ناسینەوەی خێزانە خانەدانەکانی مێژوو.""",
                              onPressedBritish: () => speaksentence24("en-GB"),
                              onPressedAmerican: () => speaksentence24("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They identified eight pollution hotspots at the mouth of the Thames.""",
                              kurdishText:
                                  """هەشت ناوچەی پیسکەریان لە دەمی ڕووباری تەیمز دەستنیشان کرد.""",
                              onPressedBritish: () => speaksentence25("en-GB"),
                              onPressedAmerican: () => speaksentence25("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (کردار) دۆزینەوەی کەسێک/شتێک"""),
                    SentencesRow(
                      englishText:
                          """Scientists have identified the gene responsible for the disease.""",
                      kurdishText:
                          """زاناکان ئەو جینەیان دۆزیوەتەوە کە بەرپرسی نەخۆشییەکەیە.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She acutely identified all the main problems.""",
                              kurdishText:
                                  "زیرەکانە ھەموو کێشە سەرەکییەکانی دەستنیشانکرد.",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Now that the problem has been identified, appropriate action can be taken.""",
                              kurdishText:
                                  "ئێستا کە کێشەکە ناسێنراوە، ھەنگاوی گونجاو دەبێت بگیردرێتە بەر.",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Researchers are studying the biochemistry of cancer cells to identify potential targets for novel therapies.""",
                              kurdishText:
                                  "توێژەران لە بایۆکیمیای خانەکانی شێرپەنجە دەکۆڵنەوە بۆ دۆزینەوەی ئەو خانانەی کە دەکرێت ئامانج بن لە دۆزینەوەی چارەسەری تازە.",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Get a low-cost car diagnostic tool to identify the fault.""",
                              kurdishText:
                                  "ئامرازێکی ھەرزانی کێشەدۆزی ئۆتۆمبێل بکڕە بۆ زانینی کێشەکە.",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The major problems of the city can be easily identified.""",
                              kurdishText:
                                  """کێشە سەرەکییەکانی شارەکە دەکرێت بە ئاسانی بناسرێنەوە.""",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The plant is relatively easy to identify.""",
                              kurdishText:
                                  """ڕووەکەکە ئاڕادەیەک ئاسانە بناسرێتەوە.""",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We think we've identified a gap in the market (= a business opportunity to make or sell something that is not yet available).""",
                              kurdishText:
                                  """پێمان وایە کەلێنێکمان لە بازاڕدا دۆزیوەتەوە.""",
                              onPressedBritish: () => speaksentence21("en-GB"),
                              onPressedAmerican: () => speaksentence21("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The articles found in the car helped the police to identify the body.""",
                              kurdishText:
                                  "ئەو شتانەی لە ئۆتۆمبێلەکەدا دۆزرانەوە یارمەتی پۆلیسی دا لە ناسینەوەی تەرمەکە.",
                              onPressedBritish: () => speaksentence23("en-GB"),
                              onPressedAmerican: () => speaksentence23("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) کە وادەکات ئاسان بێت کەسێک/شتێک بناسرێتەوە"""),
                    SentencesRow(
                      englishText:
                          """In many cases, the clothes people wear identify them as belonging to a particular social class.""",
                      kurdishText:
                          """لە زۆر حاڵەتدا، ئەو جلانەی کەسێک لەبەری دەکات دەریان دەخات وەک پۆلێنێکی دیاریکراوی کۆمەڵگا.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
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
