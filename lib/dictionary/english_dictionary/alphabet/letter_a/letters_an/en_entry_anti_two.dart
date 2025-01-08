import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantitwo extends StatefulWidget {
  const EnglishEntryantitwo({super.key});

  @override
  State<EnglishEntryantitwo> createState() => _EnglishEntryantitwoState();
}

class _EnglishEntryantitwoState extends State<EnglishEntryantitwo> {
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
- Prefix: anti- 
1. Against, opposed to
"anti-war"
""",
  );
// 188888880002200

  final String keyword = "anti-";
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
    await flutterTts.speak("""anti-""");
  }

  Future<void> speakantitwo920(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Just because I won't join you, it doesn't mean that I'm anti you.");
  }

  Future<void> speakantitwo925(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Soldiers used an anti-tank weapon to stop the big tank.");
  }

  Future<void> speakantitwo935(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Shakespeare's plays have different characters, some heroes, and some anti-heroes.");
  }

  Future<void> speakantitwo938(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Antifreeze keeps your car's engine from freezing in cold weather.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'zqllxbPWKNI';
    const double startSecondsend = 103;
    const String videoIdone = 'MnExgQ81fhU';
    const double startSecondsone = 147;
    const String videoIdtwo = 'tsxmyL7TUJg';
    const double startSecondstwo = 349;
    const String videoIdthree = 'X3n5Pk8fkLg';
    const double startSecondsthree = 142;
    const String videoIdfour = 'gfOMFa5RZaE';
    const double startSecondsfour = 109;
    const String videoIdfive = 'hRSGxw2AQnk';
    const double startSecondsfive = 998;
    // final String _videoId = 'k7YVxLLIuGM';
    // final double _startSeconds = 144;
    // final String _videoId = 'jrHz8Bti6FY';
    // final double _startSeconds = 984;
    // final String _videoId = 'GVsUOuSjvcg';
    // final double _startSeconds = 1;
    // final String _videoId = '4VTOplLl2BM';
    // final double _startSeconds = 802;
    // final String _videoId = '1oSuoFwPX4E';
    // final double _startSeconds = 88;
    // final String _videoId = 'FQ4hvLqNfqo';
    // final double _startSeconds = 393;

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
                      word: """anti-""",
                      // alsoEnglishWord: "also: anti-",
                      britshText: """IpaUK: /ænti/, /æntɪ/, /ænˈtɪ/""",
                      americanText:
                          """IpaUS: /ænti/, /æntɪ/, /æntaɪ/, /ænˈtɪ/""",
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
کوردی: پێشگر: پێچەوانە، دژ، دژە، بەرڤاژی، پەرچە، ئاوەژوو
"""),
                    const DefinitionKurdish(text: """١. (پێشگر) دژبەر"""),
                    SentencesRow(
                      englishText:
                          "Just because I won't join you, it doesn't mean that I'm anti you.",
                      kurdishText:
                          "تەنھا لەبەرئەوەی پەیوەندیت پێوەناکەم واتای ئەوە نییە دژتم.",
                      onPressedBritish: () => speakantitwo920("en-GB"),
                      onPressedAmerican: () => speakantitwo920("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "Soldiers used an anti-tank weapon to stop the big tank.",
                      kurdishText:
                          "سەربازەکان چەکێکی دژە تانکیان بەکارھێنا بۆ وەستاندنی دەبابە گەورەکە.",
                      onPressedBritish: () => speakantitwo925("en-GB"),
                      onPressedAmerican: () => speakantitwo925("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (پێشگر) پێچەوانەی شتێک"""),
                    SentencesRow(
                      englishText:
                          "Shakespeare's plays have different characters, some heroes, and some anti-heroes.",
                      kurdishText:
                          "شانۆکانی شکسپیر کارەکتەری جیاوازیان تێدایە، ھەندێکیان پاڵەوانن و ھەندێکیشیان دژە پاڵەوانن.",
                      onPressedBritish: () => speakantitwo935("en-GB"),
                      onPressedAmerican: () => speakantitwo935("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (پێشگر) ڕێگری لە شتێک"""),
                    SentencesRow(
                      englishText:
                          "Antifreeze keeps your car's engine from freezing in cold weather.",
                      kurdishText:
                          "دژە بەستن ڕێگری لە بزوێنەری ئۆتۆمبێلەکەت دەکات بیبەستێ لە کەشوھەوای سارددا.",
                      onPressedBritish: () => speakantitwo938("en-GB"),
                      onPressedAmerican: () => speakantitwo938("en-US"),
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


