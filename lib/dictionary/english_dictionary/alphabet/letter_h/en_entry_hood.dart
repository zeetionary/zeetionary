import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhood extends StatefulWidget {
  const EnglishEntryhood({super.key});

  @override
  State<EnglishEntryhood> createState() => _EnglishEntryhoodState();
}

class _EnglishEntryhoodState extends State<EnglishEntryhood> {
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
- Noun: hood (Derived forms: hooded, hooding, hoods)
1. A headdress that protects the head and face
 
2. The folding roof of a carriage
 
2. [N. Amer] The hinged metal cover of a vehicle's engine (- bonnet, cowl, cowling)
"there are powerful engines under the hoods of new cars";
 
3. A tubular attachment used to keep stray light out of the lens of a camera (- lens hood)
 
4. Metal covering leading to a vent that exhausts smoke or fumes (- exhaust hood)
 
5. [slang] An aggressive and violent young criminal (- hoodlum, goon [informal], punk [N. Amer, informal], thug, tough [informal], toughie [informal], strong-armer)
 
6. [slang] A neighbourhood or community (- 'hood [slang])
 
7. (zoology) an expandable part or marking that resembles a hood on the head or neck of an animal
 
8. A protective covering that is part of a plant (- cap)
 
9. (falconry) a leather covering for a hawk's head

- Verb: hood (Derived forms: hooded, , hooding, hoods)
1. Cover with a hood
"The bandits were hooded"
""",
  );

  final String keyword = "hood";
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
    await flutterTts.speak("""hood""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She put up her hood when it started to rain.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You can always put your hood up if it rains.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The detainees were led away with black hoods over their heads.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We drove all the way with the hood down.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I looked under the hood and clouds of smoke poured out.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The photographer always attaches a lens hood for outdoor photos.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'OGWpZhF-nVA';
    const double startSecondsend = 0;
    const String videoIdone = 'OGMUidA7mMc';
    const double startSecondsone = 20;
    const String videoIdtwo = 'hTrxnTJTTro';
    const double startSecondstwo = 0;
    const String videoIdthree = 'GEoze83gWjs';
    const double startSecondsthree = 538;
    const String videoIdfour = 'qWAagS_MANg';
    const double startSecondsfour = 1538;
    const String videoIdfive = 'Ga3Oqhct0C8';
    const double startSecondsfive = 79;

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
                      word: """hood""",
                      // alsoEnglishWord: "also: hood",
                      britshText: """IpaUK: /hʊd/""",
                      americanText: """IpaUS: /hʊd/""",
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
کوردی: کڵاو،	(دووکەڵ‌کێش و هتد) کڵاوفەڕەنگی، سەر،	(ماشێن) کاپووت، سەر،	دەمامک،	بەرگ، بەرگەماشێن، سەرپۆش
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کڵاوێک کە بەشی پشتەوە و سەرەوەی سەر دابپۆشێت"""),
                    SentencesRow(
                      englishText:
                          """She put up her hood when it started to rain.""",
                      kurdishText:
                          """کڵاوەکەیی لەسەرکرد کە دەستی بە باران کرد.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You can always put your hood up if it rains.""",
                      kurdishText:
                          """هەموو کات دەتوانیت کڵاوەکەت لەسەر بکەیت کە باران ببارێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) کلێتە کە لەەری لەسەری کەسێک دەکرێت بۆ ئەوەی نەناسرێتەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The detainees were led away with black hoods over their heads.""",
                      kurdishText:
                          """زیندانییەکان بردران بە کلێتەی ڕەش لە سەریاندا.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) لە ئینگلیزی بەریتانی بریتییە لە بەشی سەرەوەی ئۆتۆمبێل، هتد کە دەکرێت هەڵبدرێتەوە یان دابدرێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We drove all the way with the hood down.""",
                      kurdishText:
                          """تەواوی ڕێگاکەمان بڕی بەوەی هوودەکە دادرابوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) لە ئینگلیزی ئەمریکی بەشی پێشەوەی ئۆتۆمبێلە کە بزوێنەرەکەی دادەپۆشێت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: bonnet"),
                    SentencesRow(
                      englishText:
                          """I looked under the hood and clouds of smoke poured out.""",
                      kurdishText:
                          """سەیری ژێر بۆنیتەکەم کرد و تۆپەڵە دووکەڵ بەرزبوویەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) داپۆشەر بۆ پاراستن، بۆ نموونە لەسەر ئامێرێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The photographer always attaches a lens hood for outdoor photos.""",
                      kurdishText:
                          """وێنەگرەکە هەمیشە داپۆشەرێکی لێنز دەبەستێت بۆ وێنەی دەرەوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
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