import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalgorithm extends StatefulWidget {
  const EnglishEntryalgorithm({super.key});

  @override
  State<EnglishEntryalgorithm> createState() => _EnglishEntryalgorithmState();
}

class _EnglishEntryalgorithmState extends State<EnglishEntryalgorithm> {
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
- Noun: algorithm (derived forms: algorithms)
1. A precise rule (or set of rules) specifying how to solve some problem (= algorithmic rule, algorithmic program)
""",
  );
// 188888880002200

  final String keyword = "algorithm";
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
    await flutterTts.speak("""algorithm""");
  }

  Future<void> speakalgorithm25344(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Music apps such as Spotify use algorithms to predict the probability that fans of one particular band will like another.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'LbALFZoRrw8';
    const double startSecondsend = 264;
    const String videoIdone = 'xGy5cUPgJcU';
    const double startSecondsone = 1;
    const String videoIdtwo = 'FJtaaM7Txys';
    const double startSecondstwo = 277;
    const String videoIdthree = 'FhbEUKHsGi4';
    const double startSecondsthree = 11;
    const String videoIdfour = 'ROOlopIXJx4';
    const double startSecondsfour = 61;
    const String videoIdfive = 'ExOOElyZ2Hk';
    const double startSecondsfive = 34;
    // final String _videoId = 'FDXf1XxCXAk';
    // final double _startSeconds = 14;
    // final String _videoId = 'aKYlikFAV4k';
    // final double _startSeconds = 90;
    // final String _videoId = '9zfeTw-uFCw';
    // final double _startSeconds = 1;
    // final String _videoId = 'GmPIfCFuX-E';
    // final double _startSeconds = 1;

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
                      word: """algorithm""",
                      // alsoEnglishWord: "also: algorithm",
                      britshText: """IpaUK: /ˈælɡərɪðəm/""",
                      americanText: """IpaUS: /ˈælɡərɪðəm/""",
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
کوردی: ئەلگۆریتم، لۆگاریتم (بەتایبەت کۆمپیوتەر)
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) کۆمەڵە یاسایەک یان ڕێنماییەک کە دەدرێت بە کۆمپیوتەرێک بۆ ئەوەی کارێک بکات بە پشتبەستن پێی"
                            ""),
                    SentencesRow(
                      englishText:
                          "Music apps such as Spotify use algorithms to predict the probability that fans of one particular band will like another.",
                      kurdishText:
                          "ئەپە میوزیکییەکان، بۆ نموونە سپۆتیفای، ئەلگۆریزم بەکاردێنن بۆ ئەوەی پێشبینی ئەگەری حەزی ھەوادارانی باندێک بۆ باندێکی دیکە بکەن.",
                      onPressedBritish: () => speakalgorithm25344("en-GB"),
                      onPressedAmerican: () => speakalgorithm25344("en-US"),
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

