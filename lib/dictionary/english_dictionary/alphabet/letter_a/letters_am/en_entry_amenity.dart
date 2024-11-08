import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamenity extends StatefulWidget {
  const EnglishEntryamenity({super.key});

  @override
  State<EnglishEntryamenity> createState() => _EnglishEntryamenityState();
}

class _EnglishEntryamenityState extends State<EnglishEntryamenity> {
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
- Noun: amenity (derived forms: amenities)
1. Pleasantness resulting from agreeable conditions (= agreeableness)
"he discovered the amenities of reading at an early age";
""",
  );
// 188888880002200

  final String keyword = "amenity";
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
    await flutterTts.speak("""amenity""");
  }

  Future<void> speakamenity4777(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Many of the houses lacked even basic amenities.");
  }

  Future<void> speakamenity7622(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The hotel has excellent amenities.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '6-6U6V3yQWk';
    const double startSecondsend = 82;
    const String videoIdone = 'Zhr7nDNieqw';
    const double startSecondsone = 121;
    const String videoIdtwo = 'oluwqXzePv8';
    const double startSecondstwo = 1581;
    const String videoIdthree = 'YytF2v7Vvw0';
    const double startSecondsthree = 1103;
    const String videoIdfour = 'OU-DF-JcXkw';
    const double startSecondsfour = 652;
    const String videoIdfive = '23ErB0axFgw';
    const double startSecondsfive = 684;
    // final String _videoId = 'pxoWZiK_Deo';
    // final double _startSeconds = 410;
    // final String _videoId = 'l0Lux9vW8ZM';
    // final double _startSeconds = 173;
    // final String _videoId = 'np1if0hc_30';
    // final double _startSeconds = 667;
    // final String _videoId = 'CHrhZvT6kJk';
    // final double _startSeconds = 1593;

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
                      word: """amenity""",
                      // alsoEnglishWord: "also: amenity",
                      britshText: """IpaUK: /əˈmiːnəti/""",
                      americanText: """IpaUS: /əˈmiːnəti/""",
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
کوردی: شت یان کەرەسەی ئاسوودەیی، کەل‌وپەلی خۆش‌گوزەرانی، خۆشی، تایبەتمەندی خۆشی، ئاسان‌کاری، کەل‌وپەلی ئاسوودەیی، شمەکی ئاسایش و ڕابواردن
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) خزمەتگوزاری؛ ئەو خزمەتگوزارییانەی وا دەکەن شوێنێک بە کەڵکی ژیان بێت، یان ژیانکردن تێیدا خۆش بێت "
                            ""),
                    SentencesRow(
                      englishText:
                          "Many of the houses lacked even basic amenities (= baths, showers, hot water, etc.).",
                      kurdishText:
                          "ژمارەیەکی زۆر لە خانووەکان تەنانەت خزمەتگوزارییە سەرەتاییەکانیشیان تێدا نییە.",
                      onPressedBritish: () => speakamenity4777("en-GB"),
                      onPressedAmerican: () => speakamenity4777("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "The hotel has excellent amenities.",
                      kurdishText: "ھوتێلەکە خزمەتگوزاریی نایابی تێدایە.",
                      onPressedBritish: () => speakamenity7622("en-GB"),
                      onPressedAmerican: () => speakamenity7622("en-US"),
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

