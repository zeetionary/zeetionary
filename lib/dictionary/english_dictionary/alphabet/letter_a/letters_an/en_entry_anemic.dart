import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanemic extends StatefulWidget {
  const EnglishEntryanemic({super.key});

  @override
  State<EnglishEntryanemic> createState() => _EnglishEntryanemicState();
}

class _EnglishEntryanemicState extends State<EnglishEntryanemic> {
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
- Adjective: anemic 
Usage: N. Amer (elsewhere: anaemic)
1. Lacking vigor or energy (= anaemic [Brit, Cdn])
"an anemic attempt to hit the baseball";
 
2. Relating to anemia or suffering from anemia (= anaemic [Brit, Cdn])
""",
  );
// 188888880002200

  final String keyword = "anemic";
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
    await flutterTts.speak("""anemic""");
  }

  Future<void> speakanemic55580(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She looks anemic.");
  }

  Future<void> speakanemic4966(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Both actors gave fairly anemic performances.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'lZJzs9X2VLo';
    const double startSecondsend = 994;
    const String videoIdone = 'OKrlc5h6FiA';
    const double startSecondsone = 1060;
    const String videoIdtwo = 'xOX21MhEIXo';
    const double startSecondstwo = 200;
    const String videoIdthree = 'gxHzkeT9O24';
    const double startSecondsthree = 218;
    const String videoIdfour = 'niqum9l4mhs';
    const double startSecondsfour = 142;
    const String videoIdfive = '853qx7pJGZ0';
    const double startSecondsfive = 494;
    // final String _videoId = '1UOLfL8wnoE';
    // final double _startSeconds = 2355;
    // final String _videoId = 'sxSZDnhU-Jw';
    // final double _startSeconds = 888;
    // final String _videoId = 'aWjp47K-axY';
    // final double _startSeconds = 214;
    // final String _videoId = 'JIE448LBcvM';
    // final double _startSeconds = 326;

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
                      word: """anemic""",
                      // alsoEnglishWord: "also: anemic",
                      britshText: """IpaUK: /əˈniːmɪk/""",
                      americanText: """IpaUS: /əˈniːmɪk/""",
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
کوردی: کەم‌خوێن، بێ‌ڕەنگ‌وڕوو، زەردەڵ، لاواز
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) تووشبوو بە کەم‌خوێنی و لاوازی"""),
                    SentencesRow(
                      englishText: "She looks anemic.",
                      kurdishText: "کەم‌خوێن دیارە.",
                      onPressedBritish: () => speakanemic55580("en-GB"),
                      onPressedAmerican: () => speakanemic55580("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) بێ‌ھێز و بێ‌کاریگەر"""),
                    SentencesRow(
                      englishText:
                          "Both actors gave fairly anemic performances.",
                      kurdishText:
                          "ھەردوو ئەکتەرەکە تاڕادەیەک نمایشی لاوازیان پێشکەش‌کرد.",
                      onPressedBritish: () => speakanemic4966("en-GB"),
                      onPressedAmerican: () => speakanemic4966("en-US"),
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


