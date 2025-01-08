import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryangular extends StatefulWidget {
  const EnglishEntryangular({super.key});

  @override
  State<EnglishEntryangular> createState() => _EnglishEntryangularState();
}

class _EnglishEntryangularState extends State<EnglishEntryangular> {
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
- Adjective: angular 
1. Measured by an angle or by the rate of change of an angle
"angular momentum"
 
2. Having angles or an angular shape (= angulate)
""",
  );
// 188888880002200

  final String keyword = "angular";
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
    await flutterTts.speak("""angular""");
  }

  Future<void> speakangular1029(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Her features were too angular, her face a little too long for beauty.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Usu5vajNya8';
    const double startSecondsend = 19;
    const String videoIdone = 'jNc2SflUl9U';
    const double startSecondsone = 60;
    const String videoIdtwo = 'sNaaL19opxw';
    const double startSecondstwo = 314;
    const String videoIdthree = 'X4UTe1fZUzI';
    const double startSecondsthree = 259;
    const String videoIdfour = 'sKO8n_-xtDc';
    const double startSecondsfour = 2334;
    const String videoIdfive = 'ESH46M49WC0';
    const double startSecondsfive = 1;
    // final String _videoId = 'Nun_4w8m_SY';
    // final double _startSeconds = 97;
    // final String _videoId = 'QcUey-DVYjk';
    // final double _startSeconds = 450;
    // final String _videoId = '9X5Vuh4U5Wo';
    // final double _startSeconds = 363;
    // final String _videoId = 'mvY7VtKvf7o';
    // final double _startSeconds = 581;
    // final String _videoId = 'f8euUepDo5w';
    // final double _startSeconds = 487;
    // final String _videoId = 'g0amdIcZt5I';
    // final double _startSeconds = 880;

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
                      word: """angular""",
                      // alsoEnglishWord: "also: angular",
                      britshText: """IpaUK: /ˈæŋɡjələ(r)/""",
                      americanText: """IpaUS: /ˈæŋɡjələr/""",
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
کوردی: گۆشەیی، گۆشەدار، بەسووچ، کز، داڵگۆشت، ڕەقەڵ، نووک‌تیژ
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) کەسێک کە ھێندە زەعیفە ماسولکەکانی لەژێر پێستییەوە دیارە"
                            ""),
                    SentencesRow(
                      englishText:
                          "Her features were too angular, her face a little too long for beauty.",
                      kurdishText:
                          "ڕووخساری زۆر ڕەقەڵ بوو و سەری کەمێک زۆر درێژ بوو بەوەی جوان بێت.",
                      onPressedBritish: () => speakangular1029("en-GB"),
                      onPressedAmerican: () => speakangular1029("en-US"),
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

