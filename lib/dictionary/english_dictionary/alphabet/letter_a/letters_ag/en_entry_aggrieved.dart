// end aggrieved
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaggrieved extends StatefulWidget {
  const EnglishEntryaggrieved({super.key});

  @override
  State<EnglishEntryaggrieved> createState() => _EnglishEntryaggrievedState();
}

class _EnglishEntryaggrievedState extends State<EnglishEntryaggrieved> {
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
- Adjective: aggrieved 
1. Angry or resentful due to unfair treatment
 
2. Emotionally hurt, upset or annoyed (= offended, pained, injured)
"she looked aggrieved";
""",
  );
// 188888880002200

  final String keyword = "aggrieved";
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
    await flutterTts.speak("""aggrieved""");
  }

  Future<void> speakaggri6254(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He had every right to feel aggrieved at the decision.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'wSNYgHiB-N4';
    const double startSecondsend = 770;
    const String videoIdone = 'hTY_FDO2TXw';
    const double startSecondsone = 812;
    const String videoIdtwo = 'aLoCFK8a_Fo';
    const double startSecondstwo = 57;
    const String videoIdthree = 'UTskEs2UF6w';
    const double startSecondsthree = 17;
    const String videoIdfour = 'pm5xxlajTW0';
    const double startSecondsfour = 6808;
    const String videoIdfive = 'pHZ7C1yhcAY';
    const double startSecondsfive = 501;
    // final String _videoId6 = 'GMbPpio9jJo';
    // final double _startSeconds6 = 497;
    // final String _videoId = 'veN5XnTkHI8';
    // final double _startSeconds = 354;

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
                      word: """aggrieved""",
                      // alsoEnglishWord: "also: aggrieved",
                      britshText: """IpaUK: /əˈɡriːvd/""",
                      americanText: """IpaUS: /əˈɡriːvd/""",
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
کوردی: چەوسێنراو، زۆرلێ‌کراو، زوڵم‌لێ‌کراو، ماف‌خوراو، جەوردیتوو، ڕەنج‌کێشاو، ڕەنجێنراو، کوێرەوەری‌دیتوو، بەخەم، خەمین، ناڕەحەت، دەسەوئەژنۆ
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) ھەستکردن بەوەی بەخراپی مامەڵەت لەگەڵ کراوە"
                            ""),
                    SentencesRow(
                      englishText:
                          "He had every right to feel aggrieved at the decision.",
                      kurdishText:
                          "ھەموو مافێکی ھەبوو ھەست بە مافخوراوی بکات بەھۆی بڕیارەکەوە.",
                      onPressedBritish: () => speakaggri6254("en-GB"),
                      onPressedAmerican: () => speakaggri6254("en-US"),
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

