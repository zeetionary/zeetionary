import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryammonia extends StatefulWidget {
  const EnglishEntryammonia({super.key});

  @override
  State<EnglishEntryammonia> createState() => _EnglishEntryammoniaState();
}

class _EnglishEntryammoniaState extends State<EnglishEntryammonia> {
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
- Noun: ammonia (derived forms: ammonias)
1. A pungent gas compounded of nitrogen and hydrogen (NH3)
 
2. A water solution of ammonia (= ammonia water, ammonium hydroxide)
""",
  );
// 188888880002200

  final String keyword = "ammonia";
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
    await flutterTts.speak("""ammonia""");
  }

  Future<void> speakammonia74555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It is dangerous to inhale ammonia fumes.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'LiJ3Z8a6Ld0';
    const double startSecondsend = 20;
    const String videoIdone = 'DNAzIg855E0';
    const double startSecondsone = 24;
    const String videoIdtwo = 'm5QUjCbYBTM';
    const double startSecondstwo = 24;
    const String videoIdthree = 'gFlSjyyxTCw';
    const double startSecondsthree = 39;
    const String videoIdfour = 'RiCIzDFvr_A';
    const double startSecondsfour = 150;
    const String videoIdfive = 'dYk-f-zJAt0';
    const double startSecondsfive = 17;
    // final String _videoId = '6_W0hKDOpL0';
    // final double _startSeconds = 5;
    // final String _videoId = 'xlgdyTpNHeo';
    // final double _startSeconds = 29;
    // final String _videoId = 'JrJgmZ0e4_o';
    // final double _startSeconds = 7;
    // final String _videoId = 'ZG4g7YjSwgE';
    // final double _startSeconds = 8;

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
                      word: """ammonia""",
                      // alsoEnglishWord: "also: ammonia",
                      britshText: """IpaUK: /əˈməʊniə/""",
                      americanText: """IpaUS: /əˈməʊniə/""",
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
کوردی: ئێمۆنیا، ئەمۆنیا، ئەمۆنیاو
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) گاسێک کە بۆنێکی تیژی ھەیە و لە مادەی پاککەرەوە، پەیین، و تەقەمەنی‌دا بەکاردێت"
                            ""),
                    SentencesRow(
                      englishText: "It is dangerous to inhale ammonia fumes.",
                      kurdishText: "ھەڵمژینی دووکەڵی ئەمۆنیا زیانبەخشە.",
                      onPressedBritish: () => speakammonia74555("en-GB"),
                      onPressedAmerican: () => speakammonia74555("en-US"),
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

