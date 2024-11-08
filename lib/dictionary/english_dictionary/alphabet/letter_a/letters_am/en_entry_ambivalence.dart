import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryambivalence extends StatefulWidget {
  const EnglishEntryambivalence({super.key});

  @override
  State<EnglishEntryambivalence> createState() =>
      _EnglishEntryambivalenceState();
}

class _EnglishEntryambivalenceState extends State<EnglishEntryambivalence> {
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
- Noun: ambivalence (derived forms: ambivalences)
1. Mixed feelings or emotions (= ambivalency)
""",
  );
// 188888880002200

  final String keyword = "ambivalence";
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
    await flutterTts.speak("""ambivalence""");
  }

  Future<void> speakambivalence444722(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I've never lied about my feelings, including my ambivalence about getting married again.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'JuYYsmQ2ulI';
    const double startSecondsend = 1277;
    const String videoIdone = '12dn_MyYAUs';
    const double startSecondsone = 93;
    const String videoIdtwo = 'HBhXvLlB-kY';
    const double startSecondstwo = 1094;
    const String videoIdthree = 'LGdvZVkexsc';
    const double startSecondsthree = 230;
    const String videoIdfour = 'Sp9H0MO-qS8';
    const double startSecondsfour = 36;
    const String videoIdfive = '2XBHm1nXzYk';
    const double startSecondsfive = 494;
    // final String _videoId = 'qMXqg2PKJZU';
    // final double _startSeconds = 409;
    // final String _videoId = 's4pVFLUlx8g';
    // final double _startSeconds = 1067;
    // final String _videoId = 'EOfZj_ylJUc';
    // final double _startSeconds = 663;

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
                      word: """ambivalence""",
                      // alsoEnglishWord: "also: ambivalence",
                      britshText: """IpaUK: /æmˈbɪvələns/""",
                      americanText: """IpaUS: /æmˈbɪvələns/""",
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
کوردی: دوودڵی، دڕدۆنگی، ڕاڕایی‌بوون، تاوتاوی، ناکۆکی، یەک‌نەگرتنەوە، دژایەتی، (کیمیا) دووھاوھێزی، (دەروون‌ناسی) دوولایەنێتی، دوولا(یەنە)گەری
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) ھەبوونی دوودڵی"""),
                    SentencesRow(
                      englishText:
                          "I've never lied about my feelings, including my ambivalence about getting married again.",
                      kurdishText:
                          "ھەرگیز درۆم سەبارەت بە ھەستەکانم نەکردووە، لەنێوانیاندا دوودڵیم سەبارەت بە دووبارە ھاوسەرگیری کردن.",
                      onPressedBritish: () => speakambivalence444722("en-GB"),
                      onPressedAmerican: () => speakambivalence444722("en-US"),
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

