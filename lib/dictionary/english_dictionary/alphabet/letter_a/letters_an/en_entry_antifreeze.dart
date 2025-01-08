import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantifreeze extends StatefulWidget {
  const EnglishEntryantifreeze({super.key});

  @override
  State<EnglishEntryantifreeze> createState() => _EnglishEntryantifreezeState();
}

class _EnglishEntryantifreezeState extends State<EnglishEntryantifreeze> {
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
- Noun: antifreeze (derived forms: antifreezes)
1. A liquid added to the water in a cooling system to lower its freezing point
""",
  );
// 188888880002200

  final String keyword = "antifreeze";
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
    await flutterTts.speak("""antifreeze""");
  }

  Future<void> speakantifreeze1051(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Lack of antifreeze is a major cause of highway breakdowns.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '37RRmMeNg1I';
    const double startSecondsend = 12;
    const String videoIdone = 'Xn7REstyOUw';
    const double startSecondsone = 37;
    const String videoIdtwo = 'hBYkSVkIm0g';
    const double startSecondstwo = 77;
    const String videoIdthree = 'rdvVmtWivUc';
    const double startSecondsthree = 234;
    const String videoIdfour = '_DwrtzRY_zo';
    const double startSecondsfour = 14;
    const String videoIdfive = 'VuBg0Z4CpgE';
    const double startSecondsfive = 1;
    // final String _videoId = '1vnbc8PQDCk';
    // final double _startSeconds = 377;
    // final String _videoId = '9s9UXXAmlTg';
    // final double _startSeconds = 588;
    // final String _videoId = 'WBxqiUhadyY';
    // final double _startSeconds = 808;
    // final String _videoId = 'xSEeu2kzs0w';
    // final double _startSeconds = 635;

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
                      word: """antifreeze""",
                      // alsoEnglishWord: "also: antifreeze",
                      britshText: """IpaUK: /ˈæntifriːz/""",
                      americanText: """IpaUS: /ˈæntifriːz/""",
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
کوردی: نەبەست، نەھێڵەبەست، دژبەست، دژەبەست
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) مادەیەکی کیمیایی کە زیاد دەکرێت بۆ سیستەمی ساردکەرەوەی ئۆتۆمبێل بۆ ئەوەی ڕێگری لە بەستن بکات"
                            ""),
                    SentencesRow(
                      englishText:
                          "Lack of antifreeze is a major cause of highway breakdowns.",
                      kurdishText:
                          "کەمی دژەبەستن ھۆکارێکی سەرەکی تێکچوونی ڕێگاکانە.",
                      onPressedBritish: () => speakantifreeze1051("en-GB"),
                      onPressedAmerican: () => speakantifreeze1051("en-US"),
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

