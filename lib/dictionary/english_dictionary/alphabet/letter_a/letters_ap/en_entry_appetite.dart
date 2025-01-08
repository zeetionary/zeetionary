import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappetite extends StatefulWidget {
  const EnglishEntryappetite({super.key});

  @override
  State<EnglishEntryappetite> createState() => _EnglishEntryappetiteState();
}

class _EnglishEntryappetiteState extends State<EnglishEntryappetite> {
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
- Noun: appetite (derived forms: appetites)
1. A feeling of craving something (= appetency, appetence)
"an appetite for life";
""",
  );
// 188888880002200

  final String keyword = "appetite";
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
    await flutterTts.speak("""appetite""");
  }

  Future<void> speakappetite227(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He suffered from headaches and loss of appetite.");
  }

  Future<void> speakappetite233(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The BBC recognizes the public appetite for serious information.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'nydm6xwfPr0';
    const double startSecondsend = 150;
    const String videoIdone = 'b2lDdwxNWto';
    const double startSecondsone = 233;
    const String videoIdtwo = 'HDntl7yzzVI';
    const double startSecondstwo = 1250;
    const String videoIdthree = 'I6vs3jsUCXA';
    const double startSecondsthree = 252;
    const String videoIdfour = 'mRj1RKh4xyY';
    const double startSecondsfour = 7;
    const String videoIdfive = 'helhqdNlWhg';
    const double startSecondsfive = 651;
    // final String _videoId = 'MLd4K5hKosw';
    // final double _startSeconds = 847;
    // final String _videoId = 'bV9f3DE4LlM';
    // final double _startSeconds = 90;
    // final String _videoId = 'pTk9HnIwEYU';
    // final double _startSeconds = 315;
    // final String _videoId = 'vhmtoAYVRSo';
    // final double _startSeconds = 188;

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
                      word: """appetite""",
                      // alsoEnglishWord: "also: appetite",
                      britshText: """IpaUK: /ˈæpɪtaɪt/""",
                      americanText: """IpaUS: /ˈæpɪtaɪt/""",
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
کوردی: ئیشتیا، دڵ‌بردن، ئارەزوو، مەیل، ویست، حەز، ئارەزوو، بێزوو، مەگیز
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) ئیشتیا؛ ھەبوونی حەزی خواردن"""),
                    SentencesRow(
                      englishText:
                          "He suffered from headaches and loss of appetite.",
                      kurdishText: "تووشی سەرئێشە و نەبوونی ئیشتیا بوو بوو.",
                      onPressedBritish: () => speakappetite227("en-GB"),
                      onPressedAmerican: () => speakappetite227("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ھەبوونی حەزێکی زۆر بۆ شتێک"""),
                    SentencesRow(
                      englishText:
                          "The BBC recognizes the public appetite for serious information.",
                      kurdishText:
                          "بی‌بی‌سی لە خواستی خەڵکی بۆ زانیاریی گرنگ تێ‌دەگات.",
                      onPressedBritish: () => speakappetite233("en-GB"),
                      onPressedAmerican: () => speakappetite233("en-US"),
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
