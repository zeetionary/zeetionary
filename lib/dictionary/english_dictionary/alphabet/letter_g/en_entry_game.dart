import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygame extends StatefulWidget {
  const EnglishEntrygame({super.key});

  @override
  State<EnglishEntrygame> createState() => _EnglishEntrygameState();
}

class _EnglishEntrygameState extends State<EnglishEntrygame> {
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
- Noun: game (Derived forms: games)
1. A contest with rules to determine a winner
"you need four people to play this game"
 
2. A single play of a sport or other contest
"the game lasted two hours"
 
3. An amusement or pastime
"they played word games"; "he thought of his painting as a game that filled his empty time"; "his life was all fun and games"
 
4. Animal hunted for food or sport
 
5. (tennis) a division of play during which one player serves
 
6. (games) the score at a particular point or the score needed to win
"the game is 6 all"; "he is serving for the game"
 
7. The flesh of wild animals that is used for food
 
8. [informal] A secret scheme to do something (especially something underhand or illegal) (- plot, secret plan)
"I saw through his little game from the start";
 
9. The game equipment needed in order to play a particular game
"the child received several games for his birthday"
 
10. Frivolous or trifling behaviour
"for actors, memorizing lines is no game"; "for him, life is all fun and games"
 
11. [informal] Your occupation or line of work (- biz [informal])
"he's in the plumbing game";

- Adjective: game
1. Willing or keen to do something (- up for)
 
2. [informal] Willing to face danger (- gamy, gamey, gritty, mettlesome, spirited, spunky [informal])
 
3. [informal] Disabled in the feet or legs (- crippled, halt [archaic], halting, lame, gimpy [N. Amer, informal])
"a game leg";

- Verb: game (Derived forms: gamer, gamed, games, gamest, gaming)
1. Gamble on something (- bet on, back, gage [archaic], stake, punt)
 
2. Manipulate or exploit a system to one's advantage, esp. in an unfair way (- play)
"game the system of ranking musical hits by including free downloads";
""",
  );

  final String keyword = "game";
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
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""game""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The kids were playing a game with their balloons.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The children invented a new game.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I play online games with my friends.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""How I hated team games at school!""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """Broadcasters have injected vast amounts of money into the game of football.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""They lost their first home game of the season.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We're going to the ball game.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Are you coming to watch the game?""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Let's have a game of table tennis.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""They're in training for the big game.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Manchester United are playing a home game this week.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Last night he played the final game of his career.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """Stretching exercises can help you avoid injury and improve your game.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""She's hoping to participate in the next Olympic Games.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""To stage the Games is an honour.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I always hated games at school.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Sharapova won the opening game of the third set.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""How long have you been in this game?""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I'm new to this game myself.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """I realized that he had been playing a stupid game with me.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The problem with these precise rules is that they can be gamed.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The gas company has gamed the market and figured out how to undermine competition.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He spends most of his free time gaming.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """I don't plan to game on this laptop — I'll use it mainly for watching videos.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She's game for anything.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""We need a volunteer for this exercise. Who's game to try?""");
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
                      word: """game""",
                      // alsoEnglishWord: "also: game",
                      britshText: """IpaUK: /ɡeɪm/""",
                      americanText: """IpaUS: /ɡeɪm/""",
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
کوردی: کایە، گەمە، یاری،	پێشبڕکێ،	جانەوەری کێوی ڕاوی،	ڕاو، نێچیر، گۆشتی ڕاو، گۆشتی گیانەوەری ڕاوی،	دھۆ، فێڵ، کەڵەک،	شۆخی، جەفەنگ،	کار، پیشە، ئیش،	ڕێگا، شێوە،	نەخشە، پڕۆژە،	سەرقاڵی، ڕابواردن، ململانێکان، پێشبڕکێکان، کایەکان، یاری‌یەکان
"""),
// With short examples define "game", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) چالاکییەک کە بۆ خۆشی دەیکەیت و زۆرجار یاسای ھەیە و لە کۆتاییدا دەبەیتەوە یان دەدۆڕێیت"""),
                    SentencesRow(
                      englishText:
                          """The kids were playing a game with their balloons.""",
                      kurdishText:
                          """منداڵەکان بە باڵۆنەکانیان یارییان دەکرد.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The children invented a new game.""",
                      kurdishText: """منداڵەکان یارییەکی تازەیان داھێنا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I play online games with my friends.""",
                      kurdishText: """یاری ئۆنلاین لەگەڵ ھاوڕێیەکانم دەکەم.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) یارییەکی وەرزشی کە یاسای ھەیە و خەڵکی یان تیم دژی یەکدی یاری دەکەن"""),
                    SentencesRow(
                      englishText: """How I hated team games at school!""",
                      kurdishText:
                          """چەندە ڕقم لە یاریی تیم بوو لە قوتابخانە!""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Broadcasters have injected vast amounts of money into the game of football.""",
                      kurdishText:
                          """دەزگا پەخشییەکان پارەی ئێجگار زۆریان خستووەتە ناو یاریی تۆپی پێوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) بۆنەیەکی یاریکردن"""),
                    SentencesRow(
                      englishText:
                          """They lost their first home game of the season.""",
                      kurdishText:
                          """یەکەم یاریی ناو یاریگای خۆیان لە وەرزەکەدا دۆاند.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """We're going to the ball game (= baseball game).""",
                              kurdishText: """دەچین بۆ یاریی بەیسبۆڵەکە.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Are you coming to watch the game?""",
                              kurdishText: """دێیت بۆ سەیری یارییەکە.""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Let's have a game of table tennis.""",
                              kurdishText:
                                  """با یارییەکی تێنسی سەر مێز بکەین.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They're in training for the big game.""",
                              kurdishText:
                                  """ڕاھێنان بۆ یارییە گرنگەکە دەکەین.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Manchester United are playing a home game this week.""",
                              kurdishText:
                                  """مانچێستەر یونایتید ئەم ھەفتەیە لە ناو یاریگای خۆیان یاری دەکەن.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Last night he played the final game of his career.""",
                              kurdishText:
                                  """شەوی ڕابردوو کۆتا یاریی ژیانیی کرد.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) شێوازی یاری کردنی کەسێک"""),
                    SentencesRow(
                      englishText:
                          """Stretching exercises can help you avoid injury and improve your game.""",
                      kurdishText:
                          """ڕاھێنانی کشان دەکرێت یارمەتیت بدەن لە خۆپاراستن لە پێکان و باشترکردنی یاریکردنت.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) بۆنەیەکی ڕێکخراوی وەرزشی گەورە"""),
                    SentencesRow(
                      englishText:
                          """She's hoping to participate in the next Olympic Games.""",
                      kurdishText:
                          """بەھیوایە بەژداری لە یارییەکانی ئۆڵۆمپیاد بکات.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """To stage the Games (= the Olympic Games or a similar event) is an honour.""",
                      kurdishText: """ڕێکخستنی بۆنەکە شانازییەکە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) وەرزش وەک بابەتێک یان چالاکییەک لە قوتابخانە"""),
                    SentencesRow(
                      englishText: """I always hated games at school.""",
                      kurdishText: """ھەمیشە ڕقم لە وەرزش بوو لە قوتابخانە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) لە ھەندێک یاریدا، بۆ نموونە تێنس، بەشێکی خاڵەکانە"""),
                    SentencesRow(
                      englishText:
                          """Sharapova won the opening game of the third set.""",
                      kurdishText:
                          """شاراپۆڤا یەکەم یاریی کۆمەڵەی سێیەمی بردەوە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ناو) جۆرە چالاکی یان بازرگانییەک"""),
                    SentencesRow(
                      englishText: """How long have you been in this game?""",
                      kurdishText: """چەندە لەم کارەدا بوویتە؟""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'm new to this game myself.""",
                      kurdishText: """من بۆ خۆم تازەم لەم جۆرە چالاکییەدا.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (ناو) پلانێکی زیرەکانە و نھێنی"""),
                    SentencesRow(
                      englishText:
                          """I realized that he had been playing a stupid game with me.""",
                      kurdishText: """زانیم کە پلانێکی گەمژانەی دژم دەگێڕا.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (کردار) بەکارھێنانی یاساکانی سیستەمێک بە شێوەیەک کە دەتەوێت لە بەرژەوەندیی خۆت"""),
                    SentencesRow(
                      englishText:
                          """The problem with these precise rules is that they can be gamed.""",
                      kurdishText:
                          """کێشەی ئەم یاسا دیاریکراوانە ئەوەیە کە دەکرێت دەستکاری بکرێن.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The gas company has gamed the market and figured out how to undermine competition.""",
                      kurdishText:
                          """کۆمپانیا گازییەکە دەستکاریی بازاڕی کردووە و فێربووە کە چۆن ڕکابەری دابمرکێنێتەوە.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (کردار) ئەنجامدانی یاریی کۆمپیوتەر"""),
                    SentencesRow(
                      englishText:
                          """He spends most of his free time gaming.""",
                      kurdishText:
                          """زۆرینەی کاتی بەتاڵی بە یاریکردن بەسەر دەبات.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I don't plan to game on this laptop — I'll use it mainly for watching videos.""",
                      kurdishText:
                          """پلانم نییە یاری بەم لاپتۆپە بکەم ـ بە شێوەی سەرەکی بۆ سەیری ڤیدیۆ بەکاریدێنم.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (ھاوەڵناو) کە ئامادەیە بۆ کردنی شتێکی تازە، سەخت، یان گران"""),
                    SentencesRow(
                      englishText: """She's game for anything.""",
                      kurdishText: """ئامادەی ھەموو شتێکە.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We need a volunteer for this exercise. Who's game to try?""",
                      kurdishText:
                          """پێویستیمان بە خۆبەخشێکە بۆ ئەم ڕاھێنانە. کێ ئامادەیە تاقی بکاتەوە؟""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
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

const String _videoIdend = 'hFZFjoX2cGg';
const double _startSecondsend = 291;
const String _videoIdone = 'rPe4yziWiOg';
const double _startSecondsone = 641;
const String _videoIdtwo = 'R_fZjGm2OrM';
const double _startSecondstwo = 154;
const String _videoIdthree = '_Z0ZQT0FttM';
const double _startSecondsthree = 4738;
const String _videoIdfour = 'gmr41ht2Sq4';
const double _startSecondsfour = 190;
const String _videoIdfive = 'GYMF5mhuBUE';
const double _startSecondsfive = 9;

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