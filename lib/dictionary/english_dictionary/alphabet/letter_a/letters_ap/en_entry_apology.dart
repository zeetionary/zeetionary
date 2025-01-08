import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapology extends StatefulWidget {
  const EnglishEntryapology({super.key});

  @override
  State<EnglishEntryapology> createState() => _EnglishEntryapologyState();
}

class _EnglishEntryapologyState extends State<EnglishEntryapology> {
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
- Noun: apology (derived forms: apologies)
1. An expression of regret at having caused trouble for someone
"he wrote a letter of apology to the hostess"
 
2. A formal written defence of something you believe in strongly (= apologia)
 
3. A poor example (= excuse)
"it was an apology for a meal";
""",
  );
// 188888880002200

  final String keyword = "apology";
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
    await flutterTts.speak("""apology""");
  }

  Future<void> speakapology552(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You owe him an apology for what you said.");
  }

  Future<void> speakapology555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Please accept my sincere apologies.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'mrilDQugeME';
    const double startSecondsend = 364;
    const String videoIdone = '6rvrPMer5hc';
    const double startSecondsone = 305;
    const String videoIdtwo = 'jXiMRecJHHk';
    const double startSecondstwo = 266;
    const String videoIdthree = 'dsWl42Uplt8';
    const double startSecondsthree = 203;
    const String videoIdfour = 'HDntl7yzzVI';
    const double startSecondsfour = 1520;
    const String videoIdfive = 'XG8b7WhANNA';
    const double startSecondsfive = 849;
    // final String _videoId = 'nDb6-9-MTw4';
    // final double _startSeconds = 890;
    // final String _videoId = 'MzSktgpfD84';
    // final double _startSeconds = 1158;
    // final String _videoId = 'QntBkDFkiuY';
    // final double _startSeconds = 44;
    // final String _videoId = 'R_ByP_XAk9o';
    // final double _startSeconds = 372;
    // final String _videoId = 'yrOlx4e6ADg';
    // final double _startSeconds = 363;
    // final String _videoId = 'VVsdb90aOmA';
    // final double _startSeconds = 2322;

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
                      word: """apology""",
                      // alsoEnglishWord: "also: apology",
                      britshText: """IpaUK: /əˈpɒlədʒi/""",
                      americanText: """IpaUS: /əˈpɑːlədʒi/""",
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
کوردی: داوای لێبوردن، لێبوردن‌خوازی، عوزرمایی، عوزرخوازی
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) داوای لێبووردن کردن، دەربڕینی پەشیمانی"
                            ""),
                    SentencesRow(
                      englishText: "You owe him an apology for what you said.",
                      kurdishText:
                          "لێبور‌دن‌خوازییەک بە ئەو قەرزاری بۆ ئەوەی وتت.",
                      onPressedBritish: () => speakapology552("en-GB"),
                      onPressedAmerican: () => speakapology552("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "Please accept my sincere apologies.",
                      kurdishText: "تکایە عوزرماییە پڕ بەدڵەکەم پەسەند بکە.",
                      onPressedBritish: () => speakapology555("en-GB"),
                      onPressedAmerican: () => speakapology555("en-US"),
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
