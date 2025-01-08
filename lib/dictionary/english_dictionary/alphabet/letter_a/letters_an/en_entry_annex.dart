import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryannex extends StatefulWidget {
  const EnglishEntryannex({super.key});

  @override
  State<EnglishEntryannex> createState() => _EnglishEntryannexState();
}

class _EnglishEntryannexState extends State<EnglishEntryannex> {
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
- Noun: annex (derived forms: annexed, annexes, annexing)
1. An addition that extends a main building (= annexe [Brit], extension, wing)

Verb: annex (derived forms: annexed, annexes, annexing)
1. Take (territory) as if by conquest
"Hitler annexed Lithuania"
 
2. Add an extra part to
""",
  );
// 188888880002200

  final String keyword = "annex";
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
    await flutterTts.speak("""annex""");
  }

  Future<void> speakannex1135(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Germany annexed Austria in 1938.");
  }

  Future<void> speakannex1140(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Delicate and valuable books are kept in an air-conditioned annex to the main library.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'qV3qL51tH_8';
    const double startSecondsend = 536;
    const String videoIdone = 'UKyDFyUGTUA';
    const double startSecondsone = 1;
    const String videoIdtwo = 'stYX_2iGA_I';
    const double startSecondstwo = 631;
    const String videoIdthree = 'grGTYBfhjio';
    const double startSecondsthree = 1;
    const String videoIdfour = 'OnjI-FBdRTQ';
    const double startSecondsfour = 8797;
    const String videoIdfive = 'HtR2kn6Luds';
    const double startSecondsfive = 58;
    // final String _videoId = '8YkGrKQXZxE';
    // final double _startSeconds = 406;
    // final String _videoId = 'dWaNdWMLEt8';
    // final double _startSeconds = 399;
    // final String _videoId = 'TPEdTajhR6A';
    // final double _startSeconds = 414;
    // final String _videoId = '_0boi1KQz3c';
    // final double _startSeconds = 398;

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
                      word: """annex""",
                      // alsoEnglishWord: "also: annex",
                      britshText: """IpaUK: /ˈæneks/, /əˈneks/""",
                      americanText: """IpaUS: /ˈæneks/, /əˈneks/""",
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
کوردی: داگیرکردن، لاخانوو(بەرە)، دەستەی لا(پاڵ)، لادەستە، خانووبەرەی سەرخستە یان لکاو، خانووبەرەی سەرخراو (نووساوە بە خانووبەرەی سەرەکی)، پاشکۆ، سەرخستە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) داگیرکردنی وڵاتێک یان ناوچەیەک بە ھێز"""),
                    SentencesRow(
                      englishText: "Germany annexed Austria in 1938.",
                      kurdishText: "ئەڵمانیا نەمسای داگیرکرد لە ساڵی ١٩٣٨.",
                      onPressedBritish: () => speakannex1135("en-GB"),
                      onPressedAmerican: () => speakannex1135("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ژوورێکی زیادە کە زیاد دەکرێت بۆ ژوورێکی گەورەتر"""),
                    SentencesRow(
                      englishText:
                          "Delicate and valuable books are kept in an air-conditioned annex to the main library.",
                      kurdishText:
                          "کتێبە ناسک و بەنرخەکان لە ژوورێکی بچووکی کتێبخانە سەرەکییەکەن کە سیستەمی فێنککەرەوەی تێدایە.",
                      onPressedBritish: () => speakannex1140("en-GB"),
                      onPressedAmerican: () => speakannex1140("en-US"),
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


