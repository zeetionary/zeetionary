import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapostrophe extends StatefulWidget {
  const EnglishEntryapostrophe({super.key});

  @override
  State<EnglishEntryapostrophe> createState() => _EnglishEntryapostropheState();
}

class _EnglishEntryapostropheState extends State<EnglishEntryapostrophe> {
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
- Noun: apostrophe (derived forms: apostrophes)
1. Address to an absent or imaginary person
 
2. The mark (') used to indicate the omission of one or more letters from a printed word
""",
  );
// 188888880002200

  final String keyword = "apostrophe";
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
    await flutterTts.speak("""apostrophe""");
  }

  Future<void> speakapostrophe708(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("'It's' with an apostrophe means 'it is' or 'it has'.");
  }

  Future<void> speakapostrophe710(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Helen's house is very large.");
  }

  Future<void> speakapostrophe714(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("How many 3’s are there in 9?");
  }

  Future<void> speakapostrophe715(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There are two m’s in ‘comma’.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'iLMVYhlj5KI';
    const double startSecondsend = 30;
    const String videoIdone = 'fn3wA9H268o';
    const double startSecondsone = 1;
    const String videoIdtwo = '04jOKuZG7xs';
    const double startSecondstwo = 5;
    const String videoIdthree = '8xozB1_QVG8';
    const double startSecondsthree = 7;
    const String videoIdfour = 'XDVvJFJqH_c';
    const double startSecondsfour = 13;
    const String videoIdfive = '0zwNZJbM-Gw';
    const double startSecondsfive = 302;
    // final String _videoId = '65CFesU4KVQ';
    // final double _startSeconds = 377;
    // final String _videoId = 'u9_kahA_wQo';
    // final double _startSeconds = 80;
    // final String _videoId = '-UEs4Ikf-_4';
    // final double _startSeconds = 284;
    // final String _videoId = 'vd0yESrQMs0';
    // final double _startSeconds = 1400;
    // final String _videoId = '1AH-tr6rTto';
    // final double _startSeconds = 273;

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
                      word: """apostrophe""",
                      // alsoEnglishWord: "also: apostrophe",
                      britshText: """IpaUK: haʊʊʊʊʊʊʊ4""",
                      americanText: """IpaUS: haʊʊʊʊʊʊʊ4""",
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
کوردی: کرتێن، بۆرۆکە، ئێپاسترۆف (" یان ’)
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) نیشانەی ’ وەک ئاماژەیەک بەوەی پیتێک یان زیاتر لە وشەیەکدا سڕدراونەتەوە، بۆ نموونە وەک she’s بۆ she is، یان ’63 بۆ 1963"""),
                    SentencesRow(
                      englishText:
                          "'It's' with an apostrophe means 'it is' or 'it has'.",
                      kurdishText:
                          "'It's' بە کرتێنێکێکەوە دەکرێ واتای it is یان it has بێ.",
                      onPressedBritish: () => speakapostrophe708("en-GB"),
                      onPressedAmerican: () => speakapostrophe708("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) بۆ پیشاندانی خاوەندارێتی بەکاردێت"""),
                    SentencesRow(
                      englishText: "Helen's house is very large.",
                      kurdishText: "ماڵ ھێلین زۆر گەورەیە.",
                      onPressedBritish: () => speakapostrophe710("en-GB"),
                      onPressedAmerican: () => speakapostrophe710("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) لە پێش یان پاشی پیتی s بەکاردێ بۆ دەربڕینی ژمارە یان پیت بۆ شێوەی کۆ"""),
                    SentencesRow(
                      englishText: "How many 3’s are there in 9?",
                      kurdishText: "چەند دانە ٣ لە ٩دا ھەیە؟",
                      onPressedBritish: () => speakapostrophe714("en-GB"),
                      onPressedAmerican: () => speakapostrophe714("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "There are two m’s in ‘comma’.",
                      kurdishText: "دوو m لە وشەی comma دا ھەیە.",
                      onPressedBritish: () => speakapostrophe715("en-GB"),
                      onPressedAmerican: () => speakapostrophe715("en-US"),
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
