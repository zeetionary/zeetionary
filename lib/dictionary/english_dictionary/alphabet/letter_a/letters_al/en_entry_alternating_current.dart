// end alternating current
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalternatingcurrent extends StatefulWidget {
  const EnglishEntryalternatingcurrent({super.key});

  @override
  State<EnglishEntryalternatingcurrent> createState() =>
      _EnglishEntryalternatingcurrentState();
}

class _EnglishEntryalternatingcurrentState
    extends State<EnglishEntryalternatingcurrent> {
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
- Noun: alternating current (derived forms: alternating currents)
1. An electric current that reverses direction sinusoidally (= AC, alternating electric current)
"In the US most household current is alternating current at 60 cycles per second"; 
""",
  );
// 188888880002200

  final String keyword = "alternating current";
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
    await flutterTts.speak("""alternating current""");
  }

  Future<void> speakalternatingcurrent124(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Unlike Edison, George Westinghouse was a proponent of alternating current.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'jDs6--U3fHk';
    const double startSecondsend = 4;
    const String videoIdone = 'bHIhgxav9LY';
    const double startSecondsone = 65;
    const String videoIdtwo = 'oI_X2cMHNe0';
    const double startSecondstwo = 1051;
    const String videoIdthree = 'g0amdIcZt5I';
    const double startSecondsthree = 600;
    const String videoIdfour = 'TdUK6RPdIrA';
    const double startSecondsfour = 120;
    const String videoIdfive = 'pLcqJ2DclEg';
    const double startSecondsfive = 280;
    // final String _videoId = '_yMMTVVJI4c';
    // final double _startSeconds = 1101;
    // final String _videoId = 'j-HFSre2Z7w';
    // final double _startSeconds = 386;
    // final String _videoId = '69GbSRVLj_Y';
    // final double _startSeconds = 939;
    // final String _videoId = 'ACtsYN1TWLg';
    // final double _startSeconds = 20;
    // final String _videoId = 'FksEGpBLfis';
    // final double _startSeconds = 730;
    // final String _videoId = '6JMfNtu7nOA';
    // final double _startSeconds = 252;

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
                      word: """alternating current""",
                      // alsoEnglishWord: "also: alternating current",
                      britshText: """IpaUK: /ˌɔːltəneɪtɪŋ ˈkʌrənt/""",
                      americanText: """IpaUS: /ˌɔːltərneɪtɪŋ ˈkɜːrənt/""",
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
کوردی: تەزوو یا تەوژمی گۆڕاو یا دوولایەنە، تەوژمی نۆرەکی
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) جۆرە تەزوویەکی کارەبا کە ئاراستەی دەگۆڕێت بەخێرایی جێگیر لە ماوەی چەند چرکەیەکدا"""),
                    SentencesRow(
                      englishText:
                          "Unlike Edison, George Westinghouse was a proponent of alternating current.",
                      kurdishText:
                          "پێچەوانەی تۆماس ئەدیسۆن، جۆرج وێستینگھاوس لایەنگیری تەزووی گۆڕاو بوو.",
                      onPressedBritish: () =>
                          speakalternatingcurrent124("en-GB"),
                      onPressedAmerican: () =>
                          speakalternatingcurrent124("en-US"),
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


