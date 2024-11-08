import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalike extends StatefulWidget {
  const EnglishEntryalike({super.key});

  @override
  State<EnglishEntryalike> createState() => _EnglishEntryalikeState();
}

class _EnglishEntryalikeState extends State<EnglishEntryalike> {
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
- Adjective: alike 
1. Having the same or nearly the same characteristics (= similar, like)
"they looked utterly alike"; "friends are generally alike in background and taste"; "all politicians are alike";

- Adverb: alike 
1. Equally (= likewise)
"parents and teachers alike demanded reforms";
 
2. In a like manner
"they walk alike"
""",
  );
// 188888880002200

  final String keyword = "alike";
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
    await flutterTts.speak("""alike""");
  }

  Future<void> speakalike76522(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They tried to treat all their children alike.");
  }

  Future<void> speakalike46789(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Good management benefits employers and employees alike.");
  }

  Future<void> speakalike3632(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Airports are all alike to me.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'SLIOvCeswJE';
    const double startSecondsend = 58;
    const String videoIdone = 'ksODfzXLaio';
    const double startSecondsone = 5;
    const String videoIdtwo = 'Qvwdn2IiHcE';
    const double startSecondstwo = 1;
    const String videoIdthree = '3uZhv2pNAaU';
    const double startSecondsthree = 193;
    const String videoIdfour = 'm-P6seoX2B4';
    const double startSecondsfour = 31;
    const String videoIdfive = 'CKsACYMDGv8';
    const double startSecondsfive = 90;
    // final String _videoId = 'QLq6GEiHqR8';
    // final double _startSeconds = 1595;
    // final String _videoId = '7nGz7xgGJzc';
    // final double _startSeconds = 177;
    // final String _videoId = 'YcSYMCGxnEM';
    // final double _startSeconds = 954;
    // final String _videoId = 'Nun_4w8m_SY';
    // final double _startSeconds = 842;
    // final String _videoId = 'LfeEu4_vtfQ';
    // final double _startSeconds = 734;
    // final String _videoId = 'FQ4hvLqNfqo';
    // final double _startSeconds = 865;

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
                      word: """alike""",
                      // alsoEnglishWord: "also: alike",
                      britshText: """IpaUK: /əˈlaɪk/""",
                      americanText: """IpaUS: /əˈlaɪk/""",
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
کوردی: وەکیەک، ھاوشێوە، لێکچوو، میناھەڤ، وەکوویەک، وەکیەک، یەکسان، بە یەک شێوە، یەک جۆر
"""),
                    const DefinitionKurdish(text: "١. (ھاوەڵکار) وەک یەک" ""),
                    SentencesRow(
                      englishText:
                          "They tried to treat all their children alike.",
                      kurdishText:
                          "ھەوڵیان دا وەک یەک مامەڵە لەگەڵ منداڵەکانیان بکەن.",
                      onPressedBritish: () => speakalike76522("en-GB"),
                      onPressedAmerican: () => speakalike76522("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵکار) بە یەکسان بۆ ھەردوولا"""),
                    SentencesRow(
                      englishText:
                          "Good management benefits employers and employees alike.",
                      kurdishText:
                          "بەڕێوەبردنی باش سوود بە خاوەنکاران و کرێکاران دەگەیەنێت بە یەکسانی.",
                      onPressedBritish: () => speakalike46789("en-GB"),
                      onPressedAmerican: () => speakalike46789("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) لێکچوو"""),
                    SentencesRow(
                      englishText: "Airports are all alike to me.",
                      kurdishText: "فڕۆکەخانەکان ھەموو وەکیەکن بۆم.",
                      onPressedBritish: () => speakalike3632("en-GB"),
                      onPressedAmerican: () => speakalike3632("en-US"),
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

