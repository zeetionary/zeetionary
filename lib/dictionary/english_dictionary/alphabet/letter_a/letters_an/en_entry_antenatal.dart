import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantenatal extends StatefulWidget {
  const EnglishEntryantenatal({super.key});

  @override
  State<EnglishEntryantenatal> createState() => _EnglishEntryantenatalState();
}

class _EnglishEntryantenatalState extends State<EnglishEntryantenatal> {
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
- Adjective: antenatal 
Usage: Brit (N. Amer: prenatal)
1. Occurring or existing before birth (= prenatal [N. Amer], antepartum)
"antenatal care";
""",
  );
// 188888880002200

  final String keyword = "antenatal";
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
    await flutterTts.speak("""antenatal""");
  }

  Future<void> speakantenatal504(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Your blood pressure will be monitored at all antenatal checks.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'c_yU5AQ3Tnw';
    const double startSecondsend = 3758;
    const String videoIdone = 'A9AbYAFfiVA';
    const double startSecondsone = 454;
    const String videoIdtwo = 'bZegjT-i2Ps';
    const double startSecondstwo = 285;
    const String videoIdthree = '-XRG18acDWs';
    const double startSecondsthree = 4937;
    const String videoIdfour = 'ev8AU7c-Sj8';
    const double startSecondsfour = 430;
    const String videoIdfive = 'cFhYejxJEjs';
    const double startSecondsfive = 22;
    // final String _videoId = 'DiS21l9wBCw';
    // final double _startSeconds = 1630;
    // final String _videoId = '8Z6v2dqXXOQ';
    // final double _startSeconds = 25;
    // final String _videoId = 'MpaHm8ctMYg';
    // final double _startSeconds = 669;
    // final String _videoId = 'gURAiynmthk';
    // final double _startSeconds = 187;
    // final String _videoId = 'sJ7xX3ZKkU4';
    // final double _startSeconds = 218;

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
                      word: """antenatal""",
                      // alsoEnglishWord: "also: antenatal",
                      britshText: """IpaUK: /ˌæntiˈneɪtl/""",
                      americanText: """IpaUS: /ˌæntiˈneɪtl/""",
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
کوردی: کۆرپەلەیی، ئاوەڵمەیی، پێش لە دایک‌بوون، پێش‌بوون، سەربە ژنانی سکپڕ، تێ‌ڕوانینی قۆناخی سکپڕی، تێ‌ڕوانینی پزشکی لەسەر ژنانی سکپڕ، تێ‌ڕوانینی پزشکی سەردەمی سکپڕی
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) پەیوەندیدار بە چاودێریی ژنانی دووگیان"
                            ""),
                    SentencesRow(
                      englishText:
                          "Your blood pressure will be monitored at all antenatal checks.",
                      kurdishText:
                          "پەستانی خوێنت وەردەگیرێت لە ھەموو پشکنینەکانی دووگیانی.",
                      onPressedBritish: () => speakantenatal504("en-GB"),
                      onPressedAmerican: () => speakantenatal504("en-US"),
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

