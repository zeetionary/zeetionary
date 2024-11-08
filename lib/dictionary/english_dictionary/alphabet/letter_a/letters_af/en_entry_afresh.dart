import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryafresh extends StatefulWidget {
  const EnglishEntryafresh({super.key});

  @override
  State<EnglishEntryafresh> createState() => _EnglishEntryafreshState();
}

class _EnglishEntryafreshState extends State<EnglishEntryafresh> {
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
- Adverb: afresh
1. Again but in a new or different way (= anew)
"start afresh";
""",
  );
// 188888880002200

  final String keyword = "afresh";
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
    await flutterTts.speak("""afresh""");
  }

  Future<void> speakafre411(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It was a chance to start afresh.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoId0 = 'L3eC_HAeWtU';
    const double startSeconds0 = 1058;
    const String videoId1 = 'EhlPFoL70lE';
    const double startSeconds1 = 840;
    const String videoId2 = 'ytMNr9gLqE4';
    const double startSeconds2 = 1355;
    const String videoId3 = '5p6jJSZdMt0';
    const double startSeconds3 = 1350;
    const String videoId4 = 'q5iCPKDp4V4';
    const double startSeconds4 = 1130;
    const String videoId5 = '43hSE0hXnZI';
    const double startSeconds5 = 1089;

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
                      word: """afresh""",
                      // alsoEnglishWord: "also: afresh",
                      britshText: """IpaUK: /əˈfreʃ/""",
                      americanText: """IpaUS: /əˈfreʃ/""",
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
کوردی: جارێکی تر، سەرلەنوێ، دووبارە، لە ھەوەڵەوە، لە نووکەوە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵکار) دووبارە لە سەرەتاوە، زۆرجار بەشێوەیەکی جیاوازتر"""),
                    SentencesRow(
                      englishText: "It was a chance to start afresh.",
                      kurdishText:
                          "شانسێک بوو بۆ ئەوەی سەرلەنوێ دەستپێبکەینەوە.",
                      onPressedBritish: () => speakafre411("en-GB"),
                      onPressedAmerican: () => speakafre411("en-US"),
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
                    key: ValueKey(videoId0),
                    videoId: videoId0,
                    startSeconds: startSeconds0,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId1),
                    videoId: videoId1,
                    startSeconds: startSeconds1,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId2),
                    videoId: videoId2,
                    startSeconds: startSeconds2,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId3),
                    videoId: videoId3,
                    startSeconds: startSeconds3,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId4),
                    videoId: videoId4,
                    startSeconds: startSeconds4,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId5),
                    videoId: videoId5,
                    startSeconds: startSeconds5,
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
