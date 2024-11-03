// end air-to-air
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryairtoair extends StatefulWidget {
  const EnglishEntryairtoair({super.key});

  @override
  State<EnglishEntryairtoair> createState() => _EnglishEntryairtoairState();
}

class _EnglishEntryairtoairState extends State<EnglishEntryairtoair> {
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
- Adjective: air-to-air 
1.Operating between or launched from or involving rockets or aircraft in flight (X air-to-ground, surface-to-air)
"air-to-air missiles"; "air-to-air communications"
""",
  );
// 188888880002200

  final String keyword = "air-to-air";
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
    await flutterTts.speak("""air-to-air""");
  }

  Future<void> speakairtoair124(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The aid includes 200 supersonic air-to-air missiles and military communications equipment.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'zBWVfz6GEgk';
    const double startSecondsend = 253;
    const String videoIdone = 'YU7-hpErGDU';
    const double startSecondsone = 346;
    const String videoIdtwo = '-l0mXJ_iwLk';
    const double startSecondstwo = 444;
    const String videoIdthree = 'G6-jws_Zl_g';
    const double startSecondsthree = 1;
    const String videoIdfour = '22tmgCMvgpc';
    const double startSecondsfour = 109;
    const String videoIdfive = '8s9GKIuG7xw';
    const double startSecondsfive = 353;
    // final String _videoId = 'xaOh4mowQdM';
    // final double _startSeconds = 33;
    // final String _videoId = 'V85fqx0OKkw';
    // final double _startSeconds = 154;

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
                      word: """air-to-air""",
                      // alsoEnglishWord: "also: air-to-air",
                      britshText: """IpaUK: /ˌeə tu ˈeə(r)/""",
                      americanText: """IpaUS: /ˌer tu ˈer/""",
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
کوردی: ئاسمان بۆ ئاسمان، ھەوا بە ھەوا، فڕۆکە بە فڕۆکە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) موشەکێک کە لە ئاسمانەوە دەھاوءژرێت بۆ ئامانجێک کە لە ئاسمانە"
                            ""),
                    SentencesRow(
                      englishText:
                          "The aid includes 200 supersonic air-to-air missiles and military communications equipment.",
                      kurdishText:
                          "یارمەتییەکە ٢٠٠ مووشەکی دەنگبڕی ئاسمان بۆ ئاسمان لەخۆدەگرێت لەگەڵ کەرەستەی پەیوەندی سەربازی.",
                      onPressedBritish: () => speakairtoair124("en-GB"),
                      onPressedAmerican: () => speakairtoair124("en-US"),
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
