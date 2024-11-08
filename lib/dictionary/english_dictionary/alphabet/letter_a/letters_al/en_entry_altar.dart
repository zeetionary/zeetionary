import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaltar extends StatefulWidget {
  const EnglishEntryaltar({super.key});

  @override
  State<EnglishEntryaltar> createState() => _EnglishEntryaltarState();
}

class _EnglishEntryaltarState extends State<EnglishEntryaltar> {
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
- Noun: altar (derived forms: altars)
1. The table in Christian churches where communion is given (= communion table, Lord's table)
 
2. A raised structure on which gifts or sacrifices to a god are made
""",
  );
// 188888880002200

  final String keyword = "altar";
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
    await flutterTts.speak("""altar""");
  }

  Future<void> speakaltar45966(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He built an altar to God and made a sacrifice.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'K8990syA3_k';
    const double startSecondsend = 154;
    const String videoIdone = 'E1l9sCCCbE0';
    const double startSecondsone = 285;
    const String videoIdtwo = '5u5wEePVOys';
    const double startSecondstwo = 20;
    const String videoIdthree = 'D08h5rhmK3g';
    const double startSecondsthree = 31;
    const String videoIdfour = 'D84IBiJByv4';
    const double startSecondsfour = 583;
    const String videoIdfive = '_0uDCIbisYQ';
    const double startSecondsfive = 24;
    // final String _videoId = 'j2AQ7NYGAR8';
    // final double _startSeconds = 12;
    // final String _videoId = 'X8zWR4TsfNU';
    // final double _startSeconds = 930;
    // final String _videoId = 'euptLy-S5w0';
    // final double _startSeconds = 1;
    // final String _videoId = 'c2MuTvQM61Y';
    // final double _startSeconds = 9;
    // final String _videoId = 'rvKQhmViddk';
    // final double _startSeconds = 15;

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
                      word: """altar""",
                      // alsoEnglishWord: "also: altar",
                      britshText: """IpaUK: /ˈɔːltə(r)/""",
                      americanText: """IpaUS: /ˈɔːltər/""",
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
کوردی: مێحراب، مێراو، مێحراو، مێھراو، مێھراوە، پێش‌نوێژگە، کوشتنگە، قوربانیگا، جێ‌قوربانی، گۆڕیگە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) مێزێک کە لە کڵێسا دادەنرێت لە کاتی بۆنەی ئاینی و شتە پیرۆزەکانی لەسەر دادەنرێت"""),
                    SentencesRow(
                      englishText:
                          "He built an altar to God and made a sacrifice.",
                      kurdishText:
                          "پێش‌نوێژگەیەکی بۆ خودا دانا و قوربانی ئەنجامدا.",
                      onPressedBritish: () => speakaltar45966("en-GB"),
                      onPressedAmerican: () => speakaltar45966("en-US"),
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
