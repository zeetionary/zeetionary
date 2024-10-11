import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinfluence extends StatefulWidget {
  const EnglishEntryinfluence({super.key});

  @override
  State<EnglishEntryinfluence> createState() => _EnglishEntryinfluenceState();
}

class _EnglishEntryinfluenceState extends State<EnglishEntryinfluence> {
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
- Noun: influence (Derived forms: influences)
1. A power to affect persons or events especially power based on prestige etc
"used her parents' influence to get the job"
 
2. Causing something without any direct or apparent effort
 
3. A cognitive factor that tends to have an effect on what you do
"her wishes had a great influence on his thinking"
 
4. The effect of one thing (or person) on another
"the influence of mechanical action"
 
5. One having power to influence another
"she was the most important influence in my life"; "he was a bad influence on the children"

- Verb: influence (Derived forms: influencing, influences, influenced)
1. Have and exert influence or effect (- act upon, work)
"The artist's work influenced the young painter";
 
2. Give direction to; be an influence on (- determine, shape, mold [N. Amer], regulate, mould [Brit, Cdn])
"experience often influences ability";
 
3. Induce into action by using one's charm (- charm, tempt)
"She influenced him into giving her all his money";

""",
  );

  final String keyword = "influence";
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
    await flutterTts.speak("""influence""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He had considerable influence on younger sculptors.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Such media pressure exercises influence on policymakers.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """What exactly is the influence of social media on children?""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It is impossible to calculate what influence he had on her life.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """As a chieftain of the political party, he wielded considerable influence over its policies.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The girls in a class tend to have a civilizing influence on the boys.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Maltese cuisine is influenced by Malta’s physical closeness to Italy.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The companies used their clout to influence policy.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The Confederation of British Industry works to influence government policies that affect businesses.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Scientists study the genetic constitution of cells to understand how genes influence cell behavior.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The country's great influence in the world is disproportionate to its relatively small size.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The ancient Greeks believed in multiple divinities, each with their own realm of influence.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """As a senior advisor, he has a degree of influence over the emir.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The decisions we take now may influence the course of events in the future.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Only recently have historians begun to examine the impact and influence of these changes.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He was a man who exercised considerable influence over people.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Many external influences can affect your state of mind.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """His mother was a forceful character and had a big influence on him.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He influenced my generation more than any other actor.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They employed their money and influence to promote godliness.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His paintings had a strong influence on me as a student.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Diet and exercise can influence a person's weight, but heredity is also a factor.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Only recently have historians begun to examine the impact and influence of these changes.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It is impossible to calculate what influence he had on her life.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He worked his way into a position of power and influence in the city.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Her parents no longer have any real influence over her.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """His first music teacher was a major influence in his life.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Those friends are a bad influence on her.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Who were your early influences?""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His writings have influenced the lives of millions.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't let me influence you either way.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I do not wish to influence your decision one way or the other.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The wording of questions can influence how people answer.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Her parents tried to influence her in her choice of university.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Many factors can influence the taste of wine.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Minor party candidates can influence the outcome of elections.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'lYu1ysDULwA';
    const double startSecondsend = 268;
    const String videoIdone = 'zqllxbPWKNI';
    const double startSecondsone = 1549;
    const String videoIdtwo = '9TugA_z5vQE';
    const double startSecondstwo = 46;
    const String videoIdthree = 'SEZu7K5tGxw';
    const double startSecondsthree = 172;
    const String videoIdfour = 'Mx8JkGHaGUI';
    const double startSecondsfour = 112;
    const String videoIdfive = 'uKgaVlMN7IY';
    const double startSecondsfive = 199;

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
                      word: """influence""",
                      // alsoEnglishWord: "also: influence",
                      britshText: """IpaUK: /ˈɪnfluəns/""",
                      americanText: """IpaUS: /ˈɪnfluəns/""",
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
// With short examples define "influence", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەو کاریگەرییەک ک/شت هەیەتی لەسەر ئەوەی کەسێک چۆن ڕەفتار دەکات یان بیردەکاتەوە یان لەسەر شێوازی کارکردن یان بەرەوپێشچوونی شتێک"""),
                    SentencesRow(
                      englishText:
                          """He had considerable influence on younger sculptors.""",
                      kurdishText:
                          """کاریگەریی زۆری هەبوو لەسەر پەیکەرتاشە گەنجەکان.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Such media pressure exercises influence on policymakers.""",
                              kurdishText:
                                  """فشاری تۆڕە کۆمەڵایەتییەکان کاریگەری لەسەر سیاسەتوانان دادەنێت.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """What exactly is the influence of social media on children?""",
                              kurdishText:
                                  """بە دیاریکراوی کاریگەریی تۆڕە کۆمەڵایەتییەکان لەسەر منداڵ چییە؟""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It is impossible to calculate what influence he had on her life.""",
                              kurdishText:
                                  "ئەستەمە ئەو کاریگەرییە بخەمڵێندرێت کە ئەو لەسەر ژیانی ھەیبوو.",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The girls in a class tend to have a civilizing influence on the boys.""",
                              kurdishText:
                                  "ھەبوونی کچان لە پۆلێکدا وادەردەکەوێت کاریگەری باشی لەسەر ڕەفتاری کوڕان ھەبێت.",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Only recently have historians begun to examine the impact and influence of these changes.""",
                              kurdishText:
                                  """تەنھا تازەگی مێژوونووسان دەستیان کردووە بە لێکۆڵینەوە لە کاریگەریی ئەم گۆڕانانە.""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Many external influences can affect your state of mind.""",
                              kurdishText:
                                  """ژمارەیەک کاریگەری دەرەکی دەکرێت کاریگەری لە دۆخی دەروونیت بکات.""",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """His paintings had a strong influence on me as a student.""",
                              kurdishText:
                                  """تابلۆکانی کاریگەرییەکی بەھێزیان لەسەرم ھەبوو وەک خوێندکارێک.""",
                              onPressedBritish: () => speaksentence21("en-GB"),
                              onPressedAmerican: () => speaksentence21("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Only recently have historians begun to examine the impact and influence of these changes.""",
                              kurdishText:
                                  """تەنھا تازەگی مێژوونووسان دەستیان کردووە بە لێکۆڵینەوە لە کاریگەریی ئەم گۆڕانانە.""",
                              onPressedBritish: () => speaksentence23("en-GB"),
                              onPressedAmerican: () => speaksentence23("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It is impossible to calculate what influence he had on her life.""",
                              kurdishText:
                                  "ئەستەمە ئەو کاریگەرییە بخەمڵێندرێت کە ئەو لەسەر ژیانی ھەیبوو.",
                              onPressedBritish: () => speaksentence24("en-GB"),
                              onPressedAmerican: () => speaksentence24("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئەو دەسەڵاتەی ک/شت هەیانە لەسەر ئەوەی ک/شت چۆن ڕەفتار دەکات"""),
                    SentencesRow(
                      englishText:
                          """He worked his way into a position of power and influence in the city.""",
                      kurdishText:
                          """کاری کرد بۆ گەشتن بە هێز و دەسەڵات لە شارەکەدا.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Her parents no longer have any real influence over her.""",
                              kurdishText:
                                  """دایک و باوکی چی دیکە هیچ کاریگەریی ڕاستەقینەیان نییە لەسەر ژیانی.""",
                              onPressedBritish: () => speaksentence26("en-GB"),
                              onPressedAmerican: () => speaksentence26("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """As a chieftain of the political party, he wielded considerable influence over its policies.""",
                              kurdishText:
                                  "وەک قسەڕۆشتوویەکی پارتە سیاسییەکە، دەسەڵاتی بەرچاوی ھەبوو لەسەر سیاسەتەکانی.",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The country's great influence in the world is disproportionate to its relatively small size.""",
                              kurdishText:
                                  "کاریگەری گەورەی وڵاتەکە لە جیھاندا نابەرامبەرە بە قەبارە تاڕادە بچووکەکەی.",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The ancient Greeks believed in multiple divinities, each with their own realm of influence.""",
                              kurdishText:
                                  "یۆنانییە کۆنەکان باوەڕیان بە ژمارەیەک پەروەردگار ھەبوو کە ھەریەکەیان دەسەڵات و کاریگەریی خۆیان ھەبوو.",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """As a senior advisor, he has a degree of influence over the emir.""",
                              kurdishText:
                                  """وەک ڕاوێژکارێکی باڵا، ھەندێک کاریگەری لەسەر ئەمیرەکە ھەیە.""",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He was a man who exercised considerable influence over people.""",
                              kurdishText:
                                  """پیاوێک بوو کە کاریگەری زۆری لەسەر خەڵکی دەبوو.""",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """His mother was a forceful character and had a big influence on him.""",
                              kurdishText:
                                  """دایکی خاوەن کەسایەتی بەھێز بوو و کاریگەریی گەورەی لەسەری ھەبوو.""",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They employed their money and influence to promote godliness.""",
                              kurdishText:
                                  """پارە و کاریگەرییان بەکارھێنا بۆ برەودان بە خواناسی.""",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Diet and exercise can influence a person's weight, but heredity is also a factor.""",
                              kurdishText:
                                  """خواردن و ڕاھێنان دەکریت کار لە کێشی کەسێک بکەن، بەڵام بۆماوەییش ھۆکارێکە.""",
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
                            """٣. (ناو) ک/شت کە کاردەکاتە سەر شێوازی ڕەفتار و بیرکردنەوەی کەسێک"""),
                    SentencesRow(
                      englishText:
                          """His first music teacher was a major influence in his life.""",
                      kurdishText:
                          """یەکەم مامۆستای میوزیکی کاریگەرییەکی گەورە بوو لەسەر ژیانی.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Those friends are a bad influence on her.""",
                      kurdishText:
                          """ئەو هاوڕێیانە کاریگەریی خراپن بەسەرییەوە.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Who were your early influences?""",
                      kurdishText:
                          """کەسە کاریگەرە سەرەتاییەکانی ژیانت کێ بوون؟""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) هەبوونی کاریگەری لەسەر ڕەفتار و بیرکردنەوەی ک/شت"""),
                    SentencesRow(
                      englishText:
                          """His writings have influenced the lives of millions.""",
                      kurdishText:
                          """نووسینەکانی کاریگەرییان هەبووە لەسەر ژیانی ملیۆنان.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He influenced my generation more than any other actor.""",
                      kurdishText:
                          """کاریگەری لەسەر نەوەی من ھەبوو زیاتر لە ھەر ئەکتەرێکی دیکە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Don't let me influence you either way.""",
                      kurdishText:
                          """ڕێگام پێمەدە کاریگەریم لەسەرت هەبێت بە هەر شێوەیەک بێت.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I do not wish to influence your decision one way or the other.""",
                      kurdishText:
                          """نامەوێت کاریگەریم لەسەر بڕیارت هەبێت بە هەر شێوەیەک بێت.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The wording of questions can influence how people answer.""",
                      kurdishText:
                          """شێوازی نووسینی پرسیار دەکرێت کاریگەریی هەبێت لەسەر ئەوەی خەڵکی چۆن وەڵامدەدەنەوە.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her parents tried to influence her in her choice of university.""",
                      kurdishText:
                          """دایبابی هەوڵیان دا کاریگەرییان هەبێت لەسەری لە هەڵبژاردنی زانکۆدا.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) هەبوونی کاریگەری لەسەر دۆخێکی دیاریکراو و ئەوەی چۆن دەچێتە پێشەوە"""),
                    SentencesRow(
                      englishText:
                          """Many factors can influence the taste of wine.""",
                      kurdishText:
                          """زۆر فاکتەر دەکرێت کاریگەرییان لەسەر تامی شەراب هەبێت.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Maltese cuisine is influenced by Malta’s physical closeness to Italy.""",
                      kurdishText:
                          "دەستاوی ماڵتایی کاریگەری نزیکییەتی ماڵتای لە ئیتاڵیاوە لەسەرە.",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The companies used their clout to influence policy.""",
                      kurdishText:
                          "کۆمپانیاکان دەسەڵاتیان بەکارھێنا بۆ کاریگەری لەسەر سیاسەتەکان.",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The Confederation of British Industry works to influence government policies that affect businesses.""",
                      kurdishText:
                          "کۆنفێدراسیۆنی پیشەسازی بەریتانیا کاردەکات بۆ کاریگەریدانان لەسەر سیاسەتەکانی حکومەت کە کاریگەری لە بازرگانییەکان دەکەن.",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Scientists study the genetic constitution of cells to understand how genes influence cell behavior.""",
                      kurdishText:
                          "زاناکان لە شێوازی درووستبوونی جیناتی خانەکان دەکۆڵنەوە بۆ تێگەشتن لەوەی چۆن جینەکان کاریگەری لە ڕەفتاری خانەکان دەکەن.",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The decisions we take now may influence the course of events (= the way things happen) in the future.""",
                      kurdishText:
                          """ئەو بڕیارانەی ئێستا دەیان دەین ڕەنگە کاریگەری لەسەر ئاقاری ڕووداوەکان لە داھاتوودا دابنێن.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Minor party candidates can influence the outcome of elections.""",
                      kurdishText:
                          """بەربژێرانی پارتە بچووکەکان دەکرێت کاریگەرییان لەسەر ئەنجامی هەڵبژاردنەکان هەبێت.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
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
