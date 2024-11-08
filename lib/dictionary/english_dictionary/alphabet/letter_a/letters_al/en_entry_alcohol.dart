import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalcohol extends StatefulWidget {
  const EnglishEntryalcohol({super.key});

  @override
  State<EnglishEntryalcohol> createState() => _EnglishEntryalcoholState();
}

class _EnglishEntryalcoholState extends State<EnglishEntryalcohol> {
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
- Noun: alcohol (derived forms: alcohols)
1. Any of a series of volatile hydroxyl compounds that are made from hydrocarbons by distillation
 
2. A liquor or brew containing alcohol as the active agent (= alcoholic drink, alcoholic beverage, intoxicant, inebriant, booze [informal], juice [N. Amer, informal])
"alcohol ruined him";
""",
  );
// 188888880002200

  final String keyword = "alcohol";
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
    await flutterTts.speak("""alcohol""");
  }

  Future<void> speakalcohol4538(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He was unable to overcome his addiction to alcohol.");
  }

  Future<void> speakalcohol42566(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Wine contains about 10% alcohol.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '73iY6R_3nts';
    const double startSecondsend = 40;
    const String videoIdone = '2XnWqj0y1Rk';
    const double startSecondsone = 6;
    const String videoIdtwo = '_SmZpuF13o4';
    const double startSecondstwo = 1;
    const String videoIdthree = 'O3i7PMfGWYU';
    const double startSecondsthree = 0;
    const String videoIdfour = 'azxCUOE6srI';
    const double startSecondsfour = 771;
    const String videoIdfive = 'nvXiPz4y_Ts';
    const double startSecondsfive = 65;
    // final String _videoId = 'lcssRU5G9Gk';
    // final double _startSeconds = 16;
    // final String _videoId = 'bz82dn5cvBE';
    // final double _startSeconds = 34;
    // final String _videoId = 'GsJpF0edPxw';
    // final double _startSeconds = 12;
    // final String _videoId = 'Kn64M4ZIDvk';
    // final double _startSeconds = 35;

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
                      word: """alcohol""",
                      // alsoEnglishWord: "also: alcohol",
                      britshText: """IpaUK: /ˈælkəhɒl/""",
                      americanText: """IpaUS: /ˈælkəhɔːl/""",
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
کوردی: ئەلکحول، ئەڵکۆڵ، ئەڵکوھۆل، ئارەق
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) خواردنەوەی وەک بیرە و شەراب کە دەبێتەھۆی سەرخۆش بوون"
                            ""),
                    SentencesRow(
                      englishText:
                          "He was unable to overcome his addiction to alcohol.",
                      kurdishText:
                          "نەیدەتوانی زاڵ ببێت بەسەر ئاڵوودەیی بە کحوول.",
                      onPressedBritish: () => speakalcohol4538("en-GB"),
                      onPressedAmerican: () => speakalcohol4538("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ئەو مادە شلەییەی کە لە خواردنەوەکانی وەک بیرە و شەرابدا ھەیە و بەکاردێت لە دەرمان و بەرھەمەکانی پاککردنەوە"""),
                    SentencesRow(
                      englishText: "Wine contains about 10% alcohol.",
                      kurdishText: "بیرە ڕێژەی ١٠٪ کحولی تێدایە.",
                      onPressedBritish: () => speakalcohol42566("en-GB"),
                      onPressedAmerican: () => speakalcohol42566("en-US"),
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

