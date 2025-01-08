import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanesthetic extends StatefulWidget {
  const EnglishEntryanesthetic({super.key});

  @override
  State<EnglishEntryanesthetic> createState() => _EnglishEntryanestheticState();
}

class _EnglishEntryanestheticState extends State<EnglishEntryanesthetic> {
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
- Adjective: anesthetic 
Usage: N. Amer (elsewhere: anaesthetic)
1. Characterized by insensibility (= anaesthetic [Brit, Cdn])
"the young girls are in a state of possession--blind and deaf and anesthetic"; "an anesthetic state"; 
 
2. Relating to or producing insensibility (= anaesthetic [Brit, Cdn])

- Noun: anesthetic (derived forms: anesthetics)
Usage: N. Amer (elsewhere: anaesthetic)
1. A drug that causes temporary loss of bodily sensations (= anaesthetic [Brit, Cdn], anesthetic agent [N. Amer], anaesthetic agent [Brit, Cdn])
""",
  );
// 188888880002200

  final String keyword = "anesthetic";
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
    await flutterTts.speak("""anesthetic""");
  }

  Future<void> speakanesthetic8505(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("How long will I be under anesthetic?");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'z8pn3FvRYCw';
    const double startSecondsend = 647;
    const String videoIdone = 'qnTZbZw1JPQ';
    const double startSecondsone = 902;
    const String videoIdtwo = 'dBgiOHqhp-o';
    const double startSecondstwo = 214;
    const String videoIdthree = 'UVoSGyx_YYs';
    const double startSecondsthree = 892;
    const String videoIdfour = '-xgoldjr-BI';
    const double startSecondsfour = 2808;
    const String videoIdfive = 'VOob_9fJ5lw';
    const double startSecondsfive = 566;
    // final String _videoId = 'qzrw53stoxk';
    // final double _startSeconds = 720;

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
                      word: """anesthetic""",
                      // alsoEnglishWord: "also: anesthetic",
                      britshText: """IpaUK: /ˌænəsˈθetɪk/""",
                      americanText: """IpaUS: /ˌænəsˈθetɪk/""",
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
کوردی: دەرمانی بێ‌ھۆشی یان بێ‌ھەستی یان سڕی، بێ‌ھۆش‌داڕوو، بەنگ، بەنج، بێ‌ھۆش‌کەر
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) بەنج؛ دەرمانێک کە وا دەکات بەشێک یان تەواوی جەستەی کەسێک ھەست بە ھیچ نەکات، بەتایبەتی ئازار"
                            ""),
                    SentencesRow(
                      englishText: "How long will I be under anesthetic?",
                      kurdishText: "چەندە لەژێر بەنج دەبم؟",
                      onPressedBritish: () => speakanesthetic8505("en-GB"),
                      onPressedAmerican: () => speakanesthetic8505("en-US"),
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


