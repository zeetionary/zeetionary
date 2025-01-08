import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryannihilation extends StatefulWidget {
  const EnglishEntryannihilation({super.key});

  @override
  State<EnglishEntryannihilation> createState() =>
      _EnglishEntryannihilationState();
}

class _EnglishEntryannihilationState extends State<EnglishEntryannihilation> {
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
- Noun: annihilation (derived forms: annihilations)
1. Destruction by annihilating something (= obliteration)

2. Total destruction (= disintegration)
"bomb tests resulted in the annihilation of the atoll"; 
""",
  );
// 188888880002200

  final String keyword = "annihilation";
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
    await flutterTts.speak("""annihilation""");
  }

  Future<void> speakannihilation126(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "During the Cold War the threat of nuclear annihilation was always on people's minds.");
  }

  Future<void> speakannihilation136(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The Brazilian needed just 82 minutes to complete the annihilation of his opponent.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'z4SCAlIOxrM';
    const double startSecondsend = 95;
    const String videoIdone = 'rGccuYGiK_Q';
    const double startSecondsone = 17;
    const String videoIdtwo = 'YJSrp_P6Bjo';
    const double startSecondstwo = 17;
    const String videoIdthree = 'b1reY72ktEc';
    const double startSecondsthree = 1417;
    const String videoIdfour = 'PCuyCJocJWg';
    const double startSecondsfour = 408;
    const String videoIdfive = 'zj6p5kYnPPY';
    const double startSecondsfive = 320;
    // final String _videoId = 'V-hU1fEFKus';
    // final double _startSeconds = 732;
    // final String _videoId = 'TZmy-HseMCE';
    // final double _startSeconds = 8780;
    // final String _videoId = 'ye8Sl-vf6io';
    // final double _startSeconds = 274;

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
                      word: """annihilation""",
                      // alsoEnglishWord: "also: annihilation",
                      britshText: """IpaUK: /əˌnaɪəˈleɪʃn/""",
                      americanText: """IpaUS: /əˌnaɪəˈleɪʃn/""",
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
کوردی: لەنێوچوون، تیاچوون، وێرانی، کاول‌بوون، قەڵاچۆ، فەوتاندن، نەھێشتن، کوێرکردنەوە، خاپووربوون، قڕ، قڕتێکەوتن، تەخت‌وپەخت‌بوون، پاکتاوبوون، ھەڵتەکان، بەزین، شکست، تێ‌شکان (یەکجاری)، نەمان
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) لەناوبردنی تەواوەتی"""),
                    SentencesRow(
                      englishText:
                          "During the Cold War the threat of nuclear annihilation was always on people's minds.",
                      kurdishText:
                          "لە سەردەمی جەنگی سارد ھەڕەشەی قڕبوونی ئەتۆمی ھەمیشە لە ھزری خەڵکیدا بوو.",
                      onPressedBritish: () => speakannihilation126("en-GB"),
                      onPressedAmerican: () => speakannihilation126("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) تێکشکاندنی تەواوی کەسێک"""),
                    SentencesRow(
                      englishText:
                          "The Brazilian needed just 82 minutes to complete the annihilation of his opponent.",
                      kurdishText:
                          "یاریزانە بەرازیلییەکە پێویستی تەنھا بە ٨٢ خولەک بوو بۆ تێکشکاندنی تەواوی ڕکابەرەکەی.",
                      onPressedBritish: () => speakannihilation136("en-GB"),
                      onPressedAmerican: () => speakannihilation136("en-US"),
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


