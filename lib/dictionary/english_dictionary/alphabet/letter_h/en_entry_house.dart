import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhouse extends StatefulWidget {
  const EnglishEntryhouse({super.key});

  @override
  State<EnglishEntryhouse> createState() => _EnglishEntryhouseState();
}

class _EnglishEntryhouseState extends State<EnglishEntryhouse> {
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
- Noun: house (Derived forms: houses)
1. A dwelling that serves as living quarters for one or more families
"he has a house on Cape Cod"; "she felt she had to get out of the house"
 
2. The members of a business organization that owns or operates one or more establishments (- firm, business firm)
"he worked for a brokerage house";
 
3. The members of a religious community living together
 
4. The audience gathered together in a theatre or cinema
"the house applauded"; "he counted the house"
 
5. An official assembly having legislative powers
"a bicameral legislature has two houses"
 
6. Aristocratic family line
"the House of York"
 
7. Play in which children take the roles of father, mother or children and pretend to interact like adults
"the children were playing house"
 
8. (astrology) one of 12 equal areas into which the zodiac is divided (- sign of the zodiac, star sign, sign, mansion, planetary house)
 
9. The management of a gambling house or casino
"the house gets a percentage of every bet"
 
10. A social unit living together (- family, household, home, ménage)
"I waited until the whole house was asleep";
 
11. (dramaturgy) a building where theatrical performances or motion-picture shows can be presented (- theater [US], theatre)
"the house was full";
 
12. A building in which something is sheltered or located
"they had a large carriage house"

- Verb: house (Derived forms: housing, houses, housed)
1. Contain or cover
"This box houses the gears"
 
2. Provide someone with accomodation (- put up, domiciliate)
"The immigrants were housed in a new development outside the town";
""",
  );

  final String keyword = "house";
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
    await flutterTts.speak("""house""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was so hot outside we stayed in the house.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He went into the house.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I had to get out of the house.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A light was on inside the house.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""There was a police van parked outside the house.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Let's have a party at my house.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Investors were buying houses to rent them out.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""What time do you leave the house in the morning?""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We're moving house.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""House prices in London are still rising.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They went from house to house, begging for food.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Be quiet or you'll wake the whole house!""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We built a new henhouse for the chickens.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Their offices are on the second floor of Chester House.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The publishing house made its name by encouraging first-time writers.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We met at the coffee house downtown.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Legislation requires approval by both houses of parliament.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I urge the house to vote against the motion.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The government is committed to housing the refugees.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He can barely afford to feed, clothe and house his family.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The losers in this society are people who are homeless or badly housed.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The rabbits were housed individually.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The library houses a collection of 15 000 books.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The gallery houses 2 000 works of modern art.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The new offices will house 600 administration staff.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'hTqtGJwsJVE';
    const double startSecondsend = 889;
    const String videoIdone = 'hFZFjoX2cGg';
    const double startSecondsone = 653;
    const String videoIdtwo = 'NCLZi2Rn_ug';
    const double startSecondstwo = 46;
    const String videoIdthree = 'Pto9L7kjuSM';
    const double startSecondsthree = 0;
    const String videoIdfour = 'QtrRtGC3G_I';
    const double startSecondsfour = 148;
    const String videoIdfive = '_spuxXnul0U';
    const double startSecondsfive = 493;

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
                      word: """house""",
                      // alsoEnglishWord: "also: house",
                      britshText: """IpaUK: /haʊs/""",
                      americanText: """IpaUS: /haʊs/""",
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
کوردی: خانوو، ماڵ، خانە، خان، یانە، جێگا، مەنزڵ، بنەماڵە، (خاوو)خێزان، کەسانێ ماڵێ،	بەرە یان خێزانی پاتشایی،	هۆڵ، ساڵۆن،	ئەنجومەن (لە بریتانیا، ئەنجومەنی گشتی یان ژێرین، ئەنجومەنی هەڵبژێراوان یان ژوورین؛ ئەنجومەنی نوێنەران، لە ئەمریکا)،	دەیر، تەکیە، ڕەبەنگە،	(خوێندنگا) تیم، تیپ، دەستە،	کۆمپانی، ناوکۆیی، دامەزراوەی کارداری، نووسینگە، خانەی بازرگانی،	بینەرانی تیاتر، پێرفۆرمانس لە شانۆدا،	(فەلەکناسی) کەلوو، برج
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) خانوو/ماڵ بۆ ژیان"""),
                    SentencesRow(
                      englishText:
                          """It was so hot outside we stayed in the house.""",
                      kurdishText:
                          """زۆر گەرم بوو لە دەرەوە کە لە ماڵەوە ماینەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He went into the house.""",
                      kurdishText: """چووە ماڵەکەەو.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I had to get out of the house.""",
                      kurdishText: """پێویست بوو لە خانووەکە بێمە دەرەوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """A light was on inside the house.""",
                      kurdishText: """ڕۆشناییەک هەڵکرابوو لەناو خانووەکە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There was a police van parked outside the house.""",
                      kurdishText:
                          """ڤانێکی پۆلیس وەستێنرابوو لە دەرەوەی خانووەکە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Let's have a party at my house.""",
                      kurdishText: """با ئاهەنگێک ساز بکەین لە ماڵەکەم.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Investors were buying houses to rent them out.""",
                      kurdishText:
                          """وەبەرهێنەران خانوویان دەکڕی تاوەکو بیاندەن بە کرێ.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """What time do you leave the house in the morning (= to go to work)?""",
                      kurdishText: """کەی ماڵەوە جێدەهێڵیت لە بەیانیدا؟""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We're moving house (= leaving our house and going to live in a different one).""",
                      kurdishText: """ماڵ بار ئەکەین.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """House prices (= prices of houses and flats) in London are still rising.""",
                      kurdishText:
                          """نرخی خانوو لە لەندەن هێشتا بەرز دەبنەوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They went from house to house, begging for food.""",
                      kurdishText:
                          """خانوو بە خانوو دەگەڕان، سواڵیان بۆ خواردن دەکرد.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) تەواوی ئەو کەسانەی لە خانوویەک دەژین"""),
                    const AlsoEnglishckb(word: "ھەروەھا: household"),
                    SentencesRow(
                      englishText:
                          """Be quiet or you'll wake the whole house!""",
                      kurdishText:
                          """بێ‌دەنگ بە ئەگەرنا تەواوی ماڵەوە خەبەر دەکەیتەوە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) بینایەک کە بۆ مەبەستێکی تایبەتی بەکاردێت"""),
                    SentencesRow(
                      englishText:
                          """We built a new henhouse for the chickens.""",
                      kurdishText:
                          """کولانەیەکی تازەمان بۆ مریشکەکان درووستکرد.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) لە ناوی بینای ئۆفیسدا بەکاردێت"""),
                    SentencesRow(
                      englishText:
                          """Their offices are on the second floor of Chester House.""",
                      kurdishText:
                          """ئۆفیسەکانیان لەسەر نهۆمی دووەمی بینای چێستەرن.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) کۆمپانیایەک کە جۆرە بازرگانییەکی دیاریکراو ئەنجام دەدات"""),
                    SentencesRow(
                      englishText:
                          """The publishing house made its name by encouraging first-time writers.""",
                      kurdishText:
                          """خانە بڵاوکارەکە ناوبانگی دەرکرد بە هاندانی نووسەرە تازەکان.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ناو) چێشتخانەیەک یان قاوەخانە/چاخانە"""),
                    SentencesRow(
                      englishText: """We met at the coffee house downtown.""",
                      kurdishText:
                          """لە قاوەخانەکەی ناوجەرگەی شار یەکمان دی.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) کۆمەڵە کەسێک کە کۆدەبنەوە و یاساکانی وڵاتێکی دیاریکراو دادەنێن؛ لە بەریتانیا هەر یەک لە دوو خانەکەی پەرلەمانە؛ لە ئەمریکا ئەنجوومەنی نوێنەرانە"""),
                    SentencesRow(
                      englishText:
                          """Legislation requires approval by both houses of parliament.""",
                      kurdishText:
                          """یاسادانان پێویستی بە پەسەندکردنی هەردوو خانەی پەرلەمان هەیە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) کۆمەڵە کەسێک کە باس لە شتێک دەکەن لە دیبەیتێکی فەرمی"""),
                    SentencesRow(
                      englishText:
                          """I urge the house to vote against the motion.""",
                      kurdishText:
                          """هانی بەڕێزان دەدەم دەنگ دژ بە پێشنیارەکە بدەن.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) دابینکردنی شوێنی مانەوە بۆ کەس یان ئاژەڵێک"""),
                    SentencesRow(
                      englishText:
                          """The government is committed to housing the refugees.""",
                      kurdishText:
                          """حکومەت پابەندە بە پێدانی شوێن بە پەنابەران.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He can barely afford to feed, clothe and house his family.""",
                      kurdishText:
                          """بە ئاستەنگ دەتوانێت خێزانەکەی تێر بکات و جل و جێگای مانەوەیان بۆ دابین بکات.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The losers in this society are people who are homeless or badly housed.""",
                      kurdishText:
                          """دۆڕاوەکانی کۆمەڵگا ئەو کەسانەن کە بێ‌لانەن یان بە خراپی خانوویان هەیە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The rabbits were housed individually.""",
                      kurdishText:
                          """کەروێشکەکان یەک بە یەک جێگایان پێدەدرا.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (کردار) بوون بەو شوێنەی کە شتێک هەڵدەگیرێت یان شتێک لێیەوە کار دەکات"""),
                    SentencesRow(
                      englishText:
                          """The library houses a collection of 15 000 books.""",
                      kurdishText:
                          """پەرتووکخانەکە کۆکراوەی ١٥٠٠٠ کتێبی لێیە.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The gallery houses 2 000 works of modern art.""",
                      kurdishText:
                          """پێشانگاکە ٢٠٠٠ کاری هونەری مۆدێرنی لێیە.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The new offices will house 600 administration staff.""",
                      kurdishText:
                          """ئۆفیسە تازەکان ٦٠٠ ستافی بەڕێوەبردن لەخۆ دەگرن.""",
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