import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappendix extends StatefulWidget {
  const EnglishEntryappendix({super.key});

  @override
  State<EnglishEntryappendix> createState() => _EnglishEntryappendixState();
}

class _EnglishEntryappendixState extends State<EnglishEntryappendix> {
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
- Noun: appendix (derived forms: appendixes, appendices)
1. Supplementary material that is collected and appended at the back of a book, article or document
 
2. A vestigial process that extends from the lower end of the caecum and that resembles a small pouch (= vermiform appendix, vermiform process, cecal appendage)
""",
  );
// 188888880002200

  final String keyword = "appendix";
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
    await flutterTts.speak("""appendix""");
  }

  Future<void> speakappendix216(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He had to have his appendix out (= removed).");
  }

  Future<void> speakappendix218(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Full details are given in Appendix 3.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'id_gs1-bUxo';
    const double startSecondsend = 362;
    const String videoIdone = '2DUlcFnRfas';
    const double startSecondsone = 20;
    const String videoIdtwo = 'xDIgbjDGsOM';
    const double startSecondstwo = 6;
    const String videoIdthree = 'YlngCUE4Cwo';
    const double startSecondsthree = 1;
    const String videoIdfour = '1cJ4ykqPej0';
    const double startSecondsfour = 233;
    const String videoIdfive = 'sSqSuWTljlM';
    const double startSecondsfive = 16;
    // final String _videoId = 'KBXb6ayhItA';
    // final double _startSeconds = 5;
    // final String _videoId = 'Bj6ulLJGPB8';
    // final double _startSeconds = 1251;
    // final String _videoId = 'b3Ysh6IQ6dc';
    // final double _startSeconds = 143;
    // final String _videoId = 'GTacoF6WQuI';
    // final double _startSeconds = 269;

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
                      word: """appendix""",
                      // alsoEnglishWord: "also: appendix",
                      britshText: """IpaUK: /əˈpendɪks/""",
                      americanText: """IpaUS: /əˈpendɪks/""",
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
کوردی: سەرخستە، پاشکۆ، پاڵخستە، کلک، لکاند، کورت، پوخت، (توێکاری) پەلەڕیخۆڵە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) پارچە تورەگەیەک کە لکاوە بە ڕیخۆڵە ئەستوورەوە و ھیچ ئەرکێکی زانراوی نییە"""),
                    SentencesRow(
                      englishText:
                          "He had to have his appendix out (= removed).",
                      kurdishText: "پێویست بوو پەلەڕیخۆڵەی دەربێنێت.",
                      onPressedBritish: () => speakappendix216("en-GB"),
                      onPressedAmerican: () => speakappendix216("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) بەشێکی کتێبێک یان دۆکیومێنتێک کە زانیاریی زیادەی تێدایە"""),
                    SentencesRow(
                      englishText: "Full details are given in Appendix 3.",
                      kurdishText: "وردەکاریی تەواو لە پاشکۆی ٣ دراوە.",
                      onPressedBritish: () => speakappendix218("en-GB"),
                      onPressedAmerican: () => speakappendix218("en-US"),
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
