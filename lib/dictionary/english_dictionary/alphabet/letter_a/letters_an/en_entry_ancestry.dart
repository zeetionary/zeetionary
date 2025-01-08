import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryancestry extends StatefulWidget {
  const EnglishEntryancestry({super.key});

  @override
  State<EnglishEntryancestry> createState() => _EnglishEntryancestryState();
}

class _EnglishEntryancestryState extends State<EnglishEntryancestry> {
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
- Noun: ancestry (derived forms: ancestries)
1. The hereditary derivation of an individual (= lineage, line, line of descent, descent, bloodline, blood line, blood, pedigree, origin, parentage, stemma, stock)
"his entire ancestry has been warriors";
 
2. Inherited properties shared with others of your bloodline (= lineage, derivation, filiation)
""",
  );
// 188888880002200

  final String keyword = "ancestry";
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
    await flutterTts.speak("""ancestry""");
  }

  Future<void> speakancestry1520(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He was able to trace his ancestry back over 1 000 years.");
  }

  Future<void> speakancestry4955(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "According to science, humans share a common ancestry with chimpanzees.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'IIWlatQt4KE';
    const double startSecondsend = 1;
    const String videoIdone = 'b6m1tDIUBBw';
    const double startSecondsone = 44;
    const String videoIdtwo = 'eJ-WJssJgdg';
    const double startSecondstwo = 2337;
    const String videoIdthree = 'KT18KJouHWg';
    const double startSecondsthree = 503;
    const String videoIdfour = 'oVX5OSIw5ms';
    const double startSecondsfour = 152;
    const String videoIdfive = 'BiNNUeMNcVw';
    const double startSecondsfive = 49;
    // final String _videoId = 'buMCmzXJUx0';
    // final double _startSeconds = 532;
    // final String _videoId = 'S9cZlONstG4';
    // final double _startSeconds = 58;
    // final String _videoId = 'HccZjwwfmy8';
    // final double _startSeconds = 1422;
    // final String _videoId = 'xns1ZLFCfZ4';
    // final double _startSeconds = 196;

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
                      word: """ancestry""",
                      // alsoEnglishWord: "also: ancestry",
                      britshText: """IpaUK: /ˈænsestri/""",
                      americanText: """IpaUS: /ˈænsestri/""",
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
کوردی: ڕەچەڵەک، ڕەگەز، پێشینیان، بەرینان، جسنات، بڕبڕە، ئەژداد، تان‌وپۆ
"""),
                    const DefinitionKurdish(text: "١. (ناو) ڕەچەڵەکی کەسێک" ""),
                    SentencesRow(
                      englishText:
                          "He was able to trace his ancestry back over 1 000 years.",
                      kurdishText:
                          "دەیتوانی ڕەچەڵەکی بەدرێژایی ١٠٠٠ ساڵ بگێڕێتەوە.",
                      onPressedBritish: () => speakancestry1520("en-GB"),
                      onPressedAmerican: () => speakancestry1520("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "According to science, humans share a common ancestry with chimpanzees.",
                      kurdishText:
                          "بەپێی زانست مرۆڤ و شیمپانزی ھەمان باوانی ھاوبەشیان ھەیە.",
                      onPressedBritish: () => speakancestry4955("en-GB"),
                      onPressedAmerican: () => speakancestry4955("en-US"),
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


