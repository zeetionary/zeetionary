import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamalgamate extends StatefulWidget {
  const EnglishEntryamalgamate({super.key});

  @override
  State<EnglishEntryamalgamate> createState() => _EnglishEntryamalgamateState();
}

class _EnglishEntryamalgamateState extends State<EnglishEntryamalgamate> {
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
- Adjective: amalgamate 
1. Joined together into a whole (= amalgamated, coalesced, consolidated, fused)
"the amalgamate colleges constituted a university";

- Verb: amalgamate (derived forms: amalgamating, amalgamates, amalgamated)
1. To bring or combine together or with something else (= mix, mingle, commix [archaic], unify)
"resourcefully he amalgamated music and dance";
""",
  );
// 188888880002200

  final String keyword = "amalgamate";
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
    await flutterTts.speak("""amalgamate""");
  }

  Future<void> speakamalgamate4444(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A number of colleges have amalgamated to form the new university.");
  }

  Future<void> speakamalgamate68552(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They decided to amalgamate the two schools.");
  }

  Future<void> speakamalgamate4588(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This information will be amalgamated with information obtained earlier.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '8ilZWA4qtPE';
    const double startSecondsend = 529;
    const String videoIdone = 'qBOmJql6t9o';
    const double startSecondsone = 189;
    const String videoIdtwo = 'npaaFOwfKZk';
    const double startSecondstwo = 343;
    const String videoIdthree = '5KDS-97yE5Q';
    const double startSecondsthree = 126;
    const String videoIdfour = 'xn57xCokWkc';
    const double startSecondsfour = 138;
    const String videoIdfive = '_lu83z2t_is';
    const double startSecondsfive = 2442;
    // final String _videoId = 'H1XplZAvTQA';
    // final double _startSeconds = 507;
    // final String _videoId = 'ooOvXOfoOaM';
    // final double _startSeconds = 51;
    // final String _videoId = 'NMuoDphgLtc';
    // final double _startSeconds = 243;
    // final String _videoId = '_cRzhzh87PI';
    // final double _startSeconds = 226;
    // final String _videoId = '9t6BfuLmO5g';
    // final double _startSeconds = 822;
    // final String _videoId = 'DVThnXormAY';
    // final double _startSeconds = 474;

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
                      word: """amalgamate""",
                      // alsoEnglishWord: "also: amalgamate",
                      britshText: """IpaUK: /əˈmælɡəmeɪt/""",
                      americanText: """IpaUS: /əˈmælɡəmeɪt/""",
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
١. (کردار) یەکگرتن بۆ درووستکردنی شتێکی گەورەتر"""),
                    SentencesRow(
                      englishText:
                          "A number of colleges have amalgamated to form the new university.",
                      kurdishText:
                          "ژمارەیەک کۆلێژ یەکیان گرتووە بۆ درووستکردنی زانکۆ تازەکە.",
                      onPressedBritish: () => speakamalgamate4444("en-GB"),
                      onPressedAmerican: () => speakamalgamate4444("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "They decided to amalgamate the two schools.",
                      kurdishText: "بڕیاریاندا دوو قوتابخانەکە یەکبخەن.",
                      onPressedBritish: () => speakamalgamate68552("en-GB"),
                      onPressedAmerican: () => speakamalgamate68552("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) یەکخستنی دوو شت یان زیاتر بۆ درووستکردنی یەک شت"""),
                    SentencesRow(
                      englishText:
                          "This information will be amalgamated with information obtained earlier.",
                      kurdishText:
                          "ئەم زانیارییە یەکدەخرێت لەگەڵ زانیاری پێشووتر بەدەستھێنراو.",
                      onPressedBritish: () => speakamalgamate4588("en-GB"),
                      onPressedAmerican: () => speakamalgamate4588("en-US"),
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

