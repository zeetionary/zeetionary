import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryintroduce extends StatefulWidget {
  const EnglishEntryintroduce({super.key});

  @override
  State<EnglishEntryintroduce> createState() => _EnglishEntryintroduceState();
}

class _EnglishEntryintroduceState extends State<EnglishEntryintroduce> {
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
- Verb: introduce (Derived forms: introduced, introduces, introducing)
1. Cause to come to know personally (- present, acquaint)
"introduce the new neighbours to the community";
 
2. Bring something new to an environment (- innovate)
"A new word processor was introduced";
 
3. Place, fit, or thrust (something) into another thing (- insert, enclose, inclose, stick in, put in)
 
4. Bring in a new person or object into a familiar environment (- bring in)
"The new secretary introduced a nasty rumour";
 
5. Bring in or establish in a new place or environment
"introduce a rule"; "introduce exotic fruits"
 
6. Place onto or put into something (- insert, infix, enter)
"introduce a picture into the text";
 
7. Bring before the public for the first time, as of an actor, song, etc. (- bring out)
 
8. Put before (a body)
"introduce legislation"
 
9. Furnish with a preface or introduction (- precede, preface, premise)
"She always introduces her lectures with a joke";
 
10. Be a precursor of (- inaugurate, usher in)
"The fall of the Berlin Wall introduced the post-Cold War period";
""",
  );

  final String keyword = "introduce";
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
    await flutterTts.speak("""introduce""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Allow me to introduce my mother.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The lead singer introduced each member of the band.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He introduced me as a new member of the company.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He introduced me to a Greek girl at the party.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She was introduced to me as a well-known novelist.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Can I introduce myself? I'm Helen Robins.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She made sure she introduced herself to all her new colleagues.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The next programme will be introduced by Mary David.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Introduce the topic and briefly state your own opinion.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Each new idea should be introduced in a new paragraph.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The first lecture introduces students to the main topics of the course.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She has developed her love of archery since being introduced to the sport by a workmate.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It was she who first introduced the pleasures of sailing to me.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Legislation will be introduced to ban the sale of these products to children.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The new law was introduced in 2021.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Psychologists first introduced the term in the early 1990s.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We are going to introduce a few changes to the system.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The company is introducing a new range of products this year.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Bands from London introduced the craze for this kind of music.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Some new species were introduced accidentally to Australia from Europe.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Vegetation patterns changed when goats were introduced to the island.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Diseases were inadvertently introduced into the environment by settlers.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They will introduce a bill before Parliament next week.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Particles of glass had been introduced into the baby food.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Measurement error could have been introduced by respondents' recall errors.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'UpdoyBhrfI4';
    const double startSecondsend = 101;
    const String videoIdone = 'ky3KiiUK_D0';
    const double startSecondsone = 122;
    const String videoIdtwo = '4zAkoXyhrdI';
    const double startSecondstwo = 69;
    const String videoIdthree = 'btaJNZ2XyK0';
    const double startSecondsthree = 93;
    const String videoIdfour = 'yziZp5NltWM';
    const double startSecondsfour = 259;
    const String videoIdfive = '0omjeOt-U6w';
    const double startSecondsfive = 49;

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
                      word: """introduce""",
                      // alsoEnglishWord: "also: introduce",
                      britshText: """IpaUK: /ˌɪntrəˈdjuːs/""",
                      americanText: """IpaUS: /ˌɪntrəˈduːs/""",
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
// With short examples define "introduce", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) ناساندنی خەڵکی بە یەکدی کە پێشووتر یەکیان نەدیوە"""),
                    SentencesRow(
                      englishText: """Allow me to introduce my mother.""",
                      kurdishText: """ڕێگام بدە دایکم بناسێنم.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The lead singer introduced each member of the band.""",
                      kurdishText:
                          """گۆرانیبێژە سەرەکییەکە هەر یەکێک لە ئەندامانی باندەکەی ناساند.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He introduced me as a new member of the company.""",
                      kurdishText:
                          """وەک ئەندامێکی تازەی کۆمپانیاکە ناساندمی.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He introduced me to a Greek girl at the party.""",
                      kurdishText: """لە ئاهەنگەکە ناساندمی بە کچێکی یۆنانی.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was introduced to me as a well-known novelist.""",
                      kurdishText: """وەک ڕۆماننوسێکی ناسراو پێمناسرا.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Can I introduce myself? I'm Helen Robins.""",
                      kurdishText: """دەتوانم خۆم بناسێنم؟ هێلین ڕۆبنزم.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She made sure she introduced herself to all her new colleagues.""",
                      kurdishText:
                          """دڵنیایی کردەوە کە خۆی بە هەموو هاوکارەکانی بناسێنێت.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) ئەوەی ببیت بە قسەکاری سەرەکی لە پڕۆگرامێکی ڕادیۆیی یان تەلەفیزیۆنی، وردەکاری بدەیت سەبارەت بە پڕۆگرامەکە و کەسەکانی ناوی بناسێنیت"""),
                    SentencesRow(
                      englishText:
                          """The next programme will be introduced by Mary David.""",
                      kurdishText:
                          """پڕۆگرامی دواتر لەلایەن ماری دەیڤید پێشکەش دەکرێت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) ناوهێنانی شتێک بە یەکەم جار لە نووسینێکدا"""),
                    SentencesRow(
                      englishText:
                          """Introduce the topic and briefly state your own opinion.""",
                      kurdishText:
                          """بابەتەک بناسێنە و بە کورتی بۆچوونی خۆت دەرببڕە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Each new idea should be introduced in a new paragraph.""",
                      kurdishText:
                          """هەر بیرۆکەیەکی تازە دەبێت لە پەرەگرافێکی تازەدا بناسرێت.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) واکردنی ئەوەی کەسێک لەسەر شتێک فێر ببێت یان شتێک بۆ یەکەم جار بکات"""),
                    SentencesRow(
                      englishText:
                          """The first lecture introduces students to the main topics of the course.""",
                      kurdishText:
                          """یەکەم وانە خوێندکارەکان دەناسێنێت بە بابەتە سەرەکییەکانی کۆرسەکە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She has developed her love of archery since being introduced to the sport by a workmate.""",
                      kurdishText:
                          """خۆشەویستی بۆ تیر و کەوان سەربڕیوە لەوەتەی ناسێندراوە بە وەرزشەکە لەلایەن هاوڕێیەکی.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It was she who first introduced the pleasures of sailing to me.""",
                      kurdishText:
                          """ئەوە ئەو بوو کە بۆ یەکەم جار خۆشییەکانی بەلەمەوانی پێم ناساند.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) بەردەستخستنی شتێک بۆ بەکارهێنان، باسکردن، هتد بۆ یەکەم جار"""),
                    const AlsoEnglishckb(
                        word: "ھەروەھا: bring somebody/something in"),
                    SentencesRow(
                      englishText:
                          """Legislation will be introduced to ban the sale of these products to children.""",
                      kurdishText:
                          """یاسا دەردەکرێت بۆ قەدەغەکردنی فرۆشتنی ئەم بەرهەمانە بە منداڵان.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The new law was introduced in 2021.""",
                      kurdishText: """یاسا تازەکە لە ساڵی ٢٠٢١ دەرکرا.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Psychologists first introduced the term in the early 1990s.""",
                      kurdishText:
                          """دەروونناسان یەکەم جار دەستەواژەکەیان لە ساڵانی ١٩٩٠ ـەکان ناساند.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We are going to introduce a few changes to the system.""",
                      kurdishText:
                          """ژمارەیەک گۆڕانکاری بۆ سیستەمەکە ڕادەگەیەنین.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The company is introducing a new range of products this year.""",
                      kurdishText:
                          """کۆمپانیاکە ژمارەیەکی تازە لە بەرهەم بۆ ئەمساڵ ڕادەگەیەنێت.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (کردار) بوون بە سەرەتای شتێکی تازە"""),
                    SentencesRow(
                      englishText:
                          """Bands from London introduced the craze for this kind of music.""",
                      kurdishText:
                          """باندەکانی لەندەن حەزیان بۆ ئەم جۆرە میوزیکە درووست کرد.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) هێنانی نەخۆشی، پلان، یان نەخۆشی بۆ یەکەم جار بۆ شوێنێک"""),
                    SentencesRow(
                      englishText:
                          """Some new species were introduced accidentally to Australia from Europe.""",
                      kurdishText:
                          """هەندێک چەشنی ئاژەڵ بە ڕێکەوت هێندران بۆ ئوسترالیا لە ئەورووپاوە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Vegetation patterns changed when goats were introduced to the island.""",
                      kurdishText:
                          """شێوازەکانی گژووگیا سەوزبوون گۆڕان کە بزن هێندرا بۆ دوورگەکە.""",
                      englishNote:
                          """This means that the way plants grew on the island was altered after goats were brought there. The introduction of goats affected the distribution and growth of vegetation, likely due to their grazing habits.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Diseases were inadvertently introduced into the environment by settlers.""",
                      kurdishText:
                          """نەخۆشییەکان بە ڕێکەوت هێندران بۆ ژینگەکە لەلایەن دانیشتووەکانەوە.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) بە فەرمی ناساندنی یاسایەکی تازە بۆ ئەوەی بخرێتە بەر باس"""),
                    SentencesRow(
                      englishText:
                          """They will introduce a bill before Parliament next week.""",
                      kurdishText:
                          """هەفتەی داهاتوو پڕۆژە یاسایەک دەخەنە پێش پەرلەمان.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (کردار) دانانی شتێک لەناو شتێک"""),
                    SentencesRow(
                      englishText:
                          """Particles of glass had been introduced into the baby food.""",
                      kurdishText:
                          """پارچە شووشە کەوتبوونە ناو خواردنی منداڵەکەوە.""",
                      englishNote:
                          """This means that tiny pieces of glass were found inside the baby food, likely put there unintentionally. The glass particles became part of the food, posing a potential danger.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (کردار) بوون بە هۆکاری هەڵە"""),
                    SentencesRow(
                      englishText:
                          """Measurement error could have been introduced by respondents' recall errors.""",
                      kurdishText:
                          """هەڵەی پێوان دەکرێت درووست بووبن بە هەڵەی بیرکەوتنەوەی وەڵامدەران.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
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
// end introduce
