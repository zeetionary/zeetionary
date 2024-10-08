// end aftermath
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaftermath extends StatefulWidget {
  const EnglishEntryaftermath({super.key});

  @override
  State<EnglishEntryaftermath> createState() => _EnglishEntryaftermathState();
}

class _EnglishEntryaftermathState extends State<EnglishEntryaftermath> {
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
- Noun: aftermath (derived forms: aftermaths)
1. The consequences of an event (especially a catastrophic event) (= wake, backwash)
"the aftermath of war";
 
2. The outcome of an event especially as relative to an individual (= consequence)
 
3. The second growth of grass in a season (= rowen [US])
""",
  );
// 188888880002200

  final String keyword = "aftermath";
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
    await flutterTts.speak("""aftermath""");
  }

  Future<void> speakafterm92483(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The president visited the region in the immediate aftermath of the disaster.");
  }


  @override
  Widget build(BuildContext context) {

  const String videoId0 = 'kHrjgWoy8qY';
  const double startSeconds0 = 218;
  const String videoId1 = 'tXjHb5QmDV0';
  const double startSeconds1 = 1161;
  const String videoId2 = 'QLq6GEiHqR8';
  const double startSeconds2 = 959;
  const String videoId3 = 'qr4MSVxfYBE';
  const double startSeconds3 = 1275;
  const String videoId4 = 'OgFcz6klaeg';
  const double startSeconds4 = 546;
  const String videoId5 = 'BztMgcNgobk';
  const double startSeconds5 = 1315;
  // const String videoId = 'qjubq284yVk';
  // const double startSeconds = 4;
  // const String videoId = 'knjliFs3gR8';
  // const double startSeconds = 777;

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
                      word: """aftermath""",
                      // alsoEnglishWord: "also: aftermath",
                      britshText: """IpaUK: /ˈɑːftəmæθ/, /ˈɑːftəmɑːθ/""",
                      americanText: """IpaUS: /ˈɑːftərmæθ/""",
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
کوردی: ئەنجام، پێ‌ئاژۆ، ئاکام، قۆناخی دوای کارەساتێ یان ڕووداوی ناخۆش، (کشت‌وکاڵ) بەر یان چینی دووھەم
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) دەرئەنجامی ڕووداوێک یان جەنگ" ""),
                          SentencesRow(
                            englishText:
                                "The president visited the region in the immediate aftermath of the disaster.",
                            kurdishText:
                                "سەرۆک سەردانی ھەرێمەکەی کرد لە دەرئەنجامی کارەساتەکە.",
                            onPressedBritish: () => speakafterm92483("en-GB"),
                            onPressedAmerican: () => speakafterm92483("en-US"),
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
