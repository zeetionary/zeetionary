import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanonymity extends StatefulWidget {
  const EnglishEntryanonymity({super.key});

  @override
  State<EnglishEntryanonymity> createState() => _EnglishEntryanonymityState();
}

class _EnglishEntryanonymityState extends State<EnglishEntryanonymity> {
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
- Noun: anonymity (derived forms: anonymities)
1. The state of being anonymous (= namelessness)
""",
  );
// 188888880002200

  final String keyword = "anonymity";
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
    await flutterTts.speak("""anonymity""");
  }

  Future<void> speakanonymity1038(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Names of people in the book were changed to preserve anonymity.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'YvBwYHwrgdQ';
    const double startSecondsend = 1;
    const String videoIdone = 'Z0XRDb1Vj2I';
    const double startSecondsone = 8;
    const String videoIdtwo = 'Uud2J8nAG-Y';
    const double startSecondstwo = 1;
    const String videoIdthree = 'acc7i38wa1s';
    const double startSecondsthree = 1;
    const String videoIdfour = 'rratBYNYpqA';
    const double startSecondsfour = 27;
    const String videoIdfive = 'g2AymqfV3nE';
    const double startSecondsfive = 88;
    // final String _videoId = 'w4xIyGs-3wc';
    // final double _startSeconds = 20;
    // final String _videoId = 'Jhk-NSf7_qw';
    // final double _startSeconds = 423;
    // final String _videoId = 'hGLY5MAAFO4';
    // final double _startSeconds = 1256;
    // final String _videoId = 'zQZAIhP0H2A';
    // final double _startSeconds = 618;
    // final String _videoId = '-OKtcGEEtf4';
    // final double _startSeconds = 117;

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
                      word: """anonymity""",
                      // alsoEnglishWord: "also: anonymity",
                      britshText: """IpaUK: /ˌænəˈnɪməti/""",
                      americanText: """IpaUS: /ˌænəˈnɪməti/""",
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
کوردی: نەناسراوی، بێ‌ناونیشانی، بێ‌ناوی، گومی، نەناس‌مانەوە، نەناسران، ناودەرنەکردوویی
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) باری نەناسراوی‌بوون بۆ زۆرینەی کەسانی تر"
                            ""),
                    SentencesRow(
                      englishText:
                          "Names of people in the book were changed to preserve anonymity.",
                      kurdishText:
                          "ناوەکانی ناو کتێبەکە گۆڕدران بۆ ھێشتنەوەی بێ‌ناوی.",
                      onPressedBritish: () => speakanonymity1038("en-GB"),
                      onPressedAmerican: () => speakanonymity1038("en-US"),
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

