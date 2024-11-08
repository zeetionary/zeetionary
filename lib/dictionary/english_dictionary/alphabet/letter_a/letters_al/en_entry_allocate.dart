import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryallocate extends StatefulWidget {
  const EnglishEntryallocate({super.key});

  @override
  State<EnglishEntryallocate> createState() => _EnglishEntryallocateState();
}

class _EnglishEntryallocateState extends State<EnglishEntryallocate> {
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
- Verb: allocate (derived forms: allocated, allocates, allocating)
1. Distribute according to a plan or set apart for a special purpose (= apportion)
"I am allocating a loaf of bread to everyone on a daily basis"; "I'm allocating the rations for the camping trip";
""",
  );
// 188888880002200

  final String keyword = "allocate";
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
    await flutterTts.speak("""allocate""");
  }

  Future<void> speakallocate4528(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        " A large sum has been allocated for buying new books for the library.");
  }

  Future<void> speakallocate412(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("More money should be allocated for famine relief.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'a9iFaXGKr3k';
    const double startSecondsend = 60;
    const String videoIdone = 'ntPix_014UI';
    const double startSecondsone = 3316;
    const String videoIdtwo = 'oMF6pIglmmk';
    const double startSecondstwo = 516;
    const String videoIdthree = 'ktlTxC4QG8g';
    const double startSecondsthree = 165;
    const String videoIdfour = 'DxREm3s1scA';
    const double startSecondsfour = 3289;
    const String videoIdfive = 'NG4Ws74RV04';
    const double startSecondsfive = 2137;
    // final String _videoId = 'pbdv7DNR8XA';
    // final double _startSeconds = 21;
    // final String _videoId = 'd_uJ-mWVtbA';
    // final double _startSeconds = 185;
    // final String _videoId = 'T1x_knZmZAk';
    // final double _startSeconds = 566;

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
                      word: """allocate""",
                      // alsoEnglishWord: "also: allocate",
                      britshText: """IpaUK: /ˈæləkeɪt/""",
                      americanText: """IpaUS: /ˈæləkeɪt/""",
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
                    const DefinitionKurdish(text: """
١. (کردار) پێدانی شتێک بە فەرمی بە کەسێک/شتێک"""),
                    SentencesRow(
                      englishText:
                          "A large sum has been allocated for buying new books for the library.",
                      kurdishText:
                          "گوژمەیەکی زۆر تەرخانکراوە بۆ کڕینی پەرتووک بۆ پەرتوکخانەکە.",
                      onPressedBritish: () => speakallocate4528("en-GB"),
                      onPressedAmerican: () => speakallocate4528("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "More money should be allocated for famine relief.",
                      kurdishText:
                          "دەبێت پارەی زیاتر تەرخان بکرێت بۆ سوککردنی وشکەساڵییەکە.",
                      onPressedBritish: () => speakallocate412("en-GB"),
                      onPressedAmerican: () => speakallocate412("en-US"),
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
