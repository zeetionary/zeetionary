import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapproximation extends StatefulWidget {
  const EnglishEntryapproximation({super.key});

  @override
  State<EnglishEntryapproximation> createState() =>
      _EnglishEntryapproximationState();
}

class _EnglishEntryapproximationState extends State<EnglishEntryapproximation> {
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
- Noun: approximation (derived forms: approximations)
1. An approximate calculation of quantity, degree or worth (= estimate, estimation, idea)
"an approximation of what it would cost";
 
2. The quality of coming near to identity (especially close in quantity)
 
3. An imprecise or incomplete account
"newspapers gave only an approximation of the actual events"
 
4. The act of bringing near or bringing together especially the cut edges of tissue (= bringing close together)
""",
  );
// 188888880002200

  final String keyword = "approximation";
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
    await flutterTts.speak("""approximation""");
  }

  Future<void> speakapproximation1020(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "An approximation of the numbers expected to attend would be 350.");
  }

  Future<void> speakapproximation1021(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We do not have the true figures so we will have to make some approximations.");
  }

  Future<void> speakapproximation1026(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Our results should be a good approximation of the true state of affairs.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'U0xlKuFqCuI';
    const double startSecondsend = 250;
    const String videoIdone = 'oxwCRzQOCu8';
    const double startSecondsone = 69;
    const String videoIdtwo = 'zM5MW5NKZJg';
    const double startSecondstwo = 20;
    const String videoIdthree = 'AmQcoopBUTk';
    const double startSecondsthree = 218;
    const String videoIdfour = 'Wao0_uB4Zw4';
    const double startSecondsfour = 520;
    const String videoIdfive = 'D_Y18GEjfNY';
    const double startSecondsfive = 262;
    // final String _videoId = 'hzAgFNh4vRY';
    // final double _startSeconds = 93;
    // final String _videoId = 'CmjeCchGRQo';
    // final double _startSeconds = 17;
    // final String _videoId = '2Hq4CtLfnZs';
    // final double _startSeconds = 411;
    // final String _videoId = 'tyixMpuGEL8';
    // final double _startSeconds = 1005;
    // final String _videoId = 'vS0TuIPoeBs';
    // final double _startSeconds = 305;

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
                      word: """approximation""",
                      // alsoEnglishWord: "also: approximation",
                      britshText: """IpaUK: /əˌprɒksɪˈmeɪʃn/""",
                      americanText: """IpaUS: /əˌprɑːksɪˈmeɪʃn/""",
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
کوردی: نزیکاندن، نزیک‌کردنەوە، نزیکی، لە ڕاستی‌یەوە نزیک، لێکچوویی، ھاوشێوەیی (زۆر)، مەزندە، نرخاندن، ھەڵسەنگاندن، قرساندن
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ژمارەیەک کە خەمڵاندنە و تەواو نییە"""),
                    SentencesRow(
                      englishText:
                          "An approximation of the numbers expected to attend would be 350.",
                      kurdishText:
                          "ڕێژەی خەمڵێندراوی بەژداربووان پێشبینی‌دەکرێت بگاتە ٣٥٠ کەس.",
                      onPressedBritish: () => speakapproximation1020("en-GB"),
                      onPressedAmerican: () => speakapproximation1020("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "We do not have the true figures so we will have to make some approximations.",
                      kurdishText:
                          "ژمارەی تەواومان لەبەردەست نییە، بۆیە دەبێت خەمڵاندن بکەین.",
                      onPressedBritish: () => speakapproximation1021("en-GB"),
                      onPressedAmerican: () => speakapproximation1021("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) شتێک بە نزیکەیی وەک شتێکی تر وایە، بەڵام بە تەواوی لێکچووی نییە"""),
                    SentencesRow(
                      englishText:
                          "Our results should be a good approximation of the true state of affairs.",
                      kurdishText:
                          "ئەنجامەکانمان دەبێت ھاوشێوەیەکی باشی ڕاستی بارودۆخەکە بێت.",
                      onPressedBritish: () => speakapproximation1026("en-GB"),
                      onPressedAmerican: () => speakapproximation1026("en-US"),
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
