import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamphitheatre extends StatefulWidget {
  const EnglishEntryamphitheatre({super.key});

  @override
  State<EnglishEntryamphitheatre> createState() =>
      _EnglishEntryamphitheatreState();
}

class _EnglishEntryamphitheatreState extends State<EnglishEntryamphitheatre> {
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
Noun: amphitheatre (derived forms: amphitheatres)
1. (dramaturgy) a sloping gallery with seats for spectators (as in an operating room or theatre) (= amphitheater [US])
 
2. An oval large stadium with tiers of seats; an arena in which contests and spectacles are held (= amphitheater [US], coliseum)
""",
  );
// 188888880002200

  final String keyword = "amphitheatre";
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
    await flutterTts.speak("""amphitheatre""");
  }

  Future<void> speakamphitheatre150089(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The amphitheatre is well worth a visit.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '7pEeYUdlq6U';
    const double startSecondsend = 18;
    const String videoIdone = 'OLkc7s7jZMg';
    const double startSecondsone = 1;
    const String videoIdtwo = 'QnBJODYcFsI';
    const double startSecondstwo = 49;
    const String videoIdthree = 'kjqNsQWi9e4';
    const double startSecondsthree = 116;
    const String videoIdfour = 'Cg5AzNbZGgM';
    const double startSecondsfour = 5;
    const String videoIdfive = 'qHHpTYmEsao';
    const double startSecondsfive = 2166;
    // final String _videoId = 'zMYYfWWp2Po';
    // final double _startSeconds = 35;
    // final String _videoId = '-bcFS-4p5DE';
    // final double _startSeconds = 4;
    // final String _videoId = '73SOZgEGR_8';
    // final double _startSeconds = 143;
    // final String _videoId = 'hIO8chsH_7U';
    // final double _startSeconds = 10;
    // final String _videoId = 'eoi7KzsAUuw';
    // final double _startSeconds = 173;

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
                      word: """amphitheatre""",
                      // alsoEnglishWord: "also: amphitheatre",
                      britshText: """IpaUK: /ˈæmfɪθɪətə(r)/""",
                      americanText: """IpaUS: /ˈæmfɪθiːətər/""",
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
کوردی: پیشانگای خڕ، ئامفی‌تەئەتر، ئامفی‌تیاتر؛ ئۆدیۆتۆریۆمێکی زۆر گەورە، شانۆپان (شانۆ + گۆڕەپان)، شوێنێ بۆ سەرگەرمی گشتی (وەک بۆ کۆنسێرت و یاری‌یەکان)، چاڵ، تەختایی‌یێکی دەوردراو بە لێژایی توند
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) بینایەکی بازنەیی کە سەقفی نییە و ڕیزە جێگای پلەپلەی دانیشتنی ھەیە بە دەوری گۆڕەپانێک لە ناوەڕاستی بیناکەدا. ئەم بینایانە زیاتر لە یۆنان و ڕۆمی کۆندا بەکاردەھاتن بۆ ئاھەنگە چێژبەخشەکان"
                            ""),
                    SentencesRow(
                      englishText: "The amphitheatre is well worth a visit.",
                      kurdishText: "شانۆپانەکە شایەنی سەردانییەکە.",
                      onPressedBritish: () => speakamphitheatre150089("en-GB"),
                      onPressedAmerican: () => speakamphitheatre150089("en-US"),
                    ),
                    const DividerDefinition(),
                    // const DividerSentences(),
                    const DefinitionKurdish(text: """
٢. (ناو) ژوورێک، ھۆڵێک، یان سینەمایەک کە جێگەی دانیشتنی تێدایە کە پلەپلە بەرزدەبنەوە"""),
                    // const DividerDefinition(),
                    // const DividerSentences(),
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



