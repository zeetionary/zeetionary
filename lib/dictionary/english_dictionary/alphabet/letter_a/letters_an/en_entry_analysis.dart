import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanalysis extends StatefulWidget {
  const EnglishEntryanalysis({super.key});

  @override
  State<EnglishEntryanalysis> createState() => _EnglishEntryanalysisState();
}

class _EnglishEntryanalysisState extends State<EnglishEntryanalysis> {
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
- Noun: analysis (derived forms: analyses)
1. An investigation of the component parts of a whole and their relations in making up the whole
 
2. The abstract separation of a whole into its constituent parts in order to study the parts and their relations (= analytic thinking)
 
3. A form of literary criticism in which the structure of a piece of writing is analysed
 
4. The use of closed-class words instead of inflections: e.g., 'the father of the bride' instead of 'the bride's father'
 
5. (mathematics) a branch of mathematics involving calculus and the theory of limits; sequences and series and integration and differentiation
 
6. A set of techniques for exploring underlying motives and a method of treating various mental disorders; based on the theories of Sigmund Freud (= psychoanalysis, depth psychology)
"his physician recommended analysis";
""",
  );
// 188888880002200

  final String keyword = "analysis";
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
    await flutterTts.speak("""analysis""");
  }


  Future<void> speakanalysis000(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Further analysis revealed significant regional variations in the results.");
  }

  Future<void> speakanalysis7499(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We made the decision based on our analysis of the situation.");
  }

  Future<void> speakanalysis7066(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The blood samples are sent to the laboratory for analysis.");
  }

  @override
  Widget build(BuildContext context) {

  const String videoIdend = 'zvFD5KBAb0Q';
  const double startSecondsend = 55;
  const String videoIdone = 'Xmbw_F5p9Fs';
  const double startSecondsone = 173;
  const String videoIdtwo = 'NFsuarWIhfE';
  const double startSecondstwo = 1;
  const String videoIdthree = 'bHIhgxav9LY';
  const double startSecondsthree = 566;
  const String videoIdfour = 'tMKXbLBgkEc';
  const double startSecondsfour = 64;
  const String videoIdfive = '0jltioeaEyY';
  const double startSecondsfive = 485;
  // const String videoId = 'LK5iWpVJ4cM';
  // const double startSeconds = 173;
  // const String videoId = 'qg2nGY1aqlg';
  // const double startSeconds = 1665;
  // const String videoId = 'Sbp_EeBk-As';
  // const double startSeconds = 754;
  // const String videoId = 'cY4e0uvp7uI';
  // const double startSeconds = 1103;

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
                      word: """analysis""",
                      // alsoEnglishWord: "also: analysis",
                      britshText: """IpaUK: /əˈnæləsɪs/""",
                      americanText: """IpaUS: /əˈnæləsɪs/""",
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
کوردی: شیتەڵاندن، شیتەڵ‌کردن، شی‌کردنەوە، شیکاری، تاوتوێ(کردن)، لێکدانەوە، بڕگاندن (ڕێزمان)
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) توێژینەوەی ورد لەسەر شتێک بۆ زیاتر تێگەشتن لێی"""),
                          SentencesRow(
                            englishText:
                                "Further analysis revealed significant regional variations in the results.",
                            kurdishText:
                                "توێژینەوەی زیاتر جیاوازیی بەرچاوی ھەرێمی لە ئەنجامەکان دەرخست.",
                            onPressedBritish: () => speakanalysis000("en-GB"),
                            onPressedAmerican: () => speakanalysis000("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "We made the decision based on our analysis of the situation.",
                            kurdishText:
                                "بڕیارەکەمان‌دا لە دوای لەبەرچاوگرتنی لێکدانەوەمان بۆ بارودۆخەکە.",
                            onPressedBritish: () => speakanalysis7499("en-GB"),
                            onPressedAmerican: () => speakanalysis7499("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) لێکۆڵینەوەی ورد لە شتێک بۆ ئەوەی بزانی لە چی پێکھاتووە"""),
                          SentencesRow(
                            englishText:
                                "The blood samples are sent to the laboratory for analysis.",
                            kurdishText:
                                "سامپڵەکانی خوێنەکە نێردران بۆ تاقیگە بۆ لێکۆڵینەوە.",
                            onPressedBritish: () => speakanalysis7066("en-GB"),
                            onPressedAmerican: () => speakanalysis7066("en-US"),
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


