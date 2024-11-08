import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamiss extends StatefulWidget {
  const EnglishEntryamiss({super.key});

  @override
  State<EnglishEntryamiss> createState() => _EnglishEntryamissState();
}

class _EnglishEntryamissState extends State<EnglishEntryamiss> {
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
- Adjective: amiss 
1. Not functioning properly (= awry, haywire, wrong)
"something is amiss";

- Adverb: amiss 
1. Away from the correct or expected course (= awry)
"something went badly amiss in the preparations";
 
2. In an improper, mistaken or unfortunate manner
"if you think him guilty you judge amiss"; "he spoke amiss"; "no one took it amiss when she spoke frankly"
 
3. In an imperfect or faulty way (= imperfectly)
"Miss Bennet would not play at all amiss if she practised more";
""",
  );
// 188888880002200

  final String keyword = "amiss";
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
    await flutterTts.speak("""amiss""");
  }

  Future<void> speakamiss7741(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She sensed something was amiss and called the police.");
  }

  Future<void> speakamiss8899(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He shone a light inside and saw nothing amiss.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'YwOMc-4OEWg';
    const double startSecondsend = 323;
    const String videoIdone = 'PoNCG3PZKII';
    const double startSecondsone = 312;
    const String videoIdtwo = 'cEc7ZuHyKWE';
    const double startSecondstwo = 1000;
    const String videoIdthree = 'dIMrWQCJ_mA';
    const double startSecondsthree = 1266;
    const String videoIdfour = 'GDs6WohWma0';
    const double startSecondsfour = 74;
    const String videoIdfive = 'pWa9W6pdSDU';
    const double startSecondsfive = 266;
    // final String _videoId = 'JR-8PZ_nCvE';
    // final double _startSeconds = 105;
    // final String _videoId = 'RFcfJm3SqGk';
    // final double _startSeconds = 719;
    // final String _videoId = 'tA6rt50o8Tg';
    // final double _startSeconds = 1703;
    // final String _videoId = 'VcMIeyjggbM';
    // final double _startSeconds = 305;
    // final String _videoId = 'KECHTe9QsPw';
    // final double _startSeconds = 299;
    // final String _videoId = 'FQBZrPVQUyM';
    // final double _startSeconds = 690;

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
                      word: """amiss""",
                      // alsoEnglishWord: "also: amiss",
                      britshText: """IpaUK: /əˈmɪs/""",
                      americanText: """IpaUS: /əˈmɪs/""",
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
کوردی: ھەڵە، شاش، چەوت، خراپ، ناڕاست، نادروست، نالەبار، بێجێ، بە ھەڵە، خراپ
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) ھەڵە، نامۆ؛ جیاواز لە ئاسایی"
                            ""),
                    SentencesRow(
                      englishText:
                          "She sensed something was amiss and called the police.",
                      kurdishText:
                          "ھەستیان‌کرد شتێک گوماناوییە و پەیوەندییان بە پۆلیسەوە کرد.",
                      onPressedBritish: () => speakamiss7741("en-GB"),
                      onPressedAmerican: () => speakamiss7741("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "He shone a light inside and saw nothing amiss.",
                      kurdishText:
                          "لایتێکی بۆ ژوورەوە لێدا و ھیچی نائاسایی نەدی.",
                      onPressedBritish: () => speakamiss8899("en-GB"),
                      onPressedAmerican: () => speakamiss8899("en-US"),
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

