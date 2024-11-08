import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamalgamation extends StatefulWidget {
  const EnglishEntryamalgamation({super.key});

  @override
  State<EnglishEntryamalgamation> createState() =>
      _EnglishEntryamalgamationState();
}

class _EnglishEntryamalgamationState extends State<EnglishEntryamalgamation> {
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
- Noun: amalgamation (derived forms: amalgamations)
1. The combination of two or more commercial companies (= merger, uniting)
""",
  );
// 188888880002200

  final String keyword = "amalgamation";
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
    await flutterTts.speak("""amalgamation""");
  }

  Future<void> speakamalgamation45999(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        " We look towards the amalgamation of some of the neighborhood factories.");
  }

  Future<void> speakamalgamation4444(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The proposed amalgamation of the two institutes has mow fallen through.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'iuOYz8zt9J4';
    const double startSecondsend = 362;
    const String videoIdone = 'ihwAF-zahsA';
    const double startSecondsone = 1132;
    const String videoIdtwo = '5vhpgWQiujg';
    const double startSecondstwo = 59;
    const String videoIdthree = 'Rvey9g0VgY0';
    const double startSecondsthree = 580;
    const String videoIdfour = 'CjiKlLE3NuI';
    const double startSecondsfour = 160;
    const String videoIdfive = 'GVZypq_M75Y';
    const double startSecondsfive = 802;
    // final String _videoId = 'w1iGQHQGA2o';
    // final double _startSeconds = 346;
    // final String _videoId = 'Y5TIAJnqGbA';
    // final double _startSeconds = 408;

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
                      word: """amalgamation""",
                      // alsoEnglishWord: "also: amalgamation",
                      britshText: """IpaUK: /əˌmælɡəˈmeɪʃn/""",
                      americanText: """IpaUS: /əˌmælɡəˈmeɪʃn/""",
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
کوردی: تێک‌خستن، تێک‌ھەڵکێشان، تێکەڵ‌کردن، تێک‌وەردان، یەکخستن، لێک‌دان، داڕشتن، ئەمەلگاندن
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) پڕۆسەی یەکخستن، یان ئەوەی درووست دەبێت لە ئەنجامی ئەم پڕۆسەیە"
                            ""),
                    SentencesRow(
                      englishText:
                          "We look towards the amalgamation of some of the neighborhood factories.",
                      kurdishText:
                          "بە نیازین ژمارەیەک لە کارگەکانی گەڕەکەکە یەکبخەین.",
                      onPressedBritish: () => speakamalgamation45999("en-GB"),
                      onPressedAmerican: () => speakamalgamation45999("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The proposed amalgamation of the two institutes has mow fallen through.",
                      kurdishText:
                          "پڕۆسەی پێشنیازکراوی یەکخستنی دوو پەیمانگاکە شکستی ھێناوە.",
                      onPressedBritish: () => speakamalgamation4444("en-GB"),
                      onPressedAmerican: () => speakamalgamation4444("en-US"),
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


