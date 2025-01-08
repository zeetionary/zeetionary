import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryannexe extends StatefulWidget {
  const EnglishEntryannexe({super.key});

  @override
  State<EnglishEntryannexe> createState() => _EnglishEntryannexeState();
}

class _EnglishEntryannexeState extends State<EnglishEntryannexe> {
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
- Noun: annexe
Usage: Brit (N. Amer: annex)
1. An addition that extends a main building (= annex, extension, wing)
""",
  );
// 188888880002200

  final String keyword = "annexe";
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
    await flutterTts.speak("""annexe""");
  }

  Future<void> speakannex1204(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Delicate and valuable books are kept in an air-conditioned annexe to the main library.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '-vV-YaKsIGk';
    const double startSecondsend = 852;
    const String videoIdone = '9GOEvPvruiQ';
    const double startSecondsone = 312;
    const String videoIdtwo = 'HGtMta8vpbg';
    const double startSecondstwo = 191;
    const String videoIdthree = 'AoqtH5OFaDQ';
    const double startSecondsthree = 3742;
    const String videoIdfour = 'VEwY80OSyfI';
    const double startSecondsfour = 372;
    const String videoIdfive = '3-SG_XjzQk4';
    const double startSecondsfive = 326;
    // final String _videoId = 'exjHQZOqRCY';
    // final double _startSeconds = 60;
    // final String _videoId = 'ghYAQ5Ytb2g';
    // final double _startSeconds = 829;
    // final String _videoId = '2KGMbpMMaEc';
    // final double _startSeconds = 9;
    // final String _videoId = 'ixrI0nnLGgM';
    // final double _startSeconds = 332;
    // final String _videoId = 'Q6ej8fogtSI';
    // final double _startSeconds = 167;

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
                      word: """annexe""",
                      // alsoEnglishWord: "also: annexe",
                      britshText: """IpaUK: /ˈæneks/""",
                      americanText: """IpaUS: /ˈæneks/""",
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
کوردی: لاخانوو(بەرە)، دەستەی لا(پاڵ)، لادەستە، خانووبەرەی سەرخستە یان لکاو، خانووبەرەی سەرخراو (نووساوە بە خانووبەرەی سەرەکی)، پاشکۆ، سەرخستە

1. (کردار) ژوورێکی زیادە کە زیاد دەکرێت بۆ ژوورێکی گەورەتر"""),
                    SentencesRow(
                      englishText:
                          "Delicate and valuable books are kept in an air-conditioned annexe to the main library.",
                      kurdishText:
                          "کتێبە ناسک و بەنرخەکان لە ژوورێکی بچووکی کتێبخانە سەرەکییەکەن کە سیستەمی فێنککەرەوەی تێدایە.",
                      onPressedBritish: () => speakannex1204("en-GB"),
                      onPressedAmerican: () => speakannex1204("en-US"),
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


