import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryannals extends StatefulWidget {
  const EnglishEntryannals({super.key});

  @override
  State<EnglishEntryannals> createState() => _EnglishEntryannalsState();
}

class _EnglishEntryannalsState extends State<EnglishEntryannals> {
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
- Noun: annals
1. Reports of the work of a society or learned body etc
 
2. A chronological account of events in successive years (= chronological record)
""",
  );
// 188888880002200

  final String keyword = "annals";
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
    await flutterTts.speak("""annals""");
  }

  Future<void> speakannals1123(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("His deeds went down in the annals of British history.");
  }

  Future<void> speakannals1125(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This is a historic day in the annals of the team.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'fU-8Rg4CgeI';
    const double startSecondsend = 1027;
    const String videoIdone = 'zssa-tdKfBk';
    const double startSecondsone = 365;
    const String videoIdtwo = '112H-vY4Wdo';
    const double startSecondstwo = 350;
    const String videoIdthree = 'PhJhJfMp658';
    const double startSecondsthree = 41;
    const String videoIdfour = 'HesqAy0Vf48';
    const double startSecondsfour = 17;
    const String videoIdfive = 'HL7DEkXV_60';
    const double startSecondsfive = 256;
    // final String _videoId = '5E3654Wvr1Q';
    // final double _startSeconds = 392;
    // final String _videoId = 'OT0tHcBygtE';
    // final double _startSeconds = 37;
    // final String _videoId = '219YybX66MY';
    // final double _startSeconds = 2644;
    // final String _videoId = '2YhD3mpDIZQ';
    // final double _startSeconds = 344;
    // final String _videoId = 'o0PHwBeEwSU';
    // final double _startSeconds = 506;

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
                      word: """annals""",
                      // alsoEnglishWord: "also: annals",
                      britshText: """IpaUK: /ˈænlz/""",
                      americanText: """IpaUS: /ˈænlz/""",
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
کوردی: (ساڵ بە ساڵ) ساڵ‌نامە، ڕووداونامە، تۆمارنامە، مێژوونامە، مێژوو، تۆمارە مێژویی‌یەکان
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) تۆماری مێژوویی؛ تۆماری فەرمی ڕووداو و چالاکیی ساڵانە"
                            ""),
                    SentencesRow(
                      englishText:
                          "His deeds went down in the annals of British history.",
                      kurdishText: "کارەکانی چوونە تۆماری مێژووی بەریتانیاوە.",
                      onPressedBritish: () => speakannals1123("en-GB"),
                      onPressedAmerican: () => speakannals1123("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "This is a historic day in the annals of the team.",
                      kurdishText: "ئەمە ڕۆژێکی مێژووییە لە مێژوونامەی تیمەکە.",
                      onPressedBritish: () => speakannals1125("en-GB"),
                      onPressedAmerican: () => speakannals1125("en-US"),
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


