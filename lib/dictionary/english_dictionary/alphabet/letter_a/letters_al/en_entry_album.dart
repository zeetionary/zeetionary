import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalbum extends StatefulWidget {
  const EnglishEntryalbum({super.key});

  @override
  State<EnglishEntryalbum> createState() => _EnglishEntryalbumState();
}

class _EnglishEntryalbumState extends State<EnglishEntryalbum> {
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
- Noun: album (derived forms: albums)
1. One or more recordings issued together; originally released on 12-inch phonograph records (usually with attractive record covers) and later on cassette audiotape and compact disc (= record album)
 
2. A book of blank pages with pockets or envelopes; for organizing photographs or stamp collections etc
""",
  );
// 188888880002200

  final String keyword = "album";
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
    await flutterTts.speak("""album""");
  }

  Future<void> speakalbum42599(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I keep the photographs in an album.");
  }

  Future<void> speakalbum3655(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They recently released their debut album.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '14WE3A0PwVs';
    const double startSecondsend = 153;
    const String videoIdone = 'i5RNOR6T8GM';
    const double startSecondsone = 21;
    const String videoIdtwo = 'rXqh6AcIb-c';
    const double startSecondstwo = 1;
    const String videoIdthree = 'cTozcxvFDtM';
    const double startSecondsthree = 33;
    const String videoIdfour = '_VR13f6pPT8';
    const double startSecondsfour = 1;
    const String videoIdfive = '544DTGHIBM0';
    const double startSecondsfive = 20;
    // final String _videoId = 'H1wjMGosYa8';
    // final double _startSeconds = 139;
    // final String _videoId = 'EIObKXp31TI';
    // final double _startSeconds = 17;
    // final String _videoId = 'fXyboC9qC5Y';
    // final double _startSeconds = 17;
    // final String _videoId = '752G5keli6k';
    // final double _startSeconds = 17;

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
                      word: """album""",
                      // alsoEnglishWord: "also: album",
                      britshText: """IpaUK: /ˈælbəm/""",
                      americanText: """IpaUS: /ˈælbəm/""",
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
کوردی: ئاڵبۆم، وێنەدان، جێ‌وێنە، جێ‌پوول، پوول‌دان، ئاڵبومی میوزیک
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) کتێبێک کە تێیدا وێنە ھەڵدەگریت" ""),
                    SentencesRow(
                      englishText: "I keep the photographs in an album.",
                      kurdishText: "وێنەکان لە ئەلبومێکدا ھەڵدەگرم.",
                      onPressedBritish: () => speakalbum42599("en-GB"),
                      onPressedAmerican: () => speakalbum42599("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ژمارەیەک پارچە میوزیک یان گۆرانی کە پێکەوە لەسەر ئینتەرنێت یان بە سی دی بڵاودەکرێنەوە"""),
                    SentencesRow(
                      englishText: "They recently released their debut album.",
                      kurdishText: "بەم نزیکانە یەکەم ئەلبومیان بڵاوکردەوە.",
                      onPressedBritish: () => speakalbum3655("en-GB"),
                      onPressedAmerican: () => speakalbum3655("en-US"),
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



