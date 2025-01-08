import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanalytic extends StatefulWidget {
  const EnglishEntryanalytic({super.key});

  @override
  State<EnglishEntryanalytic> createState() => _EnglishEntryanalyticState();
}

class _EnglishEntryanalyticState extends State<EnglishEntryanalytic> {
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
- Adjective: analytic 
1. (mathematics) using or subjected to a methodology using algebra and calculus
"analytic statics"
 
2. Using or skilled in using analysis (i.e., separating a whole--intellectual or substantial--into its elemental parts or basic principles) (= analytical)
"an analytic experiment"; "a keenly analytic man";
 
3. (linguistics) expressing a grammatical category by using two or more words rather than inflection (= uninflected)
 
4. (logic) of a proposition that is necessarily true independent of fact or experience (= analytical)
"'all spinsters are unmarried' is an analytic proposition";

5. (maths) complex valued and complex differentiable (= holomorphic)
"The professor introduced analytic functions of several complex variables";
""",
  );
// 188888880002200

  final String keyword = "analytic";
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
    await flutterTts.speak("""analytic""");
  }

  Future<void> speakanalytical150(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She has a clear analytic mind.");
  }

  Future<void> speakanalytical0025(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The analytic methods we developed for this project will be useful for our future work.");
  }

  Future<void> speakanalytic47906(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("This book is one of the masterpieces of analytic philosophy.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'krtf-v19TJg';
    const double startSecondsend = 65;
    const String videoIdone = 'eyUNmkT5bzU';
    const double startSecondsone = 50;
    const String videoIdtwo = 'RMFtsdD2M8c';
    const double startSecondstwo = 98;
    const String videoIdthree = 'MWJZsW9HooY';
    const double startSecondsthree = 13;
    const String videoIdfour = 'JjZyQjZjnj8';
    const double startSecondsfour = 263;
    const String videoIdfive = '7Vm282YvOGw';
    const double startSecondsfive = 2044;
    // final String _videoId = 'zlm1aajH6gY';
    // final double _startSeconds = 623;
    // final String _videoId = 'oXPhvh4eGcM';
    // final double _startSeconds = 848;
    // final String _videoId = 'N5FQRGfPy8I';
    // final double _startSeconds = 2990;

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
                      word: """analytic""",
                      // alsoEnglishWord: "also: analytic",
                      britshText: """IpaUK: /ˌænəˈlɪtɪk/""",
                      americanText: """IpaUS: /ˌænəˈlɪtɪk/""",
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
                    const DefinitionKurdish(text: """
١. (ھاوەڵناو) بەکارھێنانی شێوازی بیرکردنەوەی لۆژیکیانە بۆ تێگەشتن لە شتێک، بەتایبەتی بە سەیرکردنی ھەموو بەشەکانی"""),
                    SentencesRow(
                      englishText: "She has a clear analytic mind.",
                      kurdishText: "مێشکێکی تەواو بەدیقەتی ھەیە.",
                      onPressedBritish: () => speakanalytical150("en-GB"),
                      onPressedAmerican: () => speakanalytical150("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The analytic methods we developed for this project will be useful for our future work.",
                      kurdishText:
                          "ئەو ڕێگا شیکارییانەی گەشەمان‌پێدا بۆ ئەم پڕۆژە بەسوود دەبێت بۆ کارەکانی داھاتوومان.",
                      onPressedBritish: () => speakanalytical0025("en-GB"),
                      onPressedAmerican: () => speakanalytical0025("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) پەیوەندیدار بە بەکارھێنانی لۆژیک (وردبوونەوە و بیرکردنەوە لە بیرۆکەکان بە ڕێگای زانستی)"""),
                    SentencesRow(
                      englishText:
                          "This book is one of the masterpieces of analytic philosophy.",
                      kurdishText:
                          "ئەم کتێبە یەکێکە لە شاکارەکانی فەلسەفەی شیکارانە.",
                      onPressedBritish: () => speakanalytic47906("en-GB"),
                      onPressedAmerican: () => speakanalytic47906("en-US"),
                    ),
                    // const DividerSentences(),
                    // const DividerDefinition(),
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






