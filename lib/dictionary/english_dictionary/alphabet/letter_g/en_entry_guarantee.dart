import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryguarantee extends StatefulWidget {
  const EnglishEntryguarantee({super.key});

  @override
  State<EnglishEntryguarantee> createState() => _EnglishEntryguaranteeState();
}

class _EnglishEntryguaranteeState extends State<EnglishEntryguarantee> {
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
- Verb: guarantee (Derived forms: guarantees, guaranteeing, guaranteed)
1. Give surety or assume responsibility (- vouch)
 
2. Make certain in the future (- ensure, insure, assure, secure)
"Preparation will guarantee success!";
 
3. Promise to do or accomplish (- undertake)
"guarantee to free the prisoners";
 
4. Stand behind and guarantee the quality, accuracy, or condition of (- warrant)
"The dealer guarantees all the cars he sells";

- Noun: guarantee (Derived forms: guarantees)
1. A written assurance that some product or service will be provided or will meet certain specifications (- warrant, warrantee, warranty)
"the ending of guarantee period";
 
2. An unconditional commitment that something will happen or that something is true
"there is no guarantee that they are not lying"
 
3. A collateral agreement to answer for the debt of another in case that person defaults (- guaranty)
""",
  );

  final String keyword = "guarantee";
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
    await flutterTts.speak("""guarantee""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Basic human rights, including freedom of speech, are now guaranteed.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They told the workers to leave, saying they could not guarantee their safety.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We cannot guarantee (that) our flights will never be delayed.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The ticket will guarantee you free entry.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""All our electrical goods are fully guaranteed.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Tonight's victory guarantees the team's place in the final.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""These days getting a degree doesn't guarantee you a job.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The outcome is by no means guaranteed.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His father agreed to guarantee the bank loan.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They are demanding certain guarantees before they sign the treaty.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He gave me a guarantee that it would never happen again.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The demonstrators were demanding guarantees for fair elections.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We didn't get any firm guarantee of a loan.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The television comes with a year's guarantee.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We provide a 5-year guarantee against rust.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The watch is still under guarantee.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Career success is no guarantee of happiness.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Arriving early is no guarantee of getting a place.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There's no guarantee that she'll come.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We had to offer our house as a guarantee when getting the loan.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """A close relative, usually a parent, can provide a guarantee for the loan.""");
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
                      word: """guarantee""",
                      // alsoEnglishWord: "also: guarantee",
                      britshText: """IpaUK: /ˌɡærənˈtiː/""",
                      americanText: """IpaUS: /ˌɡærənˈtiː/""",
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
کوردی: 	دەستەبەری، دابینی، کەفالەت، زەمانەت،	دەستەبەرنامە، زەمانەت‌نامە،	دەستەبەرکردن،	دەستەبەر، زامن، کەفیل،	بارمتە، سپاردە،	بەڵێنی
"""),
// With short examples define "guarantee", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) بەڵێندانی ئەوەی شتێک بکەیت؛ بەڵێن دانی ئەوەی شتێک ڕوودەدات"""),
                    SentencesRow(
                      englishText:
                          """Basic human rights, including freedom of speech, are now guaranteed.""",
                      kurdishText:
                          """مافە سەرەتاییەکانی مرۆڤ، لە نێوانیاندا ئازادیی ڕادەربڕین، ئێستا دەستەبەرکراون.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They told the workers to leave, saying they could not guarantee their safety.""",
                      kurdishText:
                          """بە کرێکارەکانیا گوت بڕۆن، بە گوتنی ئەوەی گەرەنتی سەلامەتییان ناکەن.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We cannot guarantee (that) our flights will never be delayed.""",
                      kurdishText:
                          """ناتوانین دڵنیایی ئەوە بکەین کە گەشتەکانمان هەرگیز دوا ناکەون.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The ticket will guarantee you free entry.""",
                      kurdishText:
                          """بلیتەکە چوونەژوورەوەی بێ‌بەرامبەرت پێدەدات.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) پێدانی نووسراوێک بۆ ئەوەی کە بەرهەمێک بێ‌بەرامبەر چاکدەکەیتەوە یان دەیگۆڕیتەوە ئەگەر خراپ ببێت"""),
                    SentencesRow(
                      englishText:
                          """All our electrical goods are fully guaranteed.""",
                      kurdishText:
                          """هەموو کەلووپەلە کارەباییەکانمان تەواو گەرەنتییان هەیە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) ئەوەی ڕوودانی شتێک دڵنیا بکەیتەوە"""),
                    SentencesRow(
                      englishText:
                          """Tonight's victory guarantees the team's place in the final.""",
                      kurdishText:
                          """سەرکەوتنی ئەمشەو جێگای تیمەکە لە یاریی کۆتایی مسۆگەر دەکات.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """These days getting a degree doesn't guarantee you a job.""",
                      kurdishText:
                          """ئەم ڕۆژانە بەدەستخستنی بڕوانامە وەرگرتنی کارت بۆ مسۆگەر ناکات.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (کردار) دڵنیابوون لەوەی شتێک ڕوودەدات"""),
                    SentencesRow(
                      englishText: """The outcome is by no means guaranteed.""",
                      kurdishText:
                          """دەرەنجامەکە بە هیچ شێوەیەک گەرەنتی نەکراوە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) بوونە بە بەرپرس لە ڕووی یاساییەوە بۆ کەسێکی دیکە"""),
                    SentencesRow(
                      englishText:
                          """His father agreed to guarantee the bank loan.""",
                      kurdishText:
                          """باوکی ڕازی بوو ببێت بە کەفیلی قەرزە بانکییەکە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) بەڵێنی فەرمی ئەوەی کە شتێک دەکەیت یان شتێک ڕوودەدات"""),
                    const AlsoEnglishckb(word: "ھەروەھا: assurance"),
                    SentencesRow(
                      englishText:
                          """They are demanding certain guarantees before they sign the treaty.""",
                      kurdishText:
                          """داوای گەرەنتیی دڵنیایی دەکەن پێش ئەوەی پەیماننامەکە واژۆ بکەن.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He gave me a guarantee that it would never happen again.""",
                      kurdishText:
                          """بەڵێنی ئەوەی پێدام کە هەرگیز دووبارە ڕووناداتەوە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The demonstrators were demanding guarantees for fair elections.""",
                      kurdishText:
                          """خۆپیشاندەرەکان داوای دڵنیایی هەڵبژاردنی ئازادیان دەکرد.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We didn't get any firm guarantee of a loan.""",
                      kurdishText: """هیچ بەڵێنی مسۆگەری قەرزێکمان وەرنەگرت.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) بەڵێنی نووسراوی کۆمپانیایەک کە بەرهەمێک بێ‌بەرامبەر چاکدەکاتەوە یان دەیگۆڕێتەوە ئەگەر خراپ ببێت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: warranty"),
                    SentencesRow(
                      englishText:
                          """The television comes with a year's guarantee.""",
                      kurdishText:
                          """تەلەفیزیۆنەکە گەرەنتی یەک ساڵی لەگەڵ دەبێت.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We provide a 5-year guarantee against rust.""",
                      kurdishText: """گەرەنتی ٥ ساڵ دژ بە ژەنگ دەکەین .""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The watch is still under guarantee.""",
                      kurdishText: """کاتژمێرەکە هێشتا (کاتی) گەرەنتی ماوە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) شتێک کە دڵنیایی لە ڕوودانی شتێکی دیکە دەکات"""),
                    SentencesRow(
                      englishText:
                          """Career success is no guarantee of happiness.""",
                      kurdishText:
                          """سەرکەوتن لە کاردا هیچ گەرەنتی سەرکەوتن نییە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Arriving early is no guarantee of getting a place.""",
                      kurdishText:
                          """زوو گەشتن هیچ مسۆگەری نابێت بۆ هەبوونی شوێنێکی باش.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There's no guarantee that she'll come (= she may not come).""",
                      kurdishText: """هیچ مسۆگەرییەک نییە کە دێت.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) پارە یان شتێکی گران‌بەها کە بەڵێن دەدەیت بیدەیت بە بانکێک"""),
                    SentencesRow(
                      englishText:
                          """We had to offer our house as a guarantee when getting the loan.""",
                      kurdishText:
                          """پێویست بوو خانووەکەمان وەک گەرەنتی بخەوێنین لە کاتی وەرگرتنی قەرزەکە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (ناو) نووسراوی فەرمی بۆ دانەوەی قەرزی کەسێک یان کردنی شتێک کە کەسێک خۆی نەتوانێت بیکات"""),
                    SentencesRow(
                      englishText:
                          """A close relative, usually a parent, can provide a guarantee for the loan.""",
                      kurdishText:
                          """خزمێکی نزیک، زۆرجار دایباب، دەتوانن ببن بە کەفیل بۆ قەرزەکە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
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
const String _videoIdend = 'https://youtu.be/hS2x1zl4rn0?t=';
const double _startSecondsend = 000000000000000000000000000728;
const String _videoIdone = 'https://youtu.be/zqllxbPWKNI?t=';
const double _startSecondsone = 0;
const String _videoIdtwo = 'https://youtu.be/DWmGArQBtFI?t=';
const double _startSecondstwo = 000000000000000000000000000134;
const String _videoIdthree = 'https://youtu.be/NLw53N3zz1Y?t=';
const double _startSecondsthree = 00000000000000000000000000037;
const String _videoIdfour = 'https://youtu.be/U6M-YT5kkio?t=';
const double _startSecondsfour = 00000000000000000000000000054;
const String _videoIdfive = 'https://youtu.be/RjDtShxr9Uc?t=';
const double _startSecondsfive = 0000000000000000000000000001549;

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