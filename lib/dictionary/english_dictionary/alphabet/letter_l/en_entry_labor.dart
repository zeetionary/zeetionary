import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylabour extends StatefulWidget {
  const EnglishEntrylabour({super.key});

  @override
  State<EnglishEntrylabour> createState() => _EnglishEntrylabourState();
}

class _EnglishEntrylabourState extends State<EnglishEntrylabour> {
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
- Noun: labour (Derived forms: laboured, labours, labouring)
Usage: Brit, Cdn (US: labor)
1. Productive work (especially physical work done for wages) (- labor [US], toil)
"his labour did not require a great deal of skill";
 
2. A social class comprising those who do manual labour or work for wages (- labor [US], working class, proletariat, proletariate [archaic])
"there is a shortage of skilled labour in this field";
 
3. Concluding state of pregnancy; from the onset of contractions to the birth of a child (- parturiency, labor [US], confinement, lying-in, travail [literary], childbed [archaic])
"she was in labour for six hours";
 
4. An organized attempt by workers to improve their status by united action (particularly via labour unions) or the leaders of this movement (- labor movement [US, Austral], trade union movement, labor [US], labour movement [Brit, Cdn])
 
5. Any piece of work that is undertaken or attempted (- undertaking, project, task, labor [US])
"he prepared for great labours";

- Verb: labour (Derived forms: laboured, labours, labouring)
Usage: Brit, Cdn (US: labor)
1. Strive and make an effort to reach a goal (- tug, labor [US], push, drive, plow [US], plough on [Brit], plow on [US], plough [Brit], sweat)
"She laboured for years to make a decent living";
 
2. Work hard (- labor [US], toil, fag [informal], travail [literary], grind [informal], drudge, dig [US, informal], moil [N. Amer])
"Lexicographers labour all day long";
 
3. Undergo the efforts of childbirth (- labor [US])

- Noun: Labour
Usage: UK
1. A progressive centre-left or socialist political party founded in Great Britain in 1900, one of the two largest parties in Parliament since the 1920s (- British Labour Party, Labour Party [UK], Labor [US])
""",
  );

  final String keyword = "labour";
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
    await flutterTts.speak("""labour""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The price will include the labour and materials.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The company wants to keep down labour costs.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The workers voted to withdraw their labour.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He was so exhausted from the day's labours that he went straight to bed.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """People look forward to enjoying the fruits of their labours during retirement.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Companies are making huge profits by exploiting cheap labour in poor countries.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There is a growing demand for skilled labour.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """New labour laws make it more difficult for employers to sack workers.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Jane was in labour for ten hours.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She went into labour early.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He always votes Labour.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They laboured for years to clear their son's name.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We laboured all day in the fields.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The horses laboured up the steep slope.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/rf3iHqE240I?t=193';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/_k29OMTEPnc?t=1598';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/uK3OBAxCi6k?t=101';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/PkJlTKUaF3Q?t=332';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/ecgcL4Cu75I?t=211';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/_gdd61k3xuI?t=805';
    const double startSecondsfive = 0;

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
                      word: """labour""",
                      // alsoEnglishWord: "also: labour",
                      britshText: """IpaUK: /ˈleɪbə(r)/""",
                      americanText: """IpaUS: /ˈleɪbər/""",
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
کوردی: کار (چ جەستەیی و چ مێشکی)، گورە، گوروە، ئیش،	ڕەنج، ئەرک، زەحمەت،	کرێکار، کارکەر، چینی کرێکار،	(ژانی) مناڵ‌بوون، (ژان‌وژۆی) لێ‌بوونەوە
"""),
// With short examples define "labour", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) کار، بە تایبەتی کاری جەستەیی"""),
                    SentencesRow(
                      englishText:
                          """The price will include the labour and materials.""",
                      kurdishText: """نرخەکە کار و کەرەستەکان دەگرێتەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The company wants to keep down labour costs.""",
                      kurdishText:
                          """کۆمپانیاکە دەیەوێت نرخی کار بە کەمی بهێڵێتەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The workers voted to withdraw their labour.""",
                      kurdishText:
                          """کرێکاران دەنگیان دا بەوەی لە کار بوەستن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) ئەرک یان ماوەی کار"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was so exhausted from the day's labours that he went straight to bed.""",
                      kurdishText:
                          """زۆر ماندوو بوو لە کارەکانی ڕۆژەکە کە ڕاستەوخۆ چووە بۆ جێخەو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """People look forward to enjoying the fruits of their labours during retirement.""",
                      kurdishText:
                          """خەڵکی چاویان لە بەرهەمی کاریانە لەکاتی خانەنشینبوون.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئەو کەسانەی کە کار دەکەن یان بەردەستن بۆ کار لە وڵات یان کۆمپانیایەک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Companies are making huge profits by exploiting cheap labour in poor countries.""",
                      kurdishText:
                          """کۆمپانیاکان قازانجی قەبە بە قۆستنەوەی دەستی کاری هەرزان لە وڵاتە هەژارەکان.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There is a growing demand for skilled labour.""",
                      kurdishText:
                          """خواستنی گەشەکردوو هەیە بۆ دەستی کاری شارەزا.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """New labour laws make it more difficult for employers to sack workers.""",
                      kurdishText:
                          """یاسا تازەکانی کار سەختتری دەکەن بۆ خاوەن کاران کە کرێکاران دەربکەن.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) ئەو ماوەیەی کە ژنێک منداڵی دەبێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Jane was in labour for ten hours.""",
                      kurdishText:
                          """جەین بۆ ١٠ کاتژمێر لە ماوەی منداڵبوون بوو.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She went into labour early.""",
                      kurdishText: """زوو چووە حاڵەتی منداڵبوونەوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) پارتی کرێکارانی بەریتانیا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He always votes Labour.""",
                      kurdishText: """هەمیشە دەنگ بە پارتی کرێکاران دەدات.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) هەوڵدانی زۆر بۆ کردنی شتێکی سەخت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They laboured for years to clear their son's name.""",
                      kurdishText:
                          """بۆ چەندین ساڵ هەوڵیان دا بۆ پاککردنەوەی ناوی کوڕەکەی.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (کردار) کردنی کاری سەخت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We laboured all day in the fields.""",
                      kurdishText: """تەواوی ڕۆژەکە لە کێڵگەکان کارمان کرد.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) جووڵان بە سەختی و هەوڵدانەوە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: struggle"),
                    SentencesRow(
                      englishText:
                          """The horses laboured up the steep slope.""",
                      kurdishText:
                          """ئەسپەکان بە لێژاییە بەرزەکەدا چوونە سەرەوە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
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
// end labour