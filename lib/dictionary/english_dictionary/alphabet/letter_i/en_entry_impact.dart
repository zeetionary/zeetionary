import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryimpact extends StatefulWidget {
  const EnglishEntryimpact({super.key});

  @override
  State<EnglishEntryimpact> createState() => _EnglishEntryimpactState();
}

class _EnglishEntryimpactState extends State<EnglishEntryimpact> {
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
- Noun: impact (Derived forms: impacts)
1. The striking of one body against another
 
2. A forceful consequence; a strong effect (- wallop [informal])
"the book had an important impact on my thinking";
 
3. Influencing strongly (- impingement, encroachment)
"they resented the impact of American values on European culture";
 
4. The violent interaction of individuals or groups entering into combat (- shock)
"the armies met in the impact of battle";

- Verb: impact (Derived forms: impacting, impacts, impacted)
1. Press or wedge together; pack together
 
2. Have an effect upon (- affect, bear upon, bear on, touch on, touch)
"Will the new rules impact me?";
 
3. Come into sudden contact with (- hit, strike, impinge on, run into, collide with)
""",
  );

  final String keyword = "impact";
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
    await flutterTts.speak("""impact""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Her speech made a profound impact on everyone.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He has had a lasting impact on the lives of many of his students.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Accurately assessing environmental impacts is very complex.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Scientists are tracking an asteroid that could potentially impact Earth.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The industry's environmental impact is relatively benign, even positive.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The bitterness of the argument left a lasting impact on their relationship.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The article described the impact of their breakthrough discovery of the structure of DNA.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government mandates the use of catalytic converters to minimize environmental impact.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The war may be short but the environmental impacts could last for decades.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The car had spun through 180 degrees on impact.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The increase in the number of young people leaving to work in the cities has had a dramatic impact on the demography of the villages.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The impact of the stones made little dents in the metal.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The model is a useful diagnostic tool to determine what has the most impact on employees' performance.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The author discusses the economic impact of these changes.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """All too often, we pay no attention to the downstream impact of our products.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Climate change will have a dramatic impact on the health of the planet.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The main impact of the law will be to protect the wealthy and their dubiously acquired assets.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The economics editor explained the impact of new trade policies.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The emotional impact of the film is powerful and lasting.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Only recently have historians begun to examine the impact and influence of these changes.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They felt an impact as the bomb hit.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I was flung forward by the impact.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Airbags protect the driver in the event of a severe frontal impact.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Changes like this will impact on the global economy.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Only recently have historians begun to examine the impact of these changes.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The bomb explodes on impact.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Her father's death impacted greatly on her childhood years.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""These restrictions will impact on all farmers in Ireland.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = '-HyHZsa79LU';
    const double startSecondsend = 762;
    const String videoIdone = '9QrlDWKP6lg';
    const double startSecondsone = 64;
    const String videoIdtwo = 'MnExgQ81fhU';
    const double startSecondstwo = 861;
    const String videoIdthree = 'qWAagS_MANg';
    const double startSecondsthree = 28;
    const String videoIdfour = 'BZbChKzedEk';
    const double startSecondsfour = 311;
    const String videoIdfive = 'CaaJyRvvaq8';
    const double startSecondsfive = 77;

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
                      word: """impact""",
                      // alsoEnglishWord: "also: impact",
                      britshText: """IpaUK: /ˈɪmpækt/""",
                      americanText: """IpaUS: /ˈɪmpækt/""",
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
کوردی: بەریەک‌کەوتن، پێک‌کەوتن، لێک‌کەوتن، پێکاکێشان،	کاریگەری، باندۆر، ئەگەر، شوێن‌دانان
"""),
// With short examples define "impact", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کاریگەریی بەهێزی شتێک لەسەر کەسێک/شتێک"""),
                    SentencesRow(
                      englishText:
                          """Her speech made a profound impact on everyone.""",
                      kurdishText:
                          """وتارەکەی کاریگەرییەکی بەهێزی لەسەر هەموان هەبوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """He has had a lasting impact on the lives of many of his students.""",
                              kurdishText:
                                  """کاریگەرییەکی درێژمەودای هەبوو لەسەر ژیانی زۆرێک لە قوتابییەکانی.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Accurately assessing environmental impacts is very complex.""",
                              kurdishText:
                                  "بەدرووستی ھەڵسەنگاندنی کاریگەریی ژینگەیی کارێکی زۆر ئاڵۆزە.",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The industry's environmental impact is relatively benign, even positive.""",
                              kurdishText:
                                  "کاریگەرییە ژینگەییەکانی پیشەسازییەکە تا ئاستێکی زۆر بێ‌مەترسین، ڕەنگە تەنانەت ئەرێنیش بن.",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The bitterness of the argument left a lasting impact on their relationship.""",
                              kurdishText:
                                  "تاڵی مشتومڕەکە کاریگەرییەکی بەردەوامی لەسەر پەیوەندییان جێھێشت.",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The article described the impact of their breakthrough discovery of the structure of DNA.""",
                              kurdishText:
                                  "وتارەکە باسی کاریگەریی دۆزینەوە گەورەکەیانی دەکرد کە لەسەر پێکھاتەی DNA بوو.",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The government mandates the use of catalytic converters to minimize environmental impact.""",
                              kurdishText:
                                  "حکومەت بەکارھێنانی کۆنڤێرتەری ھاندەرانە دەسەپێنێت بۆ کەمکردنەوەی کاریگەریی ژینگەیی.",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The war may be short but the environmental impacts could last for decades.""",
                              kurdishText:
                                  "جەنگەکە ڕەنگە کورتخایەن بێت، بەڵام کاریگەرییە کورتخایەنەکانی دەکرێت دەیان ساڵ بخەیەنێت.",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The model is a useful diagnostic tool to determine what has the most impact on employees' performance.""",
                              kurdishText:
                                  "نموونەکە ڕێگایەکی دەستنیشانکەری بەسوودە بۆ دیاریکردنی ئەوەی چی زۆرترین کاریگەری ھەیە لەسەر ئاستی کارمەند.",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The author discusses the economic impact of these changes.""",
                              kurdishText:
                                  "نووسەرەکە باس لە کاریگەریی ئابووری ئەم گۆڕانکارییانە دەکات.",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """All too often, we pay no attention to the downstream impact of our products.""",
                              kurdishText:
                                  "زوو زوو سەرنج نادەین بە کاریگەری دواتری بەرھەمەکانمان.",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Climate change will have a dramatic impact on the health of the planet.""",
                              kurdishText:
                                  "گۆڕانی کەشوھەوا کاریگەریی سەرسوڕھێنەری لەسەر تەندرووستیی زەوی دەبێت.",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The main impact of the law will be to protect the wealthy and their dubiously acquired assets.""",
                              kurdishText:
                                  """کاریگەریی سەرەکی یااساکە پاراستنی دەوڵەمەندەکان دەبێت لەگەڵ سامانی کۆکراوەیان بە گومان‌لێ‌کراوی.""",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The economics editor explained the impact of new trade policies.""",
                              kurdishText:
                                  """ڕۆژنامەنووسە ئابوورییەکە کاریگەری سیاسەتە تازەکانی بازرگانی ڕوونکردەوە.""",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The emotional impact of the film is powerful and lasting.""",
                              kurdishText:
                                  """کاریگەریی سۆزداری فیلمەکە بەھێز و درێژخایەنە.""",
                              onPressedBritish: () => speaksentence19("en-GB"),
                              onPressedAmerican: () => speaksentence19("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Only recently have historians begun to examine the impact and influence of these changes.""",
                              kurdishText:
                                  """تەنھا تازەگی مێژوونووسان دەستیان کردووە بە لێکۆڵینەوە لە کاریگەریی ئەم گۆڕانانە.""",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They felt an impact as the bomb hit.""",
                              kurdishText:
                                  """ھەستی بە کاریگەرییەکەی کرد کە بۆمبەکە کەوت.""",
                              onPressedBritish: () => speaksentence21("en-GB"),
                              onPressedAmerican: () => speaksentence21("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Changes like this will impact on the global economy.""",
                              kurdishText:
                                  """گۆڕانی لەم شێوەیە کاریگەریی لە ئابووریی جیھان دەبێت.""",
                              onPressedBritish: () => speaksentence24("en-GB"),
                              onPressedAmerican: () => speaksentence24("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Only recently have historians begun to examine the impact of these changes.""",
                              kurdishText:
                                  """تەنھا تازەگی مێژوونووسان دەستیان کردووە بە لێکۆڵینەوە لە کاریگەریی ئەم گۆڕانانە.""",
                              onPressedBritish: () => speaksentence25("en-GB"),
                              onPressedAmerican: () => speaksentence25("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) ئەوەی شتێک بەر شتێک بکەوێت"""),
                    SentencesRow(
                      englishText:
                          """The bomb explodes on impact (= when it hits something).""",
                      kurdishText: """بۆمبەکە لەگەڵ بەرکەوتن تەقییەوە.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The car had spun through 180 degrees on impact.""",
                      kurdishText:
                          "ئۆۆتمبێلەکە ١٨٠ پلە خولابوویەوە لەگەڵ بەرکەوتندا.",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The increase in the number of young people leaving to work in the cities has had a dramatic impact on the demography of the villages.""",
                      kurdishText:
                          "زیادبوونی ڕێژەی جێھێشتنی لەلایەن گەنجانەوە بۆ کارکردن لە شارەکاندا کاریگەرییەکی گەورەی لەسەر دیمۆگرافیای گوندەکان ھەبووە.",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The impact of the stones made little dents in the metal.""",
                      kurdishText:
                          "کاریگەری بەردەکان قوپاوی بچووکی کردە کانزاکە.",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I was flung forward by the impact.""",
                      kurdishText: """بە کاریگەرییە بۆ پێشەوە فڕێدرام.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Airbags protect the driver in the event of a severe frontal impact.""",
                      kurdishText:
                          """ئێرباگ شۆفێر دەپارێزێت لە حاڵەتی بەرکەوتنی توند بە پێشەوە.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (کردار) هەبوونی کاریگەرییەک لەسەر ک/شت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: affect"),
                    SentencesRow(
                      englishText:
                          """Her father's death impacted greatly on her childhood years.""",
                      kurdishText:
                          """مەرگی باوکی کاریگەریی گەورەی لەسەر ساڵانی منداڵیی هەبوو.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Scientists are tracking an asteroid that could potentially impact Earth.""",
                      kurdishText:
                          "زاناکان چاودێری ھەسارۆکەیەک دەکەن کە ئەگەری ھەیە کاریگەری لە زەوی بکات.",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """These restrictions will impact on all farmers in Ireland.""",
                      kurdishText:
                          """ئەم ڕێکارانە کاریگەرییان دەبێت لەسەر هەموو جووتیاران لە ئێرلەندا.""",
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