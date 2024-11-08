import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaggregate extends StatefulWidget {
  const EnglishEntryaggregate({super.key});

  @override
  State<EnglishEntryaggregate> createState() => _EnglishEntryaggregateState();
}

class _EnglishEntryaggregateState extends State<EnglishEntryaggregate> {
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
- Noun: aggregate (derived forms: aggregating, aggregates, aggregated)
1. A sum total of many heterogenous things taken together (= congeries, conglomeration)
 
2. The whole amount (= sum, total, totality)
 
3. Material such as sand or gravel used with cement and water to make concrete, mortar, or plaster

- Adjective: aggregate 
1. Formed of separate units gathered into a mass or whole (= aggregated, aggregative, mass)
"aggregate expenses include expenses of all divisions combined for the entire year";
 
2. (botany) composed of a dense cluster of separate units such as carpels, florets or drupelets
"raspberries are aggregate fruits"

- Verb: aggregate 
1. Amount in the aggregate to
 
2. Gather in a mass, sum, or whole (= combine)
""",
  );
// 188888880002200

  final String keyword = "aggregate";
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
    await flutterTts.speak("""aggregate""");
  }

  Future<void> speakaggreg2622(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The three smaller parties gained an aggregate of 25 per cent of the vote.");
  }

  Future<void> speakaggre35944(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The company aggregates news and information from a number of sources on its website.");
  }

  Future<void> speakaggreg5266(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The seven companies made an aggregate profit of 10 million dollars.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '4IaOeVgZ-wc';
    const double startSecondsend = 999;
    const String videoIdone = '5d6SEQQbwtU';
    const double startSecondsone = 1182;
    const String videoIdtwo = 'fOGdb1CTu5c';
    const double startSecondstwo = 732;
    const String videoIdthree = 'HgvqxRqZybw';
    const double startSecondsthree = 452;
    const String videoIdfour = '112H-vY4Wdo';
    const double startSecondsfour = 762;
    const String videoIdfive = 'PkJlTKUaF3Q';
    const double startSecondsfive = 23;
    // final String _videoId = 'gMws8ueXJ7U';
    // final double _startSeconds = 35;
    // final String _videoId = 'mavrdYZPg0Q';
    // final double _startSeconds = 160;

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
                      word: """aggregate""",
                      // alsoEnglishWord: "also: aggregate",
                      britshText: """IpaUK: /ˈæɡrɪɡət/""",
                      americanText: """IpaUS: /ˈæɡrɪɡət/""",
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
کوردی: کۆوەبوو، کەڵەکەکراو، کەڵەکەبەند، (لە) سەرجەم، لە کۆدا، کۆ، سەرجەم، تێکڕایی، گشتی، کۆمەڵە، دەستە، گروپ، ئاپۆرە، کۆمەڵکە، کۆما، کۆگا، تۆپەڵکە، ورکەبەرد (لە ڕێگاوبان و خانووبەرەدا
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) کۆی گشتی چەند یەکەیەکی بچووکتر" ""),
                    SentencesRow(
                      englishText:
                          "The three smaller parties gained an aggregate of 25 per cent of the vote.",
                      kurdishText:
                          "ھەر سێ پارتەکە پێکەوە ٢٥٪ دەنگەکانیان بەدەستھێنا.",
                      onPressedBritish: () => speakaggreg2622("en-GB"),
                      onPressedAmerican: () => speakaggreg2622("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) تێکڕای کۆمەڵە شتێک"""),
                    SentencesRow(
                      englishText:
                          "The company aggregates news and information from a number of sources on its website.",
                      kurdishText:
                          "کۆمپانیاکە ھەواڵ و زانیاری لە ژمارەیەک سەرچاوەوە کۆدەکاتەوە لەسەر وێبسایتەکەی.",
                      onPressedBritish: () => speakaggre35944("en-GB"),
                      onPressedAmerican: () => speakaggre35944("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) درووست بوو بە تێکڕای کۆمەڵە ژمارەیەک"""),
                    SentencesRow(
                      englishText:
                          "The seven companies made an aggregate profit of 10 million dollars.",
                      kurdishText:
                          "ھەر حەوت کۆمپانیاکە پێکەوە ١٠ ملیۆن دۆلار قازانجیان کرد.",
                      onPressedBritish: () => speakaggreg5266("en-GB"),
                      onPressedAmerican: () => speakaggreg5266("en-US"),
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
