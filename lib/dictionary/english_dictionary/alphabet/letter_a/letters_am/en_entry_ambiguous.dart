import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryambiguous extends StatefulWidget {
  const EnglishEntryambiguous({super.key});

  @override
  State<EnglishEntryambiguous> createState() => _EnglishEntryambiguousState();
}

class _EnglishEntryambiguousState extends State<EnglishEntryambiguous> {
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
- Adjective: ambiguous 
1. Open to two or more interpretations; or of uncertain nature or significance; or (often) intended to mislead (= equivocal)
"the polling had a complex and ambiguous message for potential female candidates";
 
2. Having more than one possible meaning
"ambiguous words"; "frustrated by ambiguous instructions, the parents were unable to assemble the toy"
 
3. (psychology) having no intrinsic or objective meaning; not organized in conventional patterns
"an ambiguous situation with no frame of reference"; "ambiguous inkblots"
""",
  );
// 188888880002200

  final String keyword = "ambiguous";
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
    await flutterTts.speak("""ambiguous""");
  }

  Future<void> speakambiguous7666(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The paragraph is rendered ambiguous by the writer's careless use of pronouns.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'W5jAiVVOr0w';
    const double startSecondsend = 40;
    const String videoIdone = 'VXXpRW3bGw8';
    const double startSecondsone = 63;
    const String videoIdtwo = '57nlvT_o8uw';
    const double startSecondstwo = 1;
    const String videoIdthree = '5xioPAlymFM';
    const double startSecondsthree = 92;
    const String videoIdfour = 's3B-qp3U5G0';
    const double startSecondsfour = 525;
    const String videoIdfive = 'KhBxCx11eck';
    const double startSecondsfive = 1418;
    // final String _videoId = '90MNvA5ozcI';
    // final double _startSeconds = 126;
    // final String _videoId = 'L3XnKr0lvDw';
    // final double _startSeconds = 298;
    // final String _videoId = 'iK7lICvUhCI';
    // final double _startSeconds = 9;

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
                      word: """ambiguous""",
                      // alsoEnglishWord: "also: ambiguous",
                      britshText: """IpaUK: /æmˈbɪɡjuəs/""",
                      americanText: """IpaUS: /æmˈbɪɡjuəs/""",
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
کوردی: ئاڵۆز، تەماوی، بەتوێکڵ، دووواتان، دوومانا، بەپێچ‌وپەنا، تەژمە، تەم‌ومژاوی، لێڵ، گرکی، نەڕوون
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) شتێک کە دەکرێت زیاتر لە یەک لێکدانەوەی ھەبێت"""),
                    SentencesRow(
                      englishText:
                          "The paragraph is rendered ambiguous by the writer's careless use of pronouns.",
                      kurdishText:
                          "پەرەگرافەکە ناڕوون بووە بەھۆی کەمتەرخەمانە بەکارھێنانی جێناوەکان لەلایەن نووسەرەوە.",
                      onPressedBritish: () => speakambiguous7666("en-GB"),
                      onPressedAmerican: () => speakambiguous7666("en-US"),
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

