import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhot extends StatefulWidget {
  const EnglishEntryhot({super.key});

  @override
  State<EnglishEntryhot> createState() => _EnglishEntryhotState();
}

class _EnglishEntryhotState extends State<EnglishEntryhot> {
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
- Adjective: hot (Derived forms: hotter, hottest)
1. Used of physical heat; having a high or higher than desirable temperature or giving off heat or feeling or causing a sensation of heat or burning
"hot stove"; "hot water"; "a hot August day"; "a hot stuffy room"; "she's hot and tired"; "a hot forehead"
 
2. Producing a burning sensation on the taste nerves (- spicy)
"hot salsa"; "jalapeño peppers are very hot";
 
3. (extended meanings, especially of psychological heat) marked by intensity or vehemence especially of passion or enthusiasm
"a hot temper"; "a hot topic"; "a hot new book"; "a hot love affair"; "a hot argument"
 
4. [informal] Characterized by violent and forceful activity or movement; very intense (- raging)
"the fighting became hot and heavy"; "a hot engagement";
 
5. [informal] Having or showing great eagerness or enthusiasm
"hot for travel"
 
6. [informal] Marked by excited activity
"a hot week on the stock market"
 
7. (colour) bold and intense
"hot pink"
 
8. Very fast; capable of quick response and great speed (- blistering, red-hot)
"a hot sports car"; "got off to a hot start"; "in hot pursuit"; "a red-hot line drive";
 
9. [informal] Performed or performing with unusually great skill and daring and energy
"a hot drummer"; "he's hot tonight"
 
10. [informal] Very popular or successful
"one of the hot young talents"; "cabbage patch dolls were hot last season"
 
11. Very unpleasant or even dangerous
"make it hot for him"; "in the hot seat"; "in hot water"
 
12. Newest or most recent (- red-hot)
"news hot off the press"; "red-hot information";
 
13. [informal] Having or bringing unusually good luck
"hot at craps"; "the dice are hot tonight"
 
14. [informal] Very good; often used in the negative
"he's hot at maths but not so hot at history"
 
15. Made recently
"a hot scent"
 
16. [informal] Of a seeker; very near to the object sought
"you are hot"
 
17. [informal] Having or dealing with dangerously high levels of radioactivity
"hot fuel rods"; "a hot laboratory"
 
18. [informal] (electricity) charged or energized with electricity (- live)
"a hot wire";
 
19. [informal] Wanted by the police
"a hot suspect"
 
20. [informal] Recently stolen or smuggled
"hot merchandise"; "a hot car"
 
21. [informal] Sexually excited or exciting
"was hot for her"; "hot pants"
 
22. [informal] Sexually attractive (- sexy [informal], lush [Brit, informal], dishy [Brit, informal], tasty [Brit, informal], smoking [informal], yummy [informal])
"our new lecturer is hot";
""",
  );

  final String keyword = "hot";
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
    await flutterTts.speak("""hot""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's hot today, isn't it?""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was hot and getting hotter.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do you like this hot weather?""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was the hottest July on record.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""All rooms have hot and cold water.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'll feel better after a hot bath.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Cook in a very hot oven.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Cook in a very hot oven.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The food should stay hot until we're ready to eat.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The food should stay hot until we're ready to eat.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The ground was hot enough to fry an egg on.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The sun shone fiercely down and it grew hotter and hotter.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Is anyone too hot?""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I feel hot.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her cheeks were hot with embarrassment.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her cheeks were hot with embarrassment.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't you feel hot so close to the fire?""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I was feeling a bit hot so I went outside for a moment.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""London was hot and dusty.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It had been a long hot journey.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was unbearably hot in the car.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This weather's a bit hot for me.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He brought out a plate of sausages covered in hot mustard.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I love really hot food.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Today we enter the hottest phase of the election campaign.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The environment has become a very hot issue.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Competition is getting hotter day by day.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They're making life hot for her.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""When things got too hot most journalists left the area.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This is one of the hottest clubs in town.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They are one of this year's hot new bands.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I've got some hot gossip for you!""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do you have any hot tips for today's race?""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Don't ask me—I'm not too hot on British history.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He had a hot temper and his colleagues learned to approach him with caution.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's really hot!""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm hot for you, baby.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Some of the nude scenes were regarded as too hot for children.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They're very hot on punctuality at work.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'b-joNU9em1w';
    const double startSecondsend = 10;
    const String videoIdone = 'hFZFjoX2cGg';
    const double startSecondsone = 624;
    const String videoIdtwo = 'hTqtGJwsJVE';
    const double startSecondstwo = 987;
    const String videoIdthree = 'Ht0IbFNbfSY';
    const double startSecondsthree = 134;
    const String videoIdfour = 'bRVueBoZjEA';
    const double startSecondsfour = 85;
    const String videoIdfive = 'bYG1aBU9cI4';
    const double startSecondsfive = 134;

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
                      word: """hot""",
                      // alsoEnglishWord: "also: hot",
                      britshText: """IpaUK: /hɒt/""",
                      americanText: """IpaUS: /hɑːt/""",
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
کوردی: بەتین، گەرم، داغ، داخ،	(هەزوێڵە) توند، توندوتیژ، تیژ،	توند، توندوتیژ، سەخت،	بەگوڕ، گەرم‌وگوڕ، بەتاو، بەتین،	زووتووڕە، جینگزی، هەڵتۆز، سەرتوند، فیشەکی،	(هەواڵەکان) تازە، نوێ، تازەهاتوو، گەرم، مۆر،	شارەزا، سەرەندەرکردوو، لێزان،	(موسیقا بەتایبەت جاز) بەسۆز، ڕادیۆئەکتیڤ،	پڕمەترسی، مەترسیدار،	(شت) دزێتی، دزراو
"""),
                    const DefinitionKurdish(text: """١. (ھاوەڵناو) گەرم"""),
                    SentencesRow(
                      englishText: """It's hot today, isn't it?""",
                      kurdishText: """ئەمڕۆ گەرمە، وانییە؟""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """It was hot and getting hotter.""",
                              kurdishText: """گەرم بوو و گەرمتر دەبوو.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Do you like this hot weather?""",
                              kurdishText: """حەزت بەم کەشووهەوا گەرمەیە؟""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It was the hottest July on record.""",
                              kurdishText:
                                  """گەرمترین تەممووز بوو لە مێژوودا.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """All rooms have hot and cold water.""",
                              kurdishText:
                                  """هەموو ژووڕەکان ئاوی گەرم و ساردیان هەیە.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I'll feel better after a hot bath.""",
                              kurdishText:
                                  """هەست بە باشتر دەکەم لە دوای مەلەیەکی گەرم.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Cook in a very hot oven.""",
                              kurdishText:
                                  """لە فڕنێکی زۆر گەرم خواردن لێ‌بنە.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Cook in a very hot oven.""",
                              kurdishText: """بیخۆ کە گەرمە.""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The food should stay hot until we're ready to eat.""",
                              kurdishText:
                                  """خواردنەکە دەبێت گەرم بمێنێتەوە تاوەکو ئامادە دەبین بیخۆین.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The food should stay hot until we're ready to eat.""",
                              kurdishText:
                                  """دەستم لە ناوچاوانی دا. تەواو گەرم بوو.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The ground was hot enough to fry an egg on.""",
                              kurdishText:
                                  """زەوییەکە هێندە گەرم بوو هێلکە ببرژێنیت.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The sun shone fiercely down and it grew hotter and hotter.""",
                              kurdishText:
                                  """خۆر بەتینەوە دەدرەوشایەوە و گەرمتر و گەرمتر دەبوو.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) کە کەسێک گەرمای بێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Is anyone too hot?""",
                      kurdishText: """هیچ کەس زۆر گەرمایەتی؟""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I feel hot.""",
                      kurdishText: """هەست بە گەرما دەکەم.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her cheeks were hot with embarrassment.""",
                      kurdishText: """گۆناکانی لە شەرمدا گەرم ببوون.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her cheeks were hot with embarrassment.""",
                      kurdishText: """تەواو گەرمام بوو و ئارەقاوی بووم.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Don't you feel hot so close to the fire?""",
                      kurdishText:
                          """هەست بە گەرما ناکەیت هێندە نزیک لە ئاگرەکەوە؟""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I was feeling a bit hot so I went outside for a moment.""",
                      kurdishText:
                          """کەمێک هەستم بە گەرما دەکرد بۆیە بۆ کەمێک چوومە دەرەوە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) کە وات لێدەکات گەرمات ببێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """London was hot and dusty.""",
                      kurdishText: """لەندەن گەرما و خۆڵاوی بوو.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It had been a long hot journey.""",
                      kurdishText: """گەشتێکی گەرمای درێژخایەن بووبوو.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It was unbearably hot in the car.""",
                      kurdishText: """لەڕادەبەدەر گەرم بوو لە ئۆتۆمبێلەکەدا.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """This weather's a bit hot for me.""",
                      kurdishText: """کەشووهەوا کەمێک گەرمە بۆم.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ھاوەڵناو) خواردنی توون"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He brought out a plate of sausages covered in hot mustard.""",
                      kurdishText:
                          """دەورییەک لە سۆسجی هێنا بە داپۆشرابوو بە مەستاردی توون.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I love really hot food.""",
                      kurdishText: """حەزم لە خواردنی تەواو توونە.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ھاوەڵناو) کە ژمارەیەکی زۆر مشتومڕ، چالاکی، و هەست و سۆز لەخۆ دەگرێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Today we enter the hottest phase of the election campaign.""",
                      kurdishText:
                          """ئەمڕۆ دەچینە توندترین قۆناغی کەمپینی هەڵبژاردن.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The environment has become a very hot issue.""",
                      kurdishText:
                          """ژینگە بووە بە بابەتێکی تەواو گەرم‌وگوڕ.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Competition is getting hotter day by day.""",
                      kurdishText: """پێشبڕکێ بەتینتر دەبێت ڕۆژ بە ڕۆژ.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ھاوەڵناو) کە سەخت یان ترسناکە بۆ مامەڵە لەگەڵ کردن و وادەکات هەست بە نیگەرانی یان نائاسوودەیی بکەیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They're making life hot for her.""",
                      kurdishText: """ژیان سەخت دەکەن بۆی.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """When things got too hot most journalists left the area.""",
                      kurdishText:
                          """کە شتەکان زۆر مەترسیدار بوون زۆرینەی ڕۆژنامەنووسان ناوچەکەیان جێهێشت.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ھاوەڵناو) کە تازە، بەجۆشهێنەر، و زۆر بەناوبانگە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This is one of the hottest clubs in town.""",
                      kurdishText:
                          """ئەمە یەکێکە لە ناسراوترین یانەکانی شار.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They are one of this year's hot new bands.""",
                      kurdishText:
                          """یەکێکن لە باندە تازە بەناوبانگەکانی ئەمساڵن.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ھاوەڵناو) زۆر تازە و پێشتر نەبینراو کە خۆشە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I've got some hot gossip for you!""",
                      kurdishText: """چەند قسەڵۆکێکی گەرم‌وگوڕم پێیە بۆت.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (ھاوەڵناو) کە ئەگەری هەیە سەرکەوتوو بێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Do you have any hot tips for today's race?""",
                      kurdishText:
                          """هیچ ڕاوێژێکی باشت پێیە بۆ پێشبڕکێی ئەمڕۆ؟""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (ھاوەڵناو) زۆر باش لە کردنی شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Don't ask me—I'm not too hot on British history.""",
                      kurdishText:
                          """لە من مەپرسە ـ زۆر شارەزا نیم لە مێژووی بەریتانیا.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (ھاوەڵناو) کەسێک کە زوو تووڕە دەبێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He had a hot temper and his colleagues learned to approach him with caution.""",
                      kurdishText:
                          """مەجازێکی خراپی هەبوو و هاوکارەکانی فێربوون بە وریایی لێی نزیک ببنەوە.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (ھاوەڵناو) کە ورووژانی جەستەیی درووست دەکات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She's really hot!""",
                      kurdishText: """بە ڕاستی ورووژێنەرە!""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'm hot for you, baby.""",
                      kurdishText: """ورووژاوم بۆت، کیژێ/کوڕێ.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (ھاوەڵناو) کە دیمەن، قسە، هتد ــی شۆکهێنەر لەخۆ دەگرێت کە دەکرێت تووڕەیی درووست بکات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Some of the nude scenes were regarded as too hot for children.""",
                      kurdishText:
                          """هەندێک لە دیمەنەکان بە زۆر توند بوون بۆ منداڵان.""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (ھاوەڵناو) دڵنیایی کردنەوەی ئەوەی کە شتێک زۆر گرنگە و دەبێت هەمیشە بکرێت یان ڕووبدات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They're very hot on punctuality at work.""",
                      kurdishText: """زۆر توندن لەسەر خاڵبەندی لەسەر کار.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
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