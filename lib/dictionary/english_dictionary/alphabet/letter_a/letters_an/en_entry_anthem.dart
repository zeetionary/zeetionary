import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanthem extends StatefulWidget {
  const EnglishEntryanthem({super.key});

  @override
  State<EnglishEntryanthem> createState() => _EnglishEntryanthemState();
}

class _EnglishEntryanthemState extends State<EnglishEntryanthem> {
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
- Noun: anthem (derived forms: anthems)
1. A song of devotion or loyalty (as to a nation or school)
 
2. A song of praise (to God or to a saint or to a nation) (= hymn)
""",
  );
// 188888880002200

  final String keyword = "anthem";
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
    await flutterTts.speak("""anthem""");
  }

  Future<void> speakanthem542(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The European anthem was played at the opening and closing ceremonies.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'fkfIMoCemsE';
    const double startSecondsend = 14;
    const String videoIdone = '9oWpwTvUhxs';
    const double startSecondsone = 29;
    const String videoIdtwo = 'QWJ-gJu0yzQ';
    const double startSecondstwo = 32;
    const String videoIdthree = 'l90AySVWgag';
    const double startSecondsthree = 149;
    const String videoIdfour = '2LD-WXWWX-U';
    const double startSecondsfour = 175;
    const String videoIdfive = 'R426Pb7SIk8';
    const double startSecondsfive = 1;
    // final String _videoId = 'xtJMpn8AArM';
    // final double _startSeconds = 15;
    // final String _videoId = 'eSeYXtqHg9g';
    // final double _startSeconds = 38;
    // final String _videoId = '5zFkNBXcAB0';
    // final double _startSeconds = 92;
    // final String _videoId = 'q6SirTeW7Wg';
    // final double _startSeconds = 214;
    // final String _videoId = '8iCWqWPouhs';
    // final double _startSeconds = 190;

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
                      word: """anthem""",
                      // alsoEnglishWord: "also: anthem",
                      britshText: """IpaUK: /ˈænθəm/""",
                      americanText: """IpaUS: /ˈænθəm/""",
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
کوردی: سرود؛ سرودی نیشتمانی، مارشی نەتەوەیی
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) گۆرانییەک کە تایبەتمەندییەکی گرنگی ھەیە وڵاتێک، ڕێکخراوێک، یان کۆمەڵە کەسێک و لە بۆنە تایبەتەکاندا دەوترێت"
                            ""),
                    SentencesRow(
                      englishText:
                          "The European anthem was played at the opening and closing ceremonies.",
                      kurdishText:
                          "ئەنزیمی ئەورووپا لێدرا لە سەرەتا و کۆتایی بۆنەکە.",
                      onPressedBritish: () => speakanthem542("en-GB"),
                      onPressedAmerican: () => speakanthem542("en-US"),
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

