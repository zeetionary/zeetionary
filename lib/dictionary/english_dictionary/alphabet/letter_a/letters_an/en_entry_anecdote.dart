import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanecdote extends StatefulWidget {
  const EnglishEntryanecdote({super.key});

  @override
  State<EnglishEntryanecdote> createState() => _EnglishEntryanecdoteState();
}

class _EnglishEntryanecdoteState extends State<EnglishEntryanecdote> {
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
- Noun: anecdote (derived forms: anecdotes)
1. A short, interesting or amusing account of a real incident (especially a biographical one)
""",
  );
// 188888880002200

  final String keyword = "anecdote";
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
    await flutterTts.speak("""anecdote""");
  }

  Future<void> speakanecdote5407(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The book is a rich store of anecdote.");
  }

  Future<void> speakanecdote460(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This research is based on anecdote, not fact.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'p1Iybu8VcGo';
    const double startSecondsend = 1;
    const String videoIdone = 'IlU-zDU6aQ0';
    const double startSecondsone = 153;
    const String videoIdtwo = 'gGILiLTenR8';
    const double startSecondstwo = 35;
    const String videoIdthree = 'SwQhKFMxmDY';
    const double startSecondsthree = 4023;
    const String videoIdfour = '_uSJDq7VPrw';
    const double startSecondsfour = 838;
    const String videoIdfive = 'GaLdHd2J-xM';
    const double startSecondsfive = 17;
    // final String _videoId = 'vchJnrZgz-4';
    // final double _startSeconds = 1286;
    // final String _videoId = 'AVYNk2dPb9U';
    // final double _startSeconds = 571;
    // final String _videoId = '_rBO8neWw04';
    // final double _startSeconds = 1561;

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
                      word: """anecdote""",
                      // alsoEnglishWord: "also: anecdote",
                      britshText: """IpaUK: /ˈænɪkdəʊt/""",
                      americanText: """IpaUS: /ˈænɪkdəʊt/""",
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
کوردی: سەرگوزشتە، لاچیرۆک، حەقایەت، چیرۆک، داستان
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کورتە چیرۆکێکی سەرجڕاکێش و خۆش و پێکەنیناوی لەسەر کەسێک یان ڕووداوێک"""),
                    SentencesRow(
                      englishText: "The book is a rich store of anecdote.",
                      kurdishText:
                          "کتێبەکە سەرچاوەیەکی دەوڵەمەندی سەرگوزشتەیە.",
                      onPressedBritish: () => speakanecdote5407("en-GB"),
                      onPressedAmerican: () => speakanecdote5407("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) گێڕانەوەی کەسیی کەسێک بۆ ڕووداوێک"""),
                    SentencesRow(
                      englishText:
                          "This research is based on anecdote, not fact.",
                      kurdishText:
                          "ئەم توێژینەوەیە پشتی بە سەرگوزشتە بەستووە نەک ڕاستی.",
                      onPressedBritish: () => speakanecdote460("en-GB"),
                      onPressedAmerican: () => speakanecdote460("en-US"),
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


