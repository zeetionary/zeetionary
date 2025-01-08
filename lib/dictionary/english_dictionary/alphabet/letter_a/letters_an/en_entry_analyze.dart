import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanalyze extends StatefulWidget {
  const EnglishEntryanalyze({super.key});

  @override
  State<EnglishEntryanalyze> createState() => _EnglishEntryanalyzeState();
}

class _EnglishEntryanalyzeState extends State<EnglishEntryanalyze> {
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
- Verb: analyze (derived forms: analyzed, analyzing)
Usage: Brit, Cdn (US: analyze)
1. Consider in detail and subject to an analysis in order to discover essential features or meaning (= analyze [N. Amer], study, examine, canvass)
"analyze a sonnet by Shakespeare";
 
2. Make a mathematical, chemical, or grammatical analysis of; break down into components or essential features (= analyze [N. Amer], break down, dissect, take apart)
"analyze a specimen";

3. (psychiatry) subject to psychoanalytic treatment (= analyze [N. Amer], psychoanalyze [N. Amer], psychoanalyze [Brit, Cdn])
"I was analyzed in Vienna by a famous psychiatrist";
""",
  );
// 188888880002200

  final String keyword = "analyze";
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
    await flutterTts.speak("""analyze""");
  }

  Future<void> speakanalyze7950(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The job involves collecting and analyzing data.");
  }

  Future<void> speakanalyze4920(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He tried to analyze his feelings.");
  }

  Future<void> speakanalyze469(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We need to analyze what went wrong.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '29DjvorzUGg';
    const double startSecondsend = 23;
    const String videoIdone = 'L878W_WrTx8';
    const double startSecondsone = 1014;
    const String videoIdtwo = 'p6Un9LY6V5w';
    const double startSecondstwo = 19;
    const String videoIdthree = 'uqIhHDuE62g';
    const double startSecondsthree = 34;
    const String videoIdfour = 'y_D4Slu-Wl4';
    const double startSecondsfour = 774;
    const String videoIdfive = 'tF_2QZo90lw';
    const double startSecondsfive = 249;
    // final String _videoId = '1xZzv95AOMk';
    // final double _startSeconds = 756;
    // final String _videoId = 'CvhMPA9oNBI';
    // final double _startSeconds = 524;
    // final String _videoId = 'MSBxQEFGytk';
    // final double _startSeconds = 679;

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
                      word: """analyze""",
                      // alsoEnglishWord: "also: analyze",
                      britshText: """IpaUK: /ˈænəlaɪz/""",
                      americanText: """IpaUS: /ˈænəlaɪz/""",
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
کوردی: شیتەڵاندن، شیتەڵ‌کردن، شی‌کردنەوە، شیکاری‌کردن، تاوتوێ‌کردن، لێکدانەوە، بڕگاندن (ڕێزمان)
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) لێکۆڵینەوە لە شتێک و شیتەڵ‌کردنی"
                            ""),
                    SentencesRow(
                      englishText:
                          "The job involves collecting and analyzing data.",
                      kurdishText:
                          "کارەکە کۆکردنەوە و شیکردنەوەی داتا لەخۆدەگرێت.",
                      onPressedBritish: () => speakanalyze7950("en-GB"),
                      onPressedAmerican: () => speakanalyze7950("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "He tried to analyze his feelings.",
                      kurdishText: "ھەوڵی‌دا لە ھەستەکانی تێ‌بگات.",
                      onPressedBritish: () => speakanalyze4920("en-GB"),
                      onPressedAmerican: () => speakanalyze4920("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "We need to analyze what went wrong.",
                      kurdishText: "پێویستە لێ‌بکۆڵینەوە لەوەی چی ھەڵە ڕوویدا.",
                      onPressedBritish: () => speakanalyze469("en-GB"),
                      onPressedAmerican: () => speakanalyze469("en-US"),
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


