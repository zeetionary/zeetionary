import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapproximately extends StatefulWidget {
  const EnglishEntryapproximately({super.key});

  @override
  State<EnglishEntryapproximately> createState() =>
      _EnglishEntryapproximatelyState();
}

class _EnglishEntryapproximatelyState extends State<EnglishEntryapproximately> {
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
- Adverb: approximately 
1. (of quantities) imprecise but fairly close to correct (= about, close to, just about, some, roughly, more or less, around, or so, loosely)
"lasted approximately an hour";
""",
  );
// 188888880002200

  final String keyword = "approximately";
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
    await flutterTts.speak("""approximately""");
  }

  Future<void> speakapproximately1010(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The journey took approximately seven hours.");
  }

  Future<void> speakapproximately1011(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The two buildings were approximately equal in size.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'h4CyhQqAPpk';
    const double startSecondsend = 643;
    const String videoIdone = 'xVQxvthAcLU';
    const double startSecondsone = 147;
    const String videoIdtwo = 'X3TAROotFfM';
    const double startSecondstwo = 334;
    const String videoIdthree = 'Js2UoMSumx4';
    const double startSecondsthree = 960;
    const String videoIdfour = 'BOQ-wZQhZZo';
    const double startSecondsfour = 33;
    const String videoIdfive = 'Unzc731iCUY';
    const double startSecondsfive = 869;
    // final String _videoId = 'qg2nGY1aqlg';
    // final double _startSeconds = 347;
    // final String _videoId = 'Y_N0AxCzVLg';
    // final double _startSeconds = 374;
    // final String _videoId = 'GVsUOuSjvcg';
    // final double _startSeconds = 852;

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
                      word: """approximately""",
                      // alsoEnglishWord: "also: approximately",
                      britshText: """IpaUK: /əˈprɒksɪmətli/""",
                      americanText: """IpaUS: /əˈprɑːksɪmətli/""",
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
کوردی: نزیکەی، بە مەزندە، لە دەوروبەری، بڵێین، تەقریبەن، تا ئەندازەیێ، بەلای نزیکی‌یەوە
"""),
                    const DefinitionKurdish(text: "١. (ھاوەڵکار) بەنزیکەیی" ""),
                    SentencesRow(
                      englishText:
                          "The journey took approximately seven hours.",
                      kurdishText: "گەشتەکە بە نزیکەیی حەوت کاتژمێری پێچوو.",
                      onPressedBritish: () => speakapproximately1010("en-GB"),
                      onPressedAmerican: () => speakapproximately1010("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The two buildings were approximately equal in size.",
                      kurdishText:
                          "بیناکان بە نزیکەیی یەکسان بوون لە ئەندازەدا.",
                      onPressedBritish: () => speakapproximately1011("en-GB"),
                      onPressedAmerican: () => speakapproximately1011("en-US"),
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
