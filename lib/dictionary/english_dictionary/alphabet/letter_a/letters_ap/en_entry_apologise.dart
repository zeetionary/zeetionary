import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapologise extends StatefulWidget {
  const EnglishEntryapologise({super.key});

  @override
  State<EnglishEntryapologise> createState() => _EnglishEntryapologiseState();
}

class _EnglishEntryapologiseState extends State<EnglishEntryapologise> {
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
- Verb: apologise (derived forms: apologised, apologises, apologising)
Usage: Brit (N. Amer: apologize)
1. Defend, explain, clear away, or make excuses for by reasoning (= apologise, excuse, rationalize, rationalise [Brit])
 
2. Express regret for something bad that one has done; acknowledge faults and mistakes (= apologise)
"I apologised for being late"; "He apologised for the many typos";
""",
  );
// 188888880002200

  final String keyword = "apologise";
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
    await flutterTts.speak("""apologise""");
  }

  Future<void> speakapologise535(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Why should I apologise?");
  }

  Future<void> speakapologise537(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He wanted to publicly apologise to his victims.");
  }

  Future<void> speakapologise540(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I apologise unreservedly for any offending remarks I made.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'vYewmW_biio';
    const double startSecondsend = 1;
    const String videoIdone = 'Pf7Umtt-_qA';
    const double startSecondsone = 69;
    const String videoIdtwo = 'U8A07OR7YFY';
    const double startSecondstwo = 231;
    const String videoIdthree = '20QGM3XtYsg';
    const double startSecondsthree = 204;
    const String videoIdfour = '6rvrPMer5hc';
    const double startSecondsfour = 353;
    const String videoIdfive = '8jb7XZ40pHo';
    const double startSecondsfive = 1773;
    // final String _videoId = 'dAXq4yvKyB0';
    // final double _startSeconds = 858;
    // final String _videoId = 'OU-DF-JcXkw';
    // final double _startSeconds = 1324;
    // final String _videoId = '0kd_hwY0w90';
    // final double _startSeconds = 1090;
    // final String _videoId = 'HVbXTUCnhIY';
    // final double _startSeconds = 1094;

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
                      word: """apologise""",
                      alsoEnglishWord: "also: apologize",
                      britshText: """IpaUK: /əˈpɒlədʒaɪz/""",
                      americanText: """IpaUS: /əˈpɑːlədʒaɪz/""",
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
١. (کردار) داواکردنی لێبووردەیی بۆ شتێک"""),
                    SentencesRow(
                      englishText: "Why should I apologise?",
                      kurdishText: "بۆچی دەبێت داوای لێبووردن بکەم؟",
                      onPressedBritish: () => speakapologise535("en-GB"),
                      onPressedAmerican: () => speakapologise535("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "He wanted to publicly apologise to his victims.",
                      kurdishText:
                          "ویستی بەشێوەیەکی گشتی داوای لێبووردن بکات لە قوربانییەکانی.",
                      onPressedBritish: () => speakapologise537("en-GB"),
                      onPressedAmerican: () => speakapologise537("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "I apologise unreservedly for any offending remarks I made.",
                      kurdishText:
                          "بە تەواوی داوای لێبووردن دەکەم ھەر لێدوانێکی بێ‌ڕێزانە کە وتبێتم.",
                      onPressedBritish: () => speakapologise540("en-GB"),
                      onPressedAmerican: () => speakapologise540("en-US"),
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
