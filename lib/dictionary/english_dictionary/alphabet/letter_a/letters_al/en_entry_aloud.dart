import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaloud extends StatefulWidget {
  const EnglishEntryaloud({super.key});

  @override
  State<EnglishEntryaloud> createState() => _EnglishEntryaloudState();
}

class _EnglishEntryaloudState extends State<EnglishEntryaloud> {
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
- Adverb: aloud 
1. Using the voice; not silently (= out loud)
"please read the passage aloud";
 
2. With relatively high volume (= loudly, loud)
"cried aloud for help";
""",
  );
// 188888880002200

  final String keyword = "aloud";
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
    await flutterTts.speak("""aloud""");
  }

  Future<void> speakaloud469(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He read the letter aloud to us.");
  }

  Future<void> speakaloud462(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "People are starting to wonder aloud whether the economic reforms have gone too far.");
  }

  Future<void> speakaloud596(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She cried aloud in protest.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 't6NUJ2JZz50';
    const double startSecondsend = 1;
    const String videoIdone = 'Ilo0P0gizJA';
    const double startSecondsone = 4;
    const String videoIdtwo = 'f2U_Q59qsSI';
    const double startSecondstwo = 7;
    const String videoIdthree = 'P-E4assINhY';
    const double startSecondsthree = 1;
    const String videoIdfour = 'v6gnPX4qi8s';
    const double startSecondsfour = 93;
    const String videoIdfive = 'EoiYyqmxbu0';
    const double startSecondsfive = 362;
    // final String _videoId = '6DBAGpOl8-U';
    // final double _startSeconds = 39;
    // final String _videoId = 'Rv-WjeBYPD8';
    // final double _startSeconds = 10;
    // final String _videoId = 'ysHf-udE07Q';
    // final double _startSeconds = 131;
    // final String _videoId = 'SA8GkalW-lU';
    // final double _startSeconds = 47;

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
                      word: """aloud""",
                      // alsoEnglishWord: "also: aloud",
                      britshText: """IpaUK: /əˈlaʊd/""",
                      americanText: """IpaUS: /əˈlaʊd/""",
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
کوردی: بەرز، بڵیند، بە دەنگی بەرز
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵکار) بە دەنگێک کە خەڵکی تر گوێیان لێیە"""),
                    SentencesRow(
                      englishText: "He read the letter aloud to us.",
                      kurdishText: "نامەکەی بە دەنگی بەرز بۆ خوێندینەوە.",
                      onPressedBritish: () => speakaloud469("en-GB"),
                      onPressedAmerican: () => speakaloud469("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "People are starting to wonder aloud (= question publicly) whether the economic reforms have gone too far.",
                      kurdishText:
                          "خەڵکی دەستیان کردووە بە گۆتەگۆت کە ئاخۆ چاکسازییە ئابوورییەکان پەلیان زۆر ھاویشتووە.",
                      onPressedBritish: () => speakaloud462("en-GB"),
                      onPressedAmerican: () => speakaloud462("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵکار) بە دەنگێکی بەرز"""),
                    SentencesRow(
                      englishText: "She cried aloud in protest.",
                      kurdishText: "بە دەنگی بەرز ناڕەزایی دەربڕی.",
                      onPressedBritish: () => speakaloud596("en-GB"),
                      onPressedAmerican: () => speakaloud596("en-US"),
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

