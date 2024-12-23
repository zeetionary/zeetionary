import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanalogous extends StatefulWidget {
  const EnglishEntryanalogous({super.key});

  @override
  State<EnglishEntryanalogous> createState() => _EnglishEntryanalogousState();
}

class _EnglishEntryanalogousState extends State<EnglishEntryanalogous> {
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
- Adjective: analogous 
1. Similar or equivalent in some respects though otherwise dissimilar. (= correspondent)
"salmon roe is marketed as analogous to caviar"; "brains and computers are often considered analogous";
 
2. (biology) corresponding in function but not in evolutionary origin
"the wings of a bee and those of a hummingbird are analogous"
""",
  );
// 188888880002200

  final String keyword = "analogous";
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
    await flutterTts.speak("""analogous""");
  }

  Future<void> speakanalogous852401(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Sleep has often been thought of as being in some way analogous to death.");
  }

  Future<void> speakanalogous8401(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The two situations are roughly analogous.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'EIQs4dHF_60';
    const double startSecondsend = 31;
    const String videoIdone = 'R6Ms6pcl3nw';
    const double startSecondsone = 7;
    const String videoIdtwo = 'IgF3OX8nT0w';
    const double startSecondstwo = 38;
    const String videoIdthree = '7bkGM_zSGOU';
    const double startSecondsthree = 191;
    const String videoIdfour = 'MBXpB4bDp_o';
    const double startSecondsfour = 404;
    const String videoIdfive = 'iZQJQYqhAgY';
    const double startSecondsfive = 1048;
    // final String _videoId = '-RdOwhmqP5s';
    // final double _startSeconds = 305;
    // final String _videoId = 'kWqLxTatndU';
    // final double _startSeconds = 561;
    // final String _videoId = 'eJ-WJssJgdg';
    // final double _startSeconds = 411;
    // final String _videoId = 'FqCZhSIXcv4';
    // final double _startSeconds = 302;
    // final String _videoId = 'O85OWBJ2ayo';
    // final double _startSeconds = 848;
    // final String _videoId = 'HVA5nsOC0qE';
    // final double _startSeconds = 130;

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
                      word: """analogous""",
                      // alsoEnglishWord: "also: analogous",
                      britshText: """IpaUK: /əˈnæləɡəs/""",
                      americanText: """IpaUS: /əˈnæləɡəs/""",
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
کوردی: ھاوشێوە، لێکچوو، ھاوتا، وەکیەک، ھاوچەشن، شیاوی ھەڵسەنگاندن، ھاوتەریب
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) لێکچوو لەگەڵ شتێک" ""),
                    SentencesRow(
                      englishText:
                          "Sleep has often been thought of as being in some way analogous to death.",
                      kurdishText:
                          "خەوتن زۆرجار بەجۆرێک لە جۆرەکان بە مردن چوێندراوە.",
                      onPressedBritish: () => speakanalogous852401("en-GB"),
                      onPressedAmerican: () => speakanalogous852401("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "The two situations are roughly analogous.",
                      kurdishText: "ھەردوو بارودۆخەکە تاڕادەیەک لێکچوون.",
                      onPressedBritish: () => speakanalogous8401("en-GB"),
                      onPressedAmerican: () => speakanalogous8401("en-US"),
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


