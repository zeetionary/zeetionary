import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantibody extends StatefulWidget {
  const EnglishEntryantibody({super.key});

  @override
  State<EnglishEntryantibody> createState() => _EnglishEntryantibodyState();
}

class _EnglishEntryantibodyState extends State<EnglishEntryantibody> {
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
- Noun: antibody (derived forms: antibodies)
1. Any of a large variety of proteins normally present in the body or produced in response to an antigen which it neutralizes, thus producing an immune response
""",
  );
// 188888880002200

  final String keyword = "antibody";
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
    await flutterTts.speak("""antibody""");
  }

  Future<void> speakantibody1019(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Antibodies found in breast milk protect newborn babies against infection.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'zZl0gcHHnhM';
    const double startSecondsend = 22;
    const String videoIdone = 'nKyjSUhhHRs';
    const double startSecondsone = 207;
    const String videoIdtwo = 'cA_FGtGwiig';
    const double startSecondstwo = 65;
    const String videoIdthree = 'NOK6drNPNck';
    const double startSecondsthree = 5;
    const String videoIdfour = 'Gs26bZTRkdU';
    const double startSecondsfour = 530;
    const String videoIdfive = 'LKNfFm0QDXQ';
    const double startSecondsfive = 792;
    // final String _videoId = '5odneOsxNTw';
    // final double _startSeconds = 26;
    // final String _videoId = 'uGy2AmF_cAo';
    // final double _startSeconds = 409;
    // final String _videoId = 'nucCr7Sywgc';
    // final double _startSeconds = 295;
    // final String _videoId = 'VwntyCN7lGM';
    // final double _startSeconds = 306;
    // final String _videoId = 'yBdUec86_YY';
    // final double _startSeconds = 201;

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
                      word: """antibody""",
                      // alsoEnglishWord: "also: antibody",
                      britshText: """IpaUK: /ˈæntibɒdi/""",
                      americanText: """IpaUS: /ˈæntibɑːdi/""",
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
کوردی: نەھێڵەلەش، ئەنتی‌بادی، دژەتەن، دژەتەن
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) مادەیەک کە لەش درووستی دەکات لە خوێندا، یان وەک کاردانەوە دژ بە شتێک کە دەخرێتە لەشەوە"
                            ""),
                    SentencesRow(
                      englishText:
                          "Antibodies found in breast milk protect newborn babies against infection.",
                      kurdishText:
                          "ئەو دژەتەنانەی لە شیری سرووشتیدان منداڵی ساوا دەپارێزن لە نەخۆشی.",
                      onPressedBritish: () => speakantibody1019("en-GB"),
                      onPressedAmerican: () => speakantibody1019("en-US"),
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

