import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalgae extends StatefulWidget {
  const EnglishEntryalgae({super.key});

  @override
  State<EnglishEntryalgae> createState() => _EnglishEntryalgaeState();
}

class _EnglishEntryalgaeState extends State<EnglishEntryalgae> {
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
- Noun: algae (derived forms: algaes)
1. Primitive chlorophyll-containing mainly aquatic eukaryotic organisms lacking true stems and roots and leaves (= alga)
""",
  );
// 188888880002200

  final String keyword = "algae";
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
    await flutterTts.speak("""algae""");
  }

  Future<void> speakalgae4524(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Algae has clogged the intake to the water turbine.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '_humvdmdfaw';
    const double startSecondsend = 91;
    const String videoIdone = 'Hq7kjC3jzyE';
    const double startSecondsone = 10;
    const String videoIdtwo = 'qV0udTvYK6M';
    const double startSecondstwo = 65;
    const String videoIdthree = 'KEHdZzc6wsI';
    const double startSecondsthree = 10;
    const String videoIdfour = 'L1vTL0m5LGM';
    const double startSecondsfour = 9;
    const String videoIdfive = 'zeRJRBNRrpA';
    const double startSecondsfive = 56;
    // final String _videoId6 = 'KTAg936uoic';
    // final double _startSeconds6 = 18;
    // final String _videoId7 = 'H0oASv8ZXbc';
    // final double _startSeconds7 = 37;
    // final String _videoId = 'srGuW1OkyHs';
    // final double _startSeconds = 23;
    // final String _videoId = 'GTvlQ0cAKpw';
    // final double _startSeconds = 275;

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
                      word: """algae""",
                      // alsoEnglishWord: "also: algae",
                      britshText: """IpaUK: /ˈældʒiː/, /ˈælɡiː/""",
                      americanText: """IpaUS: /ˈældʒiː/, /ˈælɡiː/""",
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
کوردی: قەوزە، کەژاو، کەوزەر، جەلاوی، گاوەک، قەوزوگەل
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) خانەی زۆر سەرەتایی کە ھیچ ڕەگ و قەد و بنەچەیان نییە و لە نزیک ئاو دەژین"""),
                    SentencesRow(
                      englishText:
                          "Algae has clogged the intake to the water stem.",
                      kurdishText: "قەوزە ڕێگای ڕێڕەوی ئاوەکەی گرتبوو.",
                      onPressedBritish: () => speakalgae4524("en-GB"),
                      onPressedAmerican: () => speakalgae4524("en-US"),
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

