import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanniversary extends StatefulWidget {
  const EnglishEntryanniversary({super.key});

  @override
  State<EnglishEntryanniversary> createState() =>
      _EnglishEntryanniversaryState();
}

class _EnglishEntryanniversaryState extends State<EnglishEntryanniversary> {
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
- Noun: anniversary (derived forms: anniversaries)
1. The date on which an event occurred in some previous year (or the celebration of it) (= day of remembrance)
"We remembered the 50th anniversary of the liberation of Auschwitz";
""",
  );
// 188888880002200

  final String keyword = "anniversary";
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
    await flutterTts.speak("""anniversary""");
  }

  Future<void> speakanniversary147(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The company is celebrating its 100-year anniversary this year.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '_9vTdTKVrt4';
    const double startSecondsend = 1;
    const String videoIdone = '1CsN6ZYgp2Y';
    const double startSecondsone = 13;
    const String videoIdtwo = 'Eb4RooyW11M';
    const double startSecondstwo = 52;
    const String videoIdthree = '_Bxnov4Iz0s';
    const double startSecondsthree = 1;
    const String videoIdfour = 'vKkpvQlHEG8';
    const double startSecondsfour = 77;
    const String videoIdfive = 'pcEWkf08CAA';
    const double startSecondsfive = 52;
    // final String _videoId = '6O658Kh4lc8g';
    // final double _startSeconds6 = 109;
    // final String _videoId = 'jyHgsJ2MIoA';
    // final double _startSeconds = 72;
    // final String _videoId = 'nqK8B6z6xAI';
    // final double _startSeconds = 1;
    // final String _videoId = 'Q_v-ujCbry4';
    // final double _startSeconds = 497;
    // final String _videoId = 'nlPpV5h2LhI';
    // final double _startSeconds = 52;

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
                      word: """anniversary""",
                      // alsoEnglishWord: "also: anniversary",
                      britshText: """IpaUK: /ˌænɪˈvɜːsəri/""",
                      americanText: """IpaUS: /ˌænɪˈvɜːrsəri/""",
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
کوردی: ساڵ‌گەڕانەوە، ساڵ‌وەگەر، ساڵیاد، ساڵەوەختینە، ساڵگەڕ، ساڵ‌ڕۆژ
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) ساڵیاد؛ بەروارێک کە تێیدا ڕێژەیەکی دیاریکراو ساڵی تەواو بەسەر ڕووداوێک تێ‌پەڕیوە"
                            ""),
                    SentencesRow(
                      englishText:
                          "The company is celebrating its 100-year anniversary this year.",
                      kurdishText:
                          "ئەمساڵ کۆمپانیاکە یادی ١٠٠ھەمین ساڵی دەکاتەوە.",
                      onPressedBritish: () => speakanniversary147("en-GB"),
                      onPressedAmerican: () => speakanniversary147("en-US"),
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


