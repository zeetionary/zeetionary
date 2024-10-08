// end AIDS
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaids extends StatefulWidget {
  const EnglishEntryaids({super.key});

  @override
  State<EnglishEntryaids> createState() => _EnglishEntryaidsState();
}

class _EnglishEntryaidsState extends State<EnglishEntryaids> {
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
- Noun: AIDS 
1. A serious (often fatal) disease of the immune system transmitted through blood products especially by sexual contact or contaminated needles. (= acquired immune deficiency syndrome)
""",
  );
// 188888880002200

  final String keyword = "AIDS";
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
    await flutterTts.speak("""AIDS""");
  }

  Future<void> speakaids538666(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She died of an AIDs-related illness at the age of 54.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'BMf5--QPyNw';
    const double startSecondsend = 302;
    const String videoIdone = 'HYfQYJlgmUc';
    const double startSecondsone = 1164;
    const String videoIdtwo = 'bjdqw9rXXd8';
    const double startSecondstwo = 1;
    const String videoIdthree = 'jxaCvvPr98E';
    const double startSecondsthree = 57;
    const String videoIdfour = 'NwX5zfC0hgc';
    const double startSecondsfour = 18;
    const String videoIdfive = 'Eri08ZZ1Kmo';
    const double startSecondsfive = 95;
    // final String _videoId6 = '9hthJmbDQWY';
    // final double _startSeconds6 = 9;
    // final String _videoId = 'aJtvKSUPICA';
    // final double _startSeconds = 13;
    // final String _videoId = 'gVKq-7p7Wk4';
    // final double _startSeconds = 56;
    // final String _videoId = 'La3pWkXGanQ';
    // final double _startSeconds = 68;

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
                      word: """AIDS""",
                      // alsoEnglishWord: "also: AIDS",
                      britshText: """IpaUK: /eɪdz/""",
                      americanText: """IpaUS: /eɪdz/""",
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
                    const DefinitionKurdish(text: """
١. (ناو) نەخۆشییەکی کوشندە کە لە ڕێگەی ڤایرۆسی ئێچ ئای ڤییەوە لە کەسێک بۆ کەسێکی تر دەگوازرێتەوە و دەبێتەھۆی لاوازی جەستە بەرامبەر نەخۆشی"""),
                    SentencesRow(
                      englishText:
                          "She died of an AIDs-related illness at the age of 54.",
                      kurdishText:
                          "لە تەمەنی ٥٤ ساڵی بە نەخۆشییەکی پەیوەندیدار بە ئایدز گیانی لەدەستدا.",
                      onPressedBritish: () => speakaids538666("en-GB"),
                      onPressedAmerican: () => speakaids538666("en-US"),
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

