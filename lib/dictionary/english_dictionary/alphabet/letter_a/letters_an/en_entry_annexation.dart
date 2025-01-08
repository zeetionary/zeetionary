import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryannexation extends StatefulWidget {
  const EnglishEntryannexation({super.key});

  @override
  State<EnglishEntryannexation> createState() => _EnglishEntryannexationState();
}

class _EnglishEntryannexationState extends State<EnglishEntryannexation> {
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
- Noun: annexation (derived forms: annexations)
1. Incorporation by joining or uniting (= appropriation)
 
2. The formal act of acquiring something (especially territory) by conquest or occupation
"the French annexation of Madagascar as a colony in 1896"; "a protectorate has frequently been a first step to annexation"
""",
  );
// 188888880002200

  final String keyword = "annexation";
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
    await flutterTts.speak("""annexation""");
  }

  Future<void> speakannexation1150(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He mentioned the Japanese annexation of Korea in 1910.");
  }

  Future<void> speakannexation1151(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The country's annexation of its neighbour caused an outcry.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'LVhs25kTvB0';
    const double startSecondsend = 88;
    const String videoIdone = 'WAPN87J08dM';
    const double startSecondsone = 233;
    const String videoIdtwo = 'WeovwWseJ-I';
    const double startSecondstwo = 310;
    const String videoIdthree = 'X2O-7yAMFhU';
    const double startSecondsthree = 58;
    const String videoIdfour = 'iLQMDXtt_x4';
    const double startSecondsfour = 1;
    const String videoIdfive = '0yv0aWWeo7w';
    const double startSecondsfive = 72;
    // final String _videoId = 'lHbG6iNIz8I';
    // final double _startSeconds = 1;
    // final String _videoId = '6Axdyo-u1Ws';
    // final double _startSeconds = 542;

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
                      word: """annexation""",
                      // alsoEnglishWord: "also: annexation",
                      britshText: """IpaUK: /ˌænekˈseɪʃn/""",
                      americanText: """IpaUS: /ˌænekˈseɪʃn/""",
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
کوردی: داگیرکردن، دەست‌بەسەراگرتن، گرتن، زەوت‌کردن، لکاندن، خستنەپاڵ، دانەدەم، خستنەسەر، پاشکۆ، سەرخستە
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) داگیرکاری؛ جۆنترۆڵ‌کردنی وڵاتێک بە ھێز"
                            ""),
                    SentencesRow(
                      englishText:
                          "He mentioned the Japanese annexation of Korea in 1910.",
                      kurdishText:
                          "داگیرکاریی ژاپۆنی بۆسەر کۆریا لە ساڵی ١٩١٠ ناوھێنا.",
                      onPressedBritish: () => speakannexation1150("en-GB"),
                      onPressedAmerican: () => speakannexation1150("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The country's annexation of its neighbour caused an outcry.",
                      kurdishText:
                          "داگیرکاریی وڵاتەکە بۆسەر دراوسێکەی کاردانەوەی توندی بەدودا ھات.",
                      onPressedBritish: () => speakannexation1151("en-GB"),
                      onPressedAmerican: () => speakannexation1151("en-US"),
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


