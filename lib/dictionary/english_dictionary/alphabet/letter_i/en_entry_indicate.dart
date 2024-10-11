import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryindicate extends StatefulWidget {
  const EnglishEntryindicate({super.key});

  @override
  State<EnglishEntryindicate> createState() => _EnglishEntryindicateState();
}

class _EnglishEntryindicateState extends State<EnglishEntryindicate> {
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
- Verb: indicate (Derived forms: indicates, indicated, indicating)
1. Be a signal for or a symptom of (- bespeak, betoken [archaic], point, signal)
"These symptoms indicate a serious illness";
 
2. Make clear (e.g. with a sign) which place, direction, person, or thing; either spatially or figuratively (- point, designate, show)
"he indicated his opponents";
 
3. To state or express briefly
"indicated his wishes in a letter"
 
4. Give evidence of (- argue)
"The results indicate the need for more work";
 
5. Suggest the necessity of an intervention; in medicine
"Tetracycline is indicated in such cases"
""",
  );

  final String keyword = "indicate";
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
    await flutterTts.speak("""indicate""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Initial tests indicate the presence of oxygen.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Although the president promised to foster unity, his actions have indicated otherwise.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Research indicates that eating habits are changing fast.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Our results indicate how misleading it could be to rely on this method.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The article claims that an increase in crime indicates a decline in moral standards.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """A red sky at night often indicates fine weather the next day.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Early results indicate that the government will be returned to power.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """These figures indicate to me that the company is in serious trouble.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """These facts would seem to indicate that the family was wealthy.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In his letter he indicated to us (that) he was willing to cooperate.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He indicated his willingness to cooperate.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Has she indicated yet whether she would like to be involved?""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In a key speech, the Queen indicated that she was willing to pay tax.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She took out a map and indicated the quickest route to us.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She indicated that I was to sit down.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The results are indicated in Table 2.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""This sign usually indicates a pedestrian zone.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """You are allowed 20  kg of baggage unless indicated otherwise on your ticket.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Please indicate clearly which colour you require.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """When the temperature gauge indicates 30°C or more, turn off the engine.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Always indicate before moving into another lane.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He indicated left and then turned right.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A course of chemotherapy was indicated.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'dtp6b76pMak';
    const double startSecondsend = 1529;
    const String videoIdone = 'PkUg89kLLBE';
    const double startSecondsone = 1399;
    const String videoIdtwo = 'B35E8QleVhg';
    const double startSecondstwo = 114;
    const String videoIdthree = 'dhgEpr87Yac';
    const double startSecondsthree = 316;
    const String videoIdfour = 'FXRhzVGUsuU';
    const double startSecondsfour = 167;
    const String videoIdfive = 'VES_MQMLofc';
    const double startSecondsfive = 91;

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
                      word: """indicate""",
                      // alsoEnglishWord: "also: indicate",
                      britshText: """IpaUK: /ˈɪndɪkeɪt/""",
                      americanText: """IpaUS: /ˈɪndɪkeɪt/""",
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
// With short examples define "indicate", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) پیشاندانی ئەوەی شتێک بوونی هەیە یان ڕاستە"""),
                    SentencesRow(
                      englishText:
                          """Initial tests indicate the presence of oxygen.""",
                      kurdishText:
                          """تاقیکردنەوە سەرەتاییەکان ئاماژە بە بوونی ئۆکسجین دەکەن.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Although the president promised to foster unity, his actions have indicated otherwise.""",
                      kurdishText:
                          """ئەگەرچی سەرۆک بەڵێنی دا یەکگرتووی درووست بکات، کردارەکانی پێچەوانەکەی پیشان داوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Research indicates that eating habits are changing fast.""",
                      kurdishText:
                          """توێژینەوە ئەوە دەردەخات کە خووەکانی نانخواردن زوو دەگۆڕێن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Our results indicate how misleading it could be to rely on this method.""",
                      kurdishText:
                          """ئەنجامەکانمان ئەوە دەردەخەن کە چەند دەکرێت چەواشەکار بێت کە پشت بەم ڕێگایە ببەستیت.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The article claims that an increase in crime indicates a decline in moral standards.""",
                      kurdishText:
                          """وتارەکە بانگەشەی ئەوە دەکات کە زیادبوونی تاوان دەرخەری دابەزینی ستانداردە ئەخلاقییەکانە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (کردار) بوون بە ئاماژەی شتێک"""),
                    SentencesRow(
                      englishText:
                          """A red sky at night often indicates fine weather the next day.""",
                      kurdishText:
                          """ئاسمانی سوور لە شەودا زۆرجار ئاماژەیە بە کەشووهەوای خۆش لە ڕۆژی دواتردا.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Early results indicate that the government will be returned to power.""",
                      kurdishText:
                          """ئەنجامە سەرەتاییەکان ئەوە دەردەخەن کە حکومەت دەگەڕێندرێتەوە دەسەڵات.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """These figures indicate to me that the company is in serious trouble.""",
                      kurdishText:
                          """ئەم ئامارانە ئەوە دەردەخەن کە کۆمپانیاکە لە کێشەی گەورەیە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """These facts would seem to indicate that the family was wealthy.""",
                      kurdishText:
                          """ئەم ڕاستییانە وادیارە ئەوە دەردەخەن کە خێزانەکە دەوڵەمەند بوو.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) باسکردنی شتێک، بە تایبەتی بە ناڕاستەوخۆ"""),
                    SentencesRow(
                      englishText:
                          """In his letter he indicated to us (that) he was willing to cooperate.""",
                      kurdishText:
                          """لە نامەکەیدا پەیامی ئەوەی پێمان دا کە ئامادەیە بۆ هاوئاهەنگی کردن.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He indicated his willingness to cooperate.""",
                      kurdishText: """ئامادەیی بۆ هاوئاهەنگی پیشان دا.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Has she indicated yet whether she would like to be involved?""",
                      kurdishText:
                          """تا ئێستا ئەوەی ڕاگەیاندووە کە حەز بکات بەژدار ببێت؟""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In a key speech, the Queen indicated that she was willing to pay tax.""",
                      kurdishText:
                          """لە وتارێکی گرنگدا شاژن ئەوەی ڕاگەیاند ئامادەیە باج بدات.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) واکردنی ئەوەی کەسێک تێبینی ک/شت بکات"""),
                    SentencesRow(
                      englishText:
                          """She took out a map and indicated the quickest route to us.""",
                      kurdishText:
                          """نەخشەیەکی دەرهێنا و خێراترین ڕێگای پیشانمان دا.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She indicated that I was to sit down.""",
                      kurdishText: """پیشانی دام کە دەبێت دابنیشم.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) پیشاندانی زانیاری بەبێ بەکارهێنانی وشە"""),
                    SentencesRow(
                      englishText: """The results are indicated in Table 2.""",
                      kurdishText: """ئەنجامەکان لە خشتەی ٢ پیشان دراون.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This sign usually indicates a pedestrian zone.""",
                      kurdishText:
                          """ئەم نیشانەیە زۆرجار ناوچەی پیادەڕەوان پیشان دەدات.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (کردار) پێدانی زانیاری بە نووسین"""),
                    SentencesRow(
                      englishText:
                          """You are allowed 20  kg of baggage unless indicated otherwise on your ticket.""",
                      kurdishText:
                          """ڕێگات پێدەدرێت ٢٠ کیلۆگرام لە کەلووپەلت پێبێت مەگەر ئەوەی شتێکی دیکە نووسرا بێت.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Please indicate clearly which colour you require.""",
                      kurdishText:
                          """تکایە بە ڕوونی بنووسە چی ڕەنگێکت دەوێت.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) کە پێوەرێکی دیاریکراو پیشان دەدات"""),
                    SentencesRow(
                      englishText:
                          """When the temperature gauge indicates 30°C or more, turn off the engine.""",
                      kurdishText:
                          """کە گێچی پلەی گەرمییەکە ٣٠ پلەی سیلیزی یان زیاتر پیشان دەدات، بزوێنەرەکە بکوژێنەرەوە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) پیشاندانی ئەوەی کە پێڕۆکەت ئاراستە دەگۆڕێت بە پەکارهێنانی لایت یان باڵت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: signal"),
                    SentencesRow(
                      englishText:
                          """Always indicate before moving into another lane.""",
                      kurdishText:
                          """هەمیشە ئاماژە دابگیرسێنە پێش ئەوەی هێڵەکەت بگۆڕیت.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He indicated left and then turned right.""",
                      kurdishText:
                          """بەرەو چەپ ئاماژەی کرد و دواتر بۆ ڕاست پێچی کردەوە.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) ئەوەی کە پێویست بێت یان پێشنیارکراو بێت"""),
                    SentencesRow(
                      englishText:
                          """A course of chemotherapy was indicated.""",
                      kurdishText:
                          """ماوەیەک لە چارەسەری کیمیایی پێشنیار کرا.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
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
