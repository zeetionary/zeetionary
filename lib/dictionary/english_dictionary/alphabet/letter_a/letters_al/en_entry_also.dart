import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalso extends StatefulWidget {
  const EnglishEntryalso({super.key});

  @override
  State<EnglishEntryalso> createState() => _EnglishEntryalsoState();
}

class _EnglishEntryalsoState extends State<EnglishEntryalso> {
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
- Adverb: also 
1. In addition (= besides, too, likewise, as well)
"he has a Mercedes, also";
""",
  );
// 188888880002200

  final String keyword = "also";
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
    await flutterTts.speak("""also""");
  }

  Future<void> speakalso74823(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She's fluent in French and German. She also speaks a little Italian.");
  }

  Future<void> speakalso459(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I didn't like it that much. Also, it was much too expensive.");
  }

  Future<void> speakactive6255(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Staying physically active in later years can also keep you feeling younger.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '4_jkeWgtZ18';
    const double startSecondsend = 9;
    const String videoIdone = 'FQ9LwuOG4W4';
    const double startSecondsone = 56;
    const String videoIdtwo = '2z5A-COlDPk';
    const double startSecondstwo = 596;
    const String videoIdthree = '-2gV8LaH9SQ';
    const double startSecondsthree = 456;
    const String videoIdfour = 'ZRDIHcFRPFs';
    const double startSecondsfour = 151;
    const String videoIdfive = 'V5c2pyVmKYQ';
    const double startSecondsfive = 332;
    // final String _videoId = '2CrsNJ2s2Po';
    // final double _startSeconds = 88;
    // final String _videoId = 'YeRu4xYH_W0';
    // final double _startSeconds = 227;

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
                      word: """also""",
                      // alsoEnglishWord: "also: also",
                      britshText: """IpaUK: /ˈɔːlsəʊ/""",
                      americanText: """IpaUS: /ˈɔːlsəʊ/""",
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
کوردی: دیسان، ھەروەھا، ـیش، سەرەڕای ئەوەش، لەگەڵ ئەمەش
"""),
                    const DefinitionKurdish(text: "١. (ھاوەڵکار) ھەروەھا" ""),
                    SentencesRow(
                      englishText:
                          "She's fluent in French and German. She also speaks a little Italian.",
                      kurdishText:
                          "فەرەنسی و ئەڵمانی بە پاراوی دەزانێت. ھەروەھا کەمێک ئیتالیش دەزانێت.",
                      onPressedBritish: () => speakalso74823("en-GB"),
                      onPressedAmerican: () => speakalso74823("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "I didn't like it that much. Also, it was much too expensive.",
                      kurdishText: "زۆرم حەز لێ نەبوو. ھەروەھا زۆریش گران بوو.",
                      onPressedBritish: () => speakalso459("en-GB"),
                      onPressedAmerican: () => speakalso459("en-US"),
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

