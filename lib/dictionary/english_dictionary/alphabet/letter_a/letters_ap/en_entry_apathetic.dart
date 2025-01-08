import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapathetic extends StatefulWidget {
  const EnglishEntryapathetic({super.key});

  @override
  State<EnglishEntryapathetic> createState() => _EnglishEntryapatheticState();
}

class _EnglishEntryapatheticState extends State<EnglishEntryapathetic> {
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
- Adjective: apathetic 
1. Showing little or no emotion or animation
"a woman who became active rather than apathetic as she grew older"
 
2. Marked by a lack of interest (= indifferent)
"an apathetic audience";
""",
  );
// 188888880002200

  final String keyword = "apathetic";
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
    await flutterTts.speak("""apathetic""");
  }

  Future<void> speakapathetic1229(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The illness made her apathetic and unwilling to meet people.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '3mdkXtNOiOk';
    const double startSecondsend = 1;
    const String videoIdone = 'mLFTAly2rVc';
    const double startSecondsone = 19;
    const String videoIdtwo = 'ARgT2XmHN2E';
    const double startSecondstwo = 77;
    const String videoIdthree = 'oJ1qQ0ACp-E';
    const double startSecondsthree = 434;
    const String videoIdfour = 'E9SeECaq30g';
    const double startSecondsfour = 49;
    const String videoIdfive = 'pa2C6bZpCPc';
    const double startSecondsfive = 196;
    // final String _videoId = 'aM9bZqyeX8c';
    // final double _startSeconds = 569;
    // final String _videoId = 'nQHrgadyTpc';
    // final double _startSeconds = 240;
    // final String _videoId = 'B7V9KZjm_rs';
    // final double _startSeconds = 2169;
    // final String _videoId = 'YBx7ZT6FIrU';
    // final double _startSeconds = 312;
    // final String _videoId = 'p2LiMTtGrAY';
    // final double _startSeconds = 631;

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
                      word: """apathetic""",
                      // alsoEnglishWord: "also: apathetic",
                      britshText: """IpaUK: /ˌæpəˈθetɪk/""",
                      americanText: """IpaUS: /ˌæpəˈθetɪk/""",
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
کوردی: کەمتەرخەم، نادەربەست، بێ‌دەربەست، دڵسارد، ساردوسڕ، دڵ‌مردوو، بێ‌تاقەت، خەمسار، ناھومێد، بێ‌ھیوا، بێ‌ھەست
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) نەبوونی حەز و تامەزرۆیی" ""),
                    SentencesRow(
                      englishText:
                          "The illness made her apathetic and unwilling to meet people.",
                      kurdishText:
                          "نەخۆشییەکە وای‌کرد ساردوسڕ بێ و مەیلی بینینی خەڵکی نەبێت.",
                      onPressedBritish: () => speakapathetic1229("en-GB"),
                      onPressedAmerican: () => speakapathetic1229("en-US"),
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
