import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryallergic extends StatefulWidget {
  const EnglishEntryallergic({super.key});

  @override
  State<EnglishEntryallergic> createState() => _EnglishEntryallergicState();
}

class _EnglishEntryallergicState extends State<EnglishEntryallergic> {
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
- Adjective: allergic
1. Having an allergy, peculiar or excessive susceptibility (especially to a specific factor) (= hypersensitive, hypersensitized, hypersensitised [Brit], sensitized, sensitised [Brit], supersensitive, supersensitized, supersensitised)
"allergic children";
 
2. Characterized by or caused by allergy
"an allergic reaction"
""",
  );
// 188888880002200

  final String keyword = "allergic";
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
    await flutterTts.speak("""allergic""");
  }

  Future<void> speakallergic35699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I like cats but unfortunately I'm allergic to them.");
  }

  Future<void> speakallergic4692(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He had an allergic reaction after eating the kiwi.");
  }

  Future<void> speakallergic45993(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You could see he was allergic to housework.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '6MyzLx7WacU';
    const double startSecondsend = 110;
    const String videoIdone = 'kUOnXLsGrjA';
    const double startSecondsone = 61;
    const String videoIdtwo = 'kLC0cX3rAX0';
    const double startSecondstwo = 12;
    const String videoIdthree = 'whn0IAOCYsQ';
    const double startSecondsthree = 9;
    const String videoIdfour = 'zKFnwNRyxM0';
    const double startSecondsfour = 1317;
    const String videoIdfive = 'WrQ_usBVKUE';
    const double startSecondsfive = 1331;
    // final String _videoId = 'nh8bYcAw0as';
    // final double _startSeconds = 5;
    // final String _videoId = '2X7SabQBCJw';
    // final double _startSeconds = 171;
    // final String _videoId = '7IcrssvIt10';
    // final double _startSeconds = 5;
    // final String _videoId = 'f6yLWAQ03NA';
    // final double _startSeconds = 73;

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
                      word: """allergic""",
                      // alsoEnglishWord: "also: allergic",
                      britshText: """IpaUK: /əˈlɜːdʒɪk/""",
                      americanText: """IpaUS: /əˈlɜːrdʒɪk/""",
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
کوردی: سەربە ھەستیاری، ئالێرژی‌دار، ھەستیاری‌دار، دڵ‌ھەڵکەوتوو، بێزار، بێزراو
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) بوونی ھەستیاری"""),
                    SentencesRow(
                      englishText:
                          "I like cats but unfortunately I'm allergic to them.",
                      kurdishText: "حەزم لە پشیلەیە بەڵام ھەستیارم پێی.",
                      onPressedBritish: () => speakallergic35699("en-GB"),
                      onPressedAmerican: () => speakallergic35699("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) درووست بوو بەھۆی ھەستیاری"""),
                    SentencesRow(
                      englishText:
                          "He had an allergic reaction after eating the kiwi.",
                      kurdishText:
                          "کاردانەوەیەکی ھەستیاری ھەبوو لە دوای خواردنی کیوییەکە.",
                      onPressedBritish: () => speakallergic4692("en-GB"),
                      onPressedAmerican: () => speakallergic4692("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) ھەبوونی ڕقێکی زۆر بۆشتێک"""),
                    SentencesRow(
                      englishText:
                          "You could see he was allergic to housework.",
                      kurdishText: "ھەستت پێدەکرد ڕقی زۆری لە ئیشی ماڵەوە بوو.",
                      onPressedBritish: () => speakallergic45993("en-GB"),
                      onPressedAmerican: () => speakallergic45993("en-US"),
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

