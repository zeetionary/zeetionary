import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamid extends StatefulWidget {
  const EnglishEntryamid({super.key});

  @override
  State<EnglishEntryamid> createState() => _EnglishEntryamidState();
}

class _EnglishEntryamidState extends State<EnglishEntryamid> {
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
- Preposition: amid 
1.  In the middle of (= amidst, among, amongst)
"I found it amid the trees";
""",
  );
// 188888880002200

  final String keyword = "amid";
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
    await flutterTts.speak("""amid""");
  }

  Future<void> speakamid77744(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He finished his speech amid tremendous applause.");
  }

  Future<void> speakamid7741(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("On the floor, amid mounds of books, were two small envelopes.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'JmtUqciXyzw';
    const double startSecondsend = 1;
    const String videoIdone = 'fET0WTxfRFI';
    const double startSecondsone = 275;
    const String videoIdtwo = 'wStmZQkbKbA';
    const double startSecondstwo = 87;
    const String videoIdthree = 'oa4V1riEfUs';
    const double startSecondsthree = 264;
    const String videoIdfour = 'H2QdceCNOxc';
    const double startSecondsfour = 25;
    const String videoIdfive = 'q9kceBpFfgU';
    const double startSecondsfive = 14;
    // final String _videoId = '3-p6G3f3LvY';
    // final double _startSeconds = 405;
    // final String _videoId = 'jfyk0rh6uro';
    // final double _startSeconds = 541;
    // final String _videoId = 'ErPsyBUCijM';
    // final double _startSeconds = 269;
    // final String _videoId = '9yjZpBq1XBE';
    // final double _startSeconds = 5627;
    // final String _videoId = '-obKX-mqjXQ';
    // final double _startSeconds = 252;
    // final String _videoId = 'MYnjzsjeMK8';
    // final double _startSeconds = 340;

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
                      word: """amid""",
                      // alsoEnglishWord: "also: amid",
                      britshText: """IpaUK: /əˈmɪd/""",
                      americanText: """IpaUS: /əˈmɪd/""",
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
کوردی: لەنێوەڕاستی، لەنێوان، ل ناڤبەرا، لە میانەی، لە جەنگەی، لە ھەڕەتی
"""),
                    const DefinitionKurdish(
                        text: """١. (ئامراز) لەناوەڕاستی کاتێکدا"""),
                    SentencesRow(
                      englishText:
                          "He finished his speech amid tremendous applause.",
                      kurdishText:
                          "وتارەکەی تەواوکرد لەناوەڕاستی چەپڵەڕێزانێکی زۆردا.",
                      onPressedBritish: () => speakamid77744("en-GB"),
                      onPressedAmerican: () => speakamid77744("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ئامراز) لەناوەڕاستی شتێکدا"""),
                    SentencesRow(
                      englishText:
                          "On the floor, amid mounds of books, were two small envelopes.",
                      kurdishText:
                          "لەسەر زەوییەکە، و لە ناوەڕاستی یەک کەڵەکە کتێبدا، دوو بەرگەنامە کەوتبوون.",
                      onPressedBritish: () => speakamid7741("en-GB"),
                      onPressedAmerican: () => speakamid7741("en-US"),
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

