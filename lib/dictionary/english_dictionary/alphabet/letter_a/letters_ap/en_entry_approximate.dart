import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapproximate extends StatefulWidget {
  const EnglishEntryapproximate({super.key});

  @override
  State<EnglishEntryapproximate> createState() =>
      _EnglishEntryapproximateState();
}

class _EnglishEntryapproximateState extends State<EnglishEntryapproximate> {
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
- Adjective: approximate 
1. Not quite exact or correct (= approximative, rough)
"the approximate time was 10 o'clock";
 
- Very close in resemblance (= near)
"sketched in an approximate likeness";
 
- Located close together (= close together)
"approximate leaves grow together but are not united";

- Verb: approximate (derived forms: approximates, approximating, approximated)
1. Form an estimate of (quantities or time) (= estimate, gauge, guess, judge)
 
2. Be close or similar (= come close)
"Her results approximate my own";
""",
  );
// 188888880002200

  final String keyword = "approximate";
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
    await flutterTts.speak("""approximate""");
  }

  Future<void> speakapproximate950(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The cost given is only approximate.");
  }

  Future<void> speakapproximate952(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The train's approximate time of arrival is 10:30.");
  }

  Future<void> speakapproximate954(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The total cost will approximate £15 billion.");
  }

  Future<void> speakapproximate956(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The animals were reared in conditions which approximated the wild as closely as possible.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'r0WV2Kcv6H0';
    const double startSecondsend = 1;
    const String videoIdone = 'hzAgFNh4vRY';
    const double startSecondsone = 252;
    const String videoIdtwo = 'dqcSk-EDrRo';
    const double startSecondstwo = 36;
    const String videoIdthree = 'qg2nGY1aqlg';
    const double startSecondsthree = 336;
    const String videoIdfour = 'V-6m0jW0X9E';
    const double startSecondsfour = 325;
    const String videoIdfive = 'esJkln9wAEg';
    const double startSecondsfive = 198;
    // final String _videoId = 'zvBiIvKUiOQ';
    // final double _startSeconds = 188;
    // final String _videoId = 'isqd8OOcJpQ';
    // final double _startSeconds = 1699;
    // final String _videoId = 'tyixMpuGEL8';
    // final double _startSeconds = 658;
    // final String _videoId = 'HLY-7ZkhhLE';
    // final double _startSeconds = 453;
    // final String _videoId = 'uMMQbcisins';
    // final double _startSeconds = 805;
    // final String _videoId = '-RdOwhmqP5s';
    // final double _startSeconds = 333;

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
                      word: """approximate""",
                      // alsoEnglishWord: "also: approximate",
                      britshText: """IpaUK: /əˈprɒksɪmət/""",
                      americanText: """IpaUS: /əˈprɑːksɪmət/""",
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
کوردی: تەقریبی، پتردروست، نزیک بە، تا ئەندازەیێ (زۆر)، نزیکەی، نزیک کردن، بەراورد کردن، مەزەندە کردن
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) بە نزیکەیی؛ تا ڕادەیەک تەواو، بەڵام بە تەواوی نا"""),
                    SentencesRow(
                      englishText: "The cost given is only approximate.",
                      kurdishText: "ئەو نرخەی دراوە بەنزیکەییە.",
                      onPressedBritish: () => speakapproximate950("en-GB"),
                      onPressedAmerican: () => speakapproximate950("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The train's approximate time of arrival is 10:30.",
                      kurdishText:
                          "کاتی گەشتنی شەمەندەفەرەکە بە نزیکەیی ١٠:٣٠ یە.",
                      onPressedBritish: () => speakapproximate952("en-GB"),
                      onPressedAmerican: () => speakapproximate952("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) نزیک‌بوون لە شتێک لە بڕ، کوالێتی، یان شێوە"""),
                    SentencesRow(
                      englishText:
                          "The total cost will approximate £15 billion.",
                      kurdishText:
                          "نرخی گشتی نزیک‌دەبێتەوە لە ١٥ ملیار پاوەند.",
                      onPressedBritish: () => speakapproximate954("en-GB"),
                      onPressedAmerican: () => speakapproximate954("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The animals were reared in conditions which approximated the wild as closely as possible.",
                      kurdishText:
                          "ئاژەڵەکان گەورەکران لە دۆخێک کە تا دەکرا نزیک‌بوو لە ژینگەی کێوییان.",
                      onPressedBritish: () => speakapproximate956("en-GB"),
                      onPressedAmerican: () => speakapproximate956("en-US"),
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
