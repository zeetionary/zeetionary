import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryintangible extends StatefulWidget {
  const EnglishEntryintangible({super.key});

  @override
  State<EnglishEntryintangible> createState() => _EnglishEntryintangibleState();
}

class _EnglishEntryintangibleState extends State<EnglishEntryintangible> {
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
- Adjective: intangible
1. Hard to pin down or identify
"an intangible feeling of impending disaster"
 
2. Lacking substance or reality; incapable of being touched or seen (- nonphysical)
"that intangible thing--the soul";
 
3. (of especially business assets) not having physical substance or intrinsic productive value
"intangible assets such as good will"
 
4. Incapable of being perceived by the senses especially the sense of touch (- impalpable)
"the intangible constituent of energy";

- Noun: intangible (Derived forms: intangibles)
1. Assets that are saleable though not material or physical (- intangible asset)
""",
  );

  final String keyword = "intangible";
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
    await flutterTts.speak("""intangible""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Creativity is an intangible we're looking for in an employee.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She has that intangible quality which you might call charisma.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The benefits are intangible.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'y9nBhv0lq1s';
    const double startSecondsend = 1123;
    const String videoIdone = 'B8BnOEOOBa0';
    const double startSecondsone = 439;
    const String videoIdtwo = 'YflDBkKutmM';
    const double startSecondstwo = 114;
    const String videoIdthree = 'C8U23AS1irY';
    const double startSecondsthree = 81;
    const String videoIdfour = 'UjtwYNnVOQU';
    const double startSecondsfour = 399;
    const String videoIdfive = '10_Oz1Csi_Q';
    const double startSecondsfive = 765;

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
                      word: """intangible""",
                      // alsoEnglishWord: "also: intangible",
                      britshText: """IpaUK: /ɪnˈtændʒəbl/""",
                      americanText: """IpaUS: /ɪnˈtændʒəbl/""",
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
کوردی: هەست‌پێنەکراو، دەس‌لێنەدراو، بەردەست ناکەوێ، نەبینراو، نەرم،	نامادی، نابابەتی،	نادیار، شاراوە، نائاشکرا، ئاڵۆز، تەماوی، لەتێگەیشتن‌نەهاتوو
"""),
// With short examples define "intangible", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) شتێک کە بە شێوەی فیزیکی بوونی نییە بەڵام هێشتا بۆ کۆمپانیایەک گرنگە"""),
                    SentencesRow(
                      englishText:
                          """Creativity is an intangible we're looking for in an employee.""",
                      kurdishText:
                          """داهێنەری خاسیەتێکە کە چاوەڕێی دەکەین لە کارمەندێکدا.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) کە بوونی هەیە بەڵام دەستی لێنادرێت؛ کە سەختە باس بکرێت، تێگەشتنی بۆ بکرێت، یان بپێورێت"""),
                    SentencesRow(
                      englishText:
                          """She has that intangible quality which you might call charisma.""",
                      kurdishText:
                          """ئەو خاسیەتە نەبینراوەی هەیە کە دەکرێت پێی بگوترێت کاریزما.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    // const DividerSentences(),
                    // SentencesRow(
                    //   englishText: """The benefits are intangible.""",
                    //   kurdishText: """رستە_رستە_رستە__رستە.""",
                    //   onPressedBritish: () => speaksentence3("en-GB"),
                    //   onPressedAmerican: () => speaksentence3("en-US"),
                    // ),
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
// end intangible