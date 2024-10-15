import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryholiday extends StatefulWidget {
  const EnglishEntryholiday({super.key});

  @override
  State<EnglishEntryholiday> createState() => _EnglishEntryholidayState();
}

class _EnglishEntryholidayState extends State<EnglishEntryholiday> {
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
- Noun: holiday (Derived forms: holidays)
1. [Brit] Leisure time away from work devoted to rest or pleasure (- vacation, vac [Brit, informal], vacay [Brit, N. Amer, informal])
"we took a short holiday in Puerto Rico";
 
2. A day on which work is suspended by law or custom
"no mail is delivered on federal holidays"; "it's a good thing that New Year's was a holiday because everyone had a hangover"

- Verb: holiday (Derived forms: holidaying, holidays, holidayed)
Usage: Brit, Cdn
1. Spend or take a vacation (- vacation [N. Amer])
""",
  );

  final String keyword = "holiday";
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
    await flutterTts.speak("""holiday""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She spent her holiday decorating the flat.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I have three weeks' holiday a year.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """By the time they leave, they'll have accrued a year's holiday pay.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm taking the rest of my holiday in October.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """All employees get an annual bonus before the summer holidays.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Find a holiday to suit your time budget.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The confectioner prepared a variety of chocolates for the holiday season.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Cut out and return this coupon to claim your free holiday.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It was decreed that the following day would be a holiday.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I decided to go on a diet before my holiday.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Her daughter's down from Oxford for the holidays.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Citizens honor their fatherland on national holidays.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It'd be a good place to go on holiday, but not to live in.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We used to spend our holidays in a small French town.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""A pool float has now become a holiday essential.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The main purpose of his holiday to Greece was to go diving.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Disagreement arose about exactly how to plan the holiday.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They spent their annual holiday on a chartered yacht in the Caribbean.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The local farmer lets holiday caravans park on his land.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I haven’t had a decent holiday for years.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I really need a holiday!""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""What would be your dream holiday?""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Today is a holiday in Wales.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The president's birthday was declared a national holiday.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We always spend the holidays together.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Thanksgiving is the traditional start of the holiday season for most Americans.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We often holidayed together.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She was holidaying with her family in Ireland.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'Hi0zbU3DW6o';
    const double startSecondsend = 105;
    const String videoIdone = 'przDcQe6n5o';
    const double startSecondsone = 782;
    const String videoIdtwo = 'AF8d72mA41M';
    const double startSecondstwo = 962;
    const String videoIdthree = 's3B-qp3U5G0';
    const double startSecondsthree = 35;
    const String videoIdfour = 'R0wa9IlCA_w';
    const double startSecondsfour = 87;
    const String videoIdfive = 'gEKAzZEJIQY';
    const double startSecondsfive = 112;

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
                      word: """holiday""",
                      // alsoEnglishWord: "also: holiday",
                      britshText: """IpaUK: /ˈhɒlədeɪ/,  /ˈhɒlədi/""",
                      americanText: """IpaUS: /ˈhɑːlədeɪ/""",
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
کوردی: پشوو، وچان، پێندان، ڕۆژی بێکاری، ڕۆژانی پشوو
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ماوەیەک کە لە کار یان قوتابخانە نیت"""),
                    SentencesRow(
                      englishText:
                          """She spent her holiday decorating the flat.""",
                      kurdishText:
                          """پشووەکەیی بەسەر برد بە ڕازاندنەوەی فلاتەکە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """I have three weeks' holiday a year.""",
                              kurdishText:
                                  """سێ هەفتەی پشووم هەیە لە ساڵێکدا.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """By the time they leave, they'll have accrued a year's holiday pay.""",
                              kurdishText:
                                  "تا ئەوکاتەی دەڕۆن، بەشی پشوویەکی یەک ساڵە پارە کۆدەکەنەوە.",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I'm taking the rest of my holiday in October.""",
                              kurdishText:
                                  """بەشی دیکەی پشووەکەم لە تشرینی یەکەم دەبێت.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """All employees get an annual bonus before the summer holidays.""",
                              kurdishText:
                                  "ھەموو کارمەندان بەخشیشێکی ساڵانە وەردەگرن پێش پشووی ھاوین.",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Find a holiday to suit your time budget.""",
                              kurdishText:
                                  "پشوویەک بدۆزەوە کە لەگەڵ کاتی بەردەستت دەگونجێت.",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The confectioner prepared a variety of chocolates for the holiday season.""",
                              kurdishText:
                                  "شیرینی‌فرۆشەکە ژمارەیەکی جیاواز چکلێتی ئامادەکرد بۆ وەرزی پشوو.",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Cut out and return this coupon to claim your free holiday.""",
                              kurdishText:
                                  "ئەم کوپۆنە ببڕە و بیگەڕینەوە بۆ بەدەستھێنانی پشووی بێ‌بەرامبەرت.",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It was decreed that the following day would be a holiday.""",
                              kurdishText:
                                  "بڕیار درا کە ڕۆژی دواتر پشوو دەبێت.",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I decided to go on a diet (= to lose weight) before my holiday.""",
                              kurdishText:
                                  "بڕیارمدا پێش پشووەکەم دەست بە پارێزێک بکەم.",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Her daughter's down from Oxford (= Oxford University) for the holidays.""",
                              kurdishText:
                                  "کچەکەی لە ئۆکسفۆردەوە گەڕاوەتەوە بۆ پشووەکان.",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Citizens honor their fatherland on national holidays.""",
                              kurdishText:
                                  """لە بۆنە نیشتیمانییەکان ھاوڵاتییان ڕێز لە خاکی باوباپیران دەنێن.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ماوەیەک لە حەسانەوە و گەشتکردن دوور لە ماڵ"""),
                    const AlsoEnglishckb(word: "ھەروەھا: vacation"),
                    SentencesRow(
                      englishText:
                          """It'd be a good place to go on holiday, but not to live in.""",
                      kurdishText:
                          """شوێنێکی باشە بۆ چوونە گەشت بۆی، بەڵام نەک لێی بژیت.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """We used to spend our holidays in a small French town.""",
                              kurdishText:
                                  """جاران پشووەکانمان لە شارۆچکەیەکی بچووکی فەرەنسی بەسەر دەبرد.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """A pool float has now become a holiday essential.""",
                              kurdishText:
                                  """سەراوکەوتەی مەلەوانگە ئێستا بووە بە پێداویستییەکی پشووەکان.""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The main purpose of his holiday to Greece was to go diving.""",
                              kurdishText:
                                  "مەبەستی سەرەکی پشووەکەی لە یۆنان بۆ چوونە مەلەی ژێرئاو بوو.",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Disagreement arose about exactly how to plan the holiday.""",
                              kurdishText:
                                  "ناکۆکی دەستیپێکرد لەسەر ئەوەی چۆن پلانی پشووەکە دابنرێت.",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They spent their annual holiday on a chartered yacht in the Caribbean.""",
                              kurdishText:
                                  "پشووی ساڵانەیان لەسەر یەختێکی کرێ بەسەربرد لە کاریبی.",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The local farmer lets holiday caravans park on his land.""",
                              kurdishText:
                                  "جوتیارە لۆکاڵییەکە ڕێگا دەدات کارڤانی گەشتیاری لە زەوییەکەی پارک بکەن.",
                              onPressedBritish: () => speaksentence19("en-GB"),
                              onPressedAmerican: () => speaksentence19("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I haven’t had a decent holiday for years.""",
                              kurdishText:
                                  """چەندین ساڵ دەبێت گەشتێکی باشم نەکردووە.""",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """I really need a holiday!""",
                              kurdishText: """بەڕاستی پێویستیم بە گەشتێکە.""",
                              onPressedBritish: () => speaksentence21("en-GB"),
                              onPressedAmerican: () => speaksentence21("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """What would be your dream holiday?""",
                              kurdishText: """چی دەبێتە گەشتی خەونەکانت؟""",
                              onPressedBritish: () => speaksentence22("en-GB"),
                              onPressedAmerican: () => speaksentence22("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ڕۆژێک کە پشووی فەرمییە، زۆرجار بۆ بۆنەی نەتەوەیی یان ئایینی"""),
                    const AlsoEnglishckb(word: "ھەروەھا: public holiday"),
                    SentencesRow(
                      englishText: """Today is a holiday in Wales.""",
                      kurdishText: """ئەمڕۆ پشووە لە وێڵز.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The president's birthday was declared a national holiday.""",
                      kurdishText:
                          """ڕۆژی لە دایکبوونی سەرۆک بە پشووی نیشتیمانی دیاریکرا.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) کاتی کۆتایی تشرینی دووەم تاوەکو سەرەتای کانوونی دووەم کە پشووەکانی ڕۆژی سوپاسگوزاری، هانووکا، کریسمس، و سەری ساڵی تێدەکەوێت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: life"),
                    SentencesRow(
                      englishText: """We always spend the holidays together.""",
                      kurdishText: """هەمیشە پشووەکان پێکەوە بەسەر دەبەین.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Thanksgiving is the traditional start of the holiday season for most Americans.""",
                      kurdishText:
                          """جەژنی سوپاسگوزاری سەرەتای لەمێژینەی وەرزی پشووە بۆ زۆرینەی ئەمریکییەکان.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (کردار) بەسەربردنی پشوویەک لە شوێنێک"""),
                    SentencesRow(
                      englishText: """We often holidayed together.""",
                      kurdishText: """زۆرجار پشوومان پێکەوە بەسەر دەبرد.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was holidaying with her family in Ireland.""",
                      kurdishText:
                          """پشووی لەگەڵ خێزانەکەی لە ئێرلەندا بەسەر دەبرد.""",
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