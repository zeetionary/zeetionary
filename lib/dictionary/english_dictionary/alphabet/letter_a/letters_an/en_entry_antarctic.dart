import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantarctic extends StatefulWidget {
  const EnglishEntryantarctic({super.key});

  @override
  State<EnglishEntryantarctic> createState() => _EnglishEntryantarcticState();
}

class _EnglishEntryantarcticState extends State<EnglishEntryantarctic> {
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
- Noun: Antarctic 
1. The region around the south pole: Antarctica and surrounding waters (= Antarctic Zone, South Frigid Zone)

- Adjective: Antarctic 
1. At or near the south pole (= south-polar)
""",
  );
// 188888880002200

  final String keyword = "Antarctic";
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
    await flutterTts.speak("""Antarctic""");
  }

  Future<void> speakantarctic134(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The protection of the Antarctic from commercial exploitation is an important goal of environmentalists.");
  }

  Future<void> speakantarctic136(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Scientists went on an Antarctic expedition to study penguins and ice.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'WHdzMX8smps';
    const double startSecondsend = 43;
    const String videoIdone = 'yTaVvSe03TQ';
    const double startSecondsone = 272;
    const String videoIdtwo = 'VjTXa7K1N_w';
    const double startSecondstwo = 629;
    const String videoIdthree = 'SzL8D1AtyQs';
    const double startSecondsthree = 61;
    const String videoIdfour = 'EvRAuy1ZmTc';
    const double startSecondsfour = 235;
    const String videoIdfive = '5UqjS1RGRzo';
    const double startSecondsfive = 12;
    // final String _videoId = '9NGVkjVMYNM';
    // final double _startSeconds = 81;
    // final String _videoId = 'EuSMfdeIuh8';
    // final double _startSeconds = 288;
    // final String _videoId = 'HVjqSPsz1sk';
    // final double _startSeconds = 4;
    // final String _videoId = 'tjj7At0COd4';
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
                      word: """Antarctic""",
                      // alsoEnglishWord: "also: Antarctic",
                      britshText: """IpaUK: /ænˈtɑːktɪk/""",
                      americanText: """IpaUS: /ænˈtɑːrktɪk/""",
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
١. (ناو) ھەرێمی خولگەی جەمسەری باشووری زەوی"""),
                    SentencesRow(
                      englishText:
                          "The protection of the Antarctic from commercial exploitation is an important goal of environmentalists.",
                      kurdishText:
                          "پاراستنی خولگەی جەمسەری باشوری زەوی لە بەکارھێنانی بە مەبەستی بازرگانی یەکێکە لە ئامانجە سەرەکییەکانی ژینگەپارێزان.",
                      onPressedBritish: () => speakantarctic134("en-GB"),
                      onPressedAmerican: () => speakantarctic134("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) پەیوەندیدار بە ھەرێمی خولگەی جەمسەری باشووری زەوی"""),
                    SentencesRow(
                      englishText:
                          "Scientists went on an Antarctic expedition to study penguins and ice.",
                      kurdishText:
                          "زاناکان دەستیان گە گەڕانێکی خولگەی جەمسەری باشوور کرد بۆ لێکۆڵینەوە لە پەنگوینەکان و سەھۆڵ.",
                      onPressedBritish: () => speakantarctic136("en-GB"),
                      onPressedAmerican: () => speakantarctic136("en-US"),
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

