import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryannotation extends StatefulWidget {
  const EnglishEntryannotation({super.key});

  @override
  State<EnglishEntryannotation> createState() => _EnglishEntryannotationState();
}

class _EnglishEntryannotationState extends State<EnglishEntryannotation> {
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
- Noun: annotation (derived forms: annotations)
1. A comment or instruction (usually added) (= note, notation)
"his annotations were appended at the end of the article";
 
2. The act of adding notes (= annotating)
""",
  );
// 188888880002200

  final String keyword = "annotation";
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
    await flutterTts.speak("""annotation""");
  }

  Future<void> speakannotation210(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It will be published with annotations.");
  }

  Future<void> speakannotation212(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The annotation of literary texts makes them more accessible.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'kykfP6T09xA';
    const double startSecondsend = 27;
    const String videoIdone = 'maoFISpmlYA';
    const double startSecondsone = 167;
    const String videoIdtwo = 'YTbeRTH7jkg';
    const double startSecondstwo = 721;
    const String videoIdthree = 'gSn5JtS53BI';
    const double startSecondsthree = 353;
    const String videoIdfour = 'fNLtw22-2UY';
    const double startSecondsfour = 347;
    const String videoIdfive = 'nCNri04lHaI';
    const double startSecondsfive = 286;
    // final String _videoId = 'L9FBI1kOEHo';
    // final double _startSeconds = 524;
    // final String _videoId = '8yEyam1euz4';
    // final double _startSeconds = 232;
    // final String _videoId = 't3BSYVnemqk';
    // final double _startSeconds = 469;
    // final String _videoId = '_okYpQlaeGo';
    // final double _startSeconds = 219;
    // final String _videoId = '5r2TkjqFzTk';
    // final double _startSeconds = 402;
    // final String _videoId = 'NMcI1KMVRSg';
    // final double _startSeconds = 86;

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
                      word: """annotation""",
                      // alsoEnglishWord: "also: annotation",
                      britshText: """IpaUK: /ˌænəˈteɪʃn/""",
                      americanText: """IpaUS: /ˌænəˈteɪʃn/""",
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
کوردی: ڕوون‌کردنەوە، لێکدانەوە، ڕاڤەکردن، پەراوێز، پەراوێزنووسی
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) تێبینییەک کە زیاد دەکرێت بۆ کتێبێک، نووسراوێک، یان شتێک کە ڕوونکردنەوەی لەسەر دەدات"
                            ""),
                    SentencesRow(
                      englishText: "It will be published with annotations.",
                      kurdishText: "بڵاودەکرێتەوە لەگەڵ پەراوێزدا.",
                      onPressedBritish: () => speakannotation210("en-GB"),
                      onPressedAmerican: () => speakannotation210("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The annotation of literary texts makes them more accessible.",
                      kurdishText:
                          "بڵاوکردنەوەی نووسراوی ئەدەبی بە ڕوونکردنەوەوە وادەکات خەڵکی زیاتر بیانخوێننەوە.",
                      onPressedBritish: () => speakannotation212("en-GB"),
                      onPressedAmerican: () => speakannotation212("en-US"),
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


