// end airship
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryairship extends StatefulWidget {
  const EnglishEntryairship({super.key});

  @override
  State<EnglishEntryairship> createState() => _EnglishEntryairshipState();
}

class _EnglishEntryairshipState extends State<EnglishEntryairship> {
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
- Noun: airship (derived forms: airships)
1. A steerable self-propelled aircraft (= dirigible [N. Amer])

- Verb: air-ship (derived forms: air-shipped, air-ships, air-shipping)
1. Transport (cargo) by air (= airfreight, air-freight)
"International air-ship traffic dropped 2.7 percent in August";
""",
  );
// 188888880002200

  final String keyword = "airship";
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
    await flutterTts.speak("""airship""");
  }

  Future<void> speakairship426(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "If necessary, the airship can stay up there for days to keep out of danger.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'e61qzVp8ixc';
    const double startSecondsend = 112;
    const String videoIdone = 'XCcgJbGf3es';
    const double startSecondsone = 1138;
    const String videoIdtwo = 'lhAMkWnbp64';
    const double startSecondstwo = 224;
    const String videoIdthree = 'FrAc-yORdAo';
    const double startSecondsthree = 9;
    const String videoIdfour = 'sqFJaOENlOE';
    const double startSecondsfour = 29;
    const String videoIdfive = 'X2mdsyEAO_M';
    const double startSecondsfive = 21;
    // final String _videoId = '41-4BVprL50';
    // final double _startSeconds = 20;
    // final String _videoId = 'ZjBgEkbnX2I';
    // final double _startSeconds = 220;
    // final String _videoId = 'hM3MraGvf7c';
    // final double _startSeconds = 195;
    // final String _videoId = '11rI1ogM_pE';
    // final double _startSeconds = 4;

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
                      word: """airship""",
                      // alsoEnglishWord: "also: airship",
                      britshText: """IpaUK: /ˈeəʃɪp/""",
                      americanText: """IpaUS: /ˈerʃɪp/""",
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
کوردی: کەشتی ئاسمانی یا ھەوایی، ھەواکەشتی
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) فڕۆکەیەکی گەورەی بێ باڵ کە پڕ لە گازی سووکتر لە ھەوایە و بەمەش دەفڕێت"
                            ""),
                    SentencesRow(
                      englishText:
                          "If necessary, the airship can stay up there for days to keep out of danger.",
                      kurdishText:
                          "ئەگەر پێویست بکات ھەواکەشتییەکە دەتوانێت بۆ چەندین ڕۆژ لەوێ بمێنێتەوە بۆ دووربوون لە مەترسی.",
                      onPressedBritish: () => speakairship426("en-GB"),
                      onPressedAmerican: () => speakairship426("en-US"),
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



