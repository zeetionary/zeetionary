import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalthough extends StatefulWidget {
  const EnglishEntryalthough({super.key});

  @override
  State<EnglishEntryalthough> createState() => _EnglishEntryalthoughState();
}

class _EnglishEntryalthoughState extends State<EnglishEntryalthough> {
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
- Conjunction: although 
1. Even though, in spite of the fact that (= altho [US], though, tho' [informal], while, whilst [Brit])
"although I love you, I cannot marry you";
""",
  );
// 188888880002200

  final String keyword = "although";
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
    await flutterTts.speak("""although""");
  }

  Future<void> speakalthough4596(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Although the sun was shining, it wasn't very warm.");
  }

  Future<void> speakalthough566(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I felt he was wrong, although I didn't say so at the time.");
  }

  Future<void> speakagnos19633(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Although he was raised a Catholic, he was an agnostic for most of his adult life.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '6JwnbLk-QAY';
    const double startSecondsend = 465;
    const String videoIdone = '9q10_iPYYaA';
    const double startSecondsone = 6;
    const String videoIdtwo = 'Rr_G5a5A3sM';
    const double startSecondstwo = 1;
    const String videoIdthree = 'lDL02K8C_Jg';
    const double startSecondsthree = 280;
    const String videoIdfour = 'hFZFjoX2cGg';
    const double startSecondsfour = 1122;
    const String videoIdfive = 'khOUvmOQExc';
    const double startSecondsfive = 53;
    // final String _videoId6 = 'e09xig209cQ';
    // final double _startSeconds6 = 116;
    // final String _videoId = '0zwNZJbM-Gw';
    // final double _startSeconds = 98;
    // final String _videoId = 'AAGIi62-sAU';
    // final double _startSeconds = 1508;

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
                      word: """although""",
                      // alsoEnglishWord: "also: although",
                      britshText: """IpaUK: /ɔːlˈðəʊ/""",
                      americanText: """IpaUS: /ɔːlˈðəʊ/""",
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
کوردی: ھەرچەن کە، ھەرچەندە، ئەگەرچی، گەرچی، لەگەڵ ئەمەش‌دا، لەگەڵ ئەوەش، سەرەڕای ئەوەش، لەگەڵ ئەوەش‌دا
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (لێکدەر) بۆ وتنی شتێک کە وا دەکات خاڵی سەرەکی ڕستەکە ببێت بە سوپرایز"
                            ""),
                    SentencesRow(
                      englishText:
                          "Although the sun was shining, it wasn't very warm.",
                      kurdishText:
                          "ئەگەرچی خۆرەکە دەدرەوشایەوە، ھێندە گەرم نەبوو.",
                      onPressedBritish: () => speakalthough4596("en-GB"),
                      onPressedAmerican: () => speakalthough4596("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (لێکدەر) بۆ وتنی بەڵام"""),
                    SentencesRow(
                      englishText:
                          "I felt he was wrong, although I didn't say so at the time.",
                      kurdishText:
                          "ھەستم کرد ھەڵەبوو، بەڵام/ئەگەرچی ئەوکاتە ئەوەم نەوت.",
                      onPressedBritish: () => speakalthough566("en-GB"),
                      onPressedAmerican: () => speakalthough566("en-US"),
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
